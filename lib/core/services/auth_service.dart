import 'package:supabase_flutter/supabase_flutter.dart';

class AuthException implements Exception {
  final String message;
  AuthException(this.message);

  @override
  String toString() => 'AuthException: $message';
}

class AuthService {
  AuthService._();

  static final _client = Supabase.instance.client;

  /// Sign up with email and password.
  /// Throws [AuthException] on failure.
  static Future<User> signUp({required String email, required String password}) async {
    final res = await _client.auth.signUp(
      email: email,
      password: password,
    );

    if (res.user != null) return res.user!;

    final message = res.error?.message ?? 'Unknown sign up error';
    throw AuthException(message);
  }

  /// Sign in with email and password.
  /// Throws [AuthException] on failure.
  static Future<User> signIn({required String email, required String password}) async {
    final res = await _client.auth.signInWithPassword(
      email: email,
      password: password,
    );

    if (res.user != null) return res.user!;

    final message = res.error?.message ?? 'Unknown sign in error';
    throw AuthException(message);
  }

  /// Sign out the current user.
  static Future<void> signOut() async {
    await _client.auth.signOut();
  }

  /// Returns the current authenticated user or null.
  static User? get currentUser => _client.auth.currentUser;
}
