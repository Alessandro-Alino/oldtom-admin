import 'dart:convert';
import 'dart:developer';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oldtom_admin/feature/git_image/model/git_image_model.dart';
import 'package:oldtom_admin/feature/git_image/repo/git_image_repo.dart';

part 'git_image_event.dart';

part 'git_image_state.dart';

part 'git_image_bloc.freezed.dart';

class GitImageBloc extends Bloc<GitImageEvent, GitImageState> {
  final GitImageRepo _gitImageRepo;

  GitImageBloc({required GitImageRepo gitImageRepo})
    : _gitImageRepo = gitImageRepo,
      super(GitImageState.init()) {
    on<GitImageEvent>(_onEvent);
    // Read Git-Images when the bloc start
    readGitImages();
  }

  // ====================
  // EVENT
  // ====================
  Future<void> _onEvent(
    GitImageEvent event,
    Emitter<GitImageState> emit,
  ) async {
    switch (event) {
      case _InitEvent():
        _init(event, emit);
        break;
      case _ReadGitImagesEvent():
        await _readGitImages(event, emit);
        break;
      case _PickImageEvent():
        await _pickImage(event, emit);
        break;
      case _CreateGitImageEvent():
        await _createImage(event, emit);
        break;
      case _UpdateGitImageEvent():
        await _updateImage(event, emit);
        break;
      case _DeleteGitImageEvent():
        await _deleteImage(event, emit);
        break;
    }
  }

  // ====================
  // ADD EVENTS
  // ====================
  // Init
  void init({bool? resetStatus}) => add(_InitEvent(resetStatus: resetStatus));

  // Read Git Images
  void readGitImages() => add(_ReadGitImagesEvent());

  // Pick Image
  void pickImage({bool? reset}) => add(_PickImageEvent(reset: reset));

  // Create Image
  void createImage({required String filename, required PlatformFile file}) =>
      add(_CreateGitImageEvent(filename: filename, file: file));

  // Update Image
  void updateImage({
    required String filename,
    required GitImageModel gitImage,
  }) => add(_UpdateGitImageEvent(filename: filename, gitImage: gitImage));

  // Delete Image
  void deleteImage({required GitImageModel gitImage}) =>
      add(_DeleteGitImageEvent(gitImage: gitImage));

  // ====================
  // BLOC
  // ====================

  // _Init
  void _init(_InitEvent event, Emitter<GitImageState> emit) {
    // Reset only status
    if (event.resetStatus != null && event.resetStatus == true) {
      emit(state.copyWith(gitImageOperation: GitImageOperation.idle));
    }
    // Init
    else {
      emit(GitImageState.init());
    }
  }

  // _Read Git-Images
  Future<void> _readGitImages(
    _ReadGitImagesEvent event,
    Emitter<GitImageState> emit,
  ) async {
    try {
      emit(state.copyWith(status: GitImageStatus.loading));
      final List<GitImageModel> gitImageList = await _gitImageRepo
          .readGitImages();
      emit(
        state.copyWith(
          status: GitImageStatus.success,
          gitImageList: gitImageList,
        ),
      );
    } catch (e) {
      log('[BLOC] Error: $e');
      emit(state.copyWith(status: GitImageStatus.error));
    }
  }

  // _Pick Image
  Future<void> _pickImage(
    _PickImageEvent event,
    Emitter<GitImageState> emit,
  ) async {
    if (event.reset != null && event.reset!) {
      emit(state.copyWith(filePicked: null));
    } else {
      try {
        FilePickerResult? filePicked = await FilePicker.pickFiles(
          type: FileType.image,
        );

        emit(state.copyWith(filePicked: filePicked));
      } catch (e) {
        log('[GIT_IMAGE_BLOC] ERROR: $e');
      }
    }
  }

  // _Create Image
  Future<void> _createImage(
    _CreateGitImageEvent event,
    Emitter<GitImageState> emit,
  ) async {
    emit(state.copyWith(gitImageOperation: GitImageOperation.createLoading));
    try {
      final bytes = await event.file.readAsBytes();
      final content = base64Encode(bytes);
      await _gitImageRepo.createGitImages(
        path: event.filename,
        content: content,
      );
      // Read Image After Create
      await Future.delayed(const Duration(seconds: 1), () {
        readGitImages();
      });
      emit(state.copyWith(gitImageOperation: GitImageOperation.createSuccess));
    } catch (e) {
      emit(state.copyWith(gitImageOperation: GitImageOperation.createError));
      log('[GIT_IMAGE_BLOC] ERROR: $e');
    }
  }

  // _Update Image
  Future<void> _updateImage(
    _UpdateGitImageEvent event,
    Emitter<GitImageState> emit,
  ) async {
    emit(state.copyWith(gitImageOperation: GitImageOperation.updateLoading));
    try {
      // 1/2 GitHub not support UPDATE via API, so to update a file.
      // First Create a copy with new name
      await _gitImageRepo.updateGitImage(
        path: event.filename,
        gitURL: event.gitImage.gitUrl,
        sha: event.gitImage.sha,
      );
      // 2/2 Then delete the previous.
      deleteImage(gitImage: event.gitImage);
      // Read Image After Update
      await Future.delayed(const Duration(seconds: 1), () {
        readGitImages();
      });
      emit(state.copyWith(gitImageOperation: GitImageOperation.updateSuccess));
    } catch (e) {
      emit(state.copyWith(gitImageOperation: GitImageOperation.updateError));
      log('[GIT_IMAGE_BLOC] ERROR: $e');
    }
  }

  // _Delete Image
  Future<void> _deleteImage(
    _DeleteGitImageEvent event,
    Emitter<GitImageState> emit,
  ) async {
    emit(state.copyWith(gitImageOperation: GitImageOperation.deleteLoading));
    try {
      await _gitImageRepo.deleteGitImage(
        path: event.gitImage.path,
        sha: event.gitImage.sha,
      );
      // Read Image After Delete
      await Future.delayed(const Duration(seconds: 1), () {
        readGitImages();
      });
      emit(state.copyWith(gitImageOperation: GitImageOperation.deleteSuccess));
    } catch (e) {
      emit(state.copyWith(gitImageOperation: GitImageOperation.deleteError));
      log('[GIT_IMAGE_BLOC] ERROR: $e');
    }
  }
}
