import 'dart:developer';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oldtom_admin/feature/git_image/model/git_image_res_model.dart';
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
        break;
      default:
        break;
    }
  }

  // ====================
  // ADD EVENTS
  // ====================
  // Init
  void init() => add(const _InitEvent());

  // Read Git Images
  void readGitImages() => add(_ReadGitImagesEvent());

  // Pick Image
  void pickImage({bool? reset}) => add(_PickImageEvent(reset: reset));

  // ====================
  // BLOC
  // ====================

  // _Init
  void _init(_InitEvent event, Emitter<GitImageState> emit) {
    emit(GitImageState.init());
  }

  // _Read Git-Images
  Future<void> _readGitImages(
    _ReadGitImagesEvent event,
    Emitter<GitImageState> emit,
  ) async {
    try {
      emit(state.copyWith(status: GitImageStatus.loading));
      final GitImageResModel gitImageRes = await _gitImageRepo.readGitImages();
      final List<GitImageModel> gitImageList = gitImageRes.tree;
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
}
