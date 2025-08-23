import 'package:jwt_decoder/jwt_decoder.dart';

/// Checks if a given JWT token is valid (not expired, well-formed).
bool isJwtValid(String? token) {
  if (token == null || token.isEmpty) return false;

  try {
    // 1. Check if the token is expired
    if (JwtDecoder.isExpired(token)) {
      return false;
    }

    // 2. Decode payload to check claims (optional)
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);

    // You can add custom checks here (e.g., issuer, audience)
    // Example:
    // if (decodedToken["iss"] != "your_issuer") return false;

    return true; // Token exists, not expired, structure okay
  } catch (e) {
    // Token is malformed or invalid
    return false;
  }
}
