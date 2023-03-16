import 'package:three_bee_test/api/hives_list/aries.dart';
import 'package:three_bee_test/api/hives_list/aries_response.dart';

class HivesListState {
  final int page;
  final List<Aries> aries;

  const HivesListState({
    this.page = 0,
    this.aries = const []
  });

  HivesListState copyWith({
    int? page,
    List<Aries>? aries,
  }) {
    return HivesListState(
      page: page ?? this.page,
      aries: aries ?? this.aries,
    );
  }
}
