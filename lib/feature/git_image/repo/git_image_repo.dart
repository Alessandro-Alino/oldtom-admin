import 'dart:developer';
import 'package:oldtom_admin/config/dio/app_dio.dart';
import 'package:oldtom_admin/config/helpers/helpers.dart';
import 'package:oldtom_admin/feature/git_image/model/git_image_model.dart';

class GitImageRepo {
  final AppDio _appDio = AppDio();

  // Config
  static const String _owner = String.fromEnvironment('owner');
  static const String _repo = String.fromEnvironment('repo');
  static const String _branch = String.fromEnvironment('branch');
  static const String _hostRestAPI = String.fromEnvironment("hostnameRestAPI");

  //static const String _hostCDN = String.fromEnvironment("hostnameCDN");
  //static const String _hostGitRAW = String.fromEnvironment("hostnameGitRAW");

  // Read Git-Image
  Future<List<GitImageModel>> readGitImages() async {
    final response = await _appDio.dio.get(
      '$_hostRestAPI/repos/$_owner/$_repo/contents?ref=$_branch',
    );

    final List<GitImageModel> gitImageRes = response.data.map<GitImageModel>((
      e,
    ) {
      return GitImageModel.fromJson(e);
    }).toList();

    final List<GitImageModel> filteredTree = gitImageRes.where((file) {
      final ext = file.path.toLowerCase().split('.').last;
      return Helpers.imageExtensions.contains('.$ext');
    }).toList();

    return filteredTree;
  }

  // Create Git-Image
  Future<void> createGitImages({
    required String path,
    required String content,
  }) async {
    try {
      final result = await _appDio.dio.put(
        '$_hostRestAPI/repos/$_owner/$_repo/contents/$path',
        data: {
          "message": "Image uploaded via App",
          "content": content,
          "branch": _branch,
        },
      );
      log('$result');
    } catch (e) {
      log(
        '[GIT_IMAGE_REPO] ERROR:'
        ' $e',
      );
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
