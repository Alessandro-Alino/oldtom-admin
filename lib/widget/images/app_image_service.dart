class AppImageService {
  static const String user = String.fromEnvironment("user");
  static const String repo = String.fromEnvironment("repo");
  static const String branch = String.fromEnvironment("branch");

  static final String baseJSDelivrURL =
      "https://cdn.jsdelivr.net/gh/$user/$repo@$branch";
  static final String baseGitRawURL =
      "https://raw.githubusercontent.com/$user/$repo/$branch";

  // GET image from JS Delivr CDN
  static String getImageFromJSDelivr(String path) {
    return "$baseJSDelivrURL/$path";
  }

  // GET image from GIT RAW
  static String getImageFromGitRaw(String path) {
    return "$baseGitRawURL/$path";
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
