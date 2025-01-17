class AppConfig {
  static String apiUrl = 'https://api.aether-area.fr/graphql';
  static String oauthUrl = 'https://api.aether-area.fr';
  static void setApiUrl(String url) {
    apiUrl = '$url/graphql';
    oauthUrl = url;
  }
}
