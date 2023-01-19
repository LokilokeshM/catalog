import 'package:cm_core_ui/ui/overview/infrastructure/count_api.dart';
import 'package:cm_core_ui/ui/overview/infrastructure/raw_count_api.dart';
import 'package:cm_core_ui/ui/overview/infrastructure/raw_topselling_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countApiProvider = Provider((ref) => RawCountApi());
final topSellingApiProvider = Provider((ref) => RawTopSellingApi());
