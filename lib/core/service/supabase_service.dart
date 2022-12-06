import 'package:envanterus/core/constant/service_constant.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static SupabaseService? _instance;
  static SupabaseService get instance {
    _instance ??= SupabaseService._();
    return _instance!;
  }

  SupabaseService._();

  SupabaseClient client =
      SupabaseClient(ServiceConstant.urlProject, ServiceConstant.apiKey);

      
}
