import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:three_bee_test/api/hives_list/hives_list_repository.dart';
import 'package:three_bee_test/presentation/hives_list/bloc/hives_list_state.dart';

class HivesListCubit extends Cubit<HivesListState> {
  late TextEditingController mailController;
  late TextEditingController passwordController;

  final HivesListRepository hivesListRepository;

  HivesListCubit(this.hivesListRepository) : super(const HivesListState()) {
    getAries();
  }

  Future<void> getAries() async {
    final aries = await hivesListRepository.getAries(state.page);
    aries.fold(
        (l) => null, //Error managemant
        (r) => state.copyWith(aries: r.results),
    );

  }
}
