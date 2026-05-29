enum AppImageHostname { cdn, restAPI, gitRAW }

class AppImageService {
  static const String _owner = String.fromEnvironment("owner");
  static const String _repo = String.fromEnvironment("repo");
  static const String _branch = String.fromEnvironment("branch");
  static const String _hostCDN = String.fromEnvironment("hostnameCDN");
  // static const String _hostRestAPI = String.fromEnvironment("hostnameRestAPI");
  // static const String _hostGitRAW = String.fromEnvironment("hostnameGitRAW");

  static String getImageFromCDN({
    //required AppImageHostname hostname,
    required String path,
  }) {
    // switch (hostname) {
    //   case AppImageHostname.cdn:
    //     return "$_hostCDN/$_owner/$_repo@$_branch/$path";
    //
    //   case AppImageHostname.restAPI:
    //     // Return "$_hostRestAPI/repos/$_owner/$_repo/contents/$path?ref=$_branch";
    //     return '';
    //   case AppImageHostname.gitRAW:
    //     //'$_hostGitRAW/repos/$_owner/$_repo/git/trees/$_branch',
    //     // Return "$_hostGitRAW/$_owner/$_repo/$_branch";
    //     return '';
    // }
        return "$_hostCDN/$_owner/$_repo@$_branch/$path";
  }

  // Images
  static const String heroImage =
      "andrea-riezzo-1hKZ0A182Bk-unsplash-Photoroom.png";
  static const String clovis = "clovis-wood-FT1PJqW0qtE-unsplash-Photoroom.png";
  static const String daniel =
      "daniel-horvath-joaNTMyVSTc-unsplash-Photoroom.png";
  static const String lefteris =
      "lefteris-kallergis-QsmdVT5pTMw-unsplash-Photoroom.png";
  static const String nikita =
      "nikita-tikhomirov-vAkIPzXOSOc-unsplash-Photoroom.png";
  static const String photoAVIF = "photo-1628592745970-96990ab53825.avif";
}
