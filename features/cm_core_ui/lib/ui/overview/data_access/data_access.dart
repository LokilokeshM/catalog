import 'package:cm_core_ui/ui/overview/data_access/default_count_repo.dart';
import 'package:cm_core_ui/ui/overview/data_access/default_topselling_repo.dart';
import 'package:cm_core_ui/ui/overview/infrastructure/infrastructure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countRepoProvider =
    Provider((ref) => DefaultCountRepo(ref.watch(countApiProvider)));
final topSellingRepoProvider =
    Provider((ref) => DefaultTopSellingRepo(ref.watch(topSellingApiProvider)));
