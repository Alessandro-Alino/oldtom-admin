import 'dart:developer';
import 'package:oldtom_admin/config/dio/app_dio.dart';
import 'package:oldtom_admin/config/helpers/helpers.dart';
import 'package:oldtom_admin/feature/git_image/model/git_image_res_model.dart';

class GitImageRepo {
  final AppDio _appDio = AppDio();

  // Config
  static const String _user = String.fromEnvironment('user');
  static const String _repo = String.fromEnvironment('repo');
  static const String _branch = String.fromEnvironment('branch');
  static const String _apiBase = String.fromEnvironment('apiBase');

  // Read Git-Image
  Future<GitImageResModel> readGitImages() async {
    final response = await _appDio.dio.get(
      '$_apiBase/repos/$_user/$_repo/git/trees/$_branch',
    );

    log('$_apiBase/repos/$_user/$_repo/git/trees/$_branch');

    final GitImageResModel gitImageRes = GitImageResModel.fromJson(
      response.data,
    );

    final filteredTree = gitImageRes.tree.where((file) {
      final ext = file.path.toLowerCase().split('.').last;
      return Helpers.imageExtensions.contains('.$ext');
    }).toList();

    return gitImageRes.copyWith(tree: filteredTree);
  }

  // Create Git-Image
  Future<void> createGitImages({required String path}) async {
    try {
      final result = await _appDio.dio.put(
        '$_apiBase/repos/$_user/$_repo/contents/$path',
        data: {"message": "", "content": "", "branch": _branch},
      );
      log('$result');
    } catch (e) {
      log('[GIT_IMAGE_REPO] ERROR:'
          ' $e');
    }
  }

  //Use the REST API Create or update file contents endpoint:
  //
  // Send a PUT request to:
  // /repos/{owner}/{repo}/contents/{path}
  // Include these body fields:
  // message — commit message
  // content — file contents, Base64-encoded
  // branch — the branch name you want to add the file to
  // If you’re updating an existing file, include sha too.
  // Example:
  //
  // curl -L \
  //   -X PUT \
  //   https://api.github.com/repos/OWNER/REPO/contents/PATH \
  //   -d '{
  //     "message": "Add new file",
  //     "content": "bXkgbmV3IGZpbGUgY29udGVudHM=",
  //     "branch": "my-branch"
  //   }'
}
