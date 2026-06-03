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

  final String _baseURL = '$_hostRestAPI/repos/$_owner/$_repo/contents';

  //static const String _hostCDN = String.fromEnvironment("hostnameCDN");
  //static const String _hostGitRAW = String.fromEnvironment("hostnameGitRAW");

  // Read Git-Image
  Future<List<GitImageModel>> readGitImages() async {
    final response = await _appDio.dio.get(
      '$_baseURL?ref=$_branch',
      queryParameters: {
        'ref': _branch,
        '_cb': '${DateTime.now().millisecondsSinceEpoch}'
      },
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
    await _appDio.dio.put(
      '$_baseURL/$path',
      data: {
        "message": "Image uploaded via App",
        "content": content,
        "branch": _branch,
      },
    );
  }

  // DELETE Git-Image
  Future<void> deleteGitImage({
    required String path,
    required String sha,
  }) async {
    await _appDio.dio.delete(
      '$_baseURL/$path',
      data: {"message": "Image deleted via App", "sha": sha, "branch": _branch},
    );
  }

  // UPDATE Git-Image
  Future<void> updateGitImage({
    required String path,
    required String sha,
    required String gitURL,
  }) async {
    // GET content
    final response = await _appDio.dio.get(gitURL);
    final content = response.data['content'];
    // Update
    await _appDio.dio.put(
      '$_baseURL/$path',
      data: {
        "message": "Image updated via App",
        "sha": sha,
        "content": content,
        "branch": _branch,
      },
    );
  }
}
