class AppApiConfig {
  ///Stagging
  static const scheme = "https";
  static const host = "api.truthordarebot.xyz";

  ///Live endpoint
  //static const scheme = "https";
  //static const host = "app.wabais.com";
  //static const _version = "/dev/chat";

  static Uri _appUri(String endpoint, [Map<String, String>? query]) {
    return Uri(
      scheme: scheme,
      host: host,
      path: endpoint,
      queryParameters: query,
    );
  }

  static Uri truthUri() {
    return _appUri("/v1/truth");
  }

  static Uri dareUri() {
    return _appUri("/api/dare");
  }

  static Uri wouldYouRatherUri() {
    return _appUri("/api/wyr");
  }

  static Uri neverHaveIEverUri() {
    return _appUri("/api/nhie");
  }

  static Uri paranoiaUri() {
    return _appUri("/api/paranoia");
  }
}
