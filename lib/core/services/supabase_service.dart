import 'package:supabase_flutter/supabase_flutter.dart';

/// Lightweight wrapper around Supabase client to access the single instance.
class SupabaseService {
  SupabaseService._();

  static SupabaseClient get client => Supabase.instance.client;
}
