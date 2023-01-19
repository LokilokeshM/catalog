import 'package:catalogue_management/ui/login/infrastructure/raw_login_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///to Access Api from Different Package/ Actual Api Call
final createLoginApi = Provider((ref) => RawLoginApi());
