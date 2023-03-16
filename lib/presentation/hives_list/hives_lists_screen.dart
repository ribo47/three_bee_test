import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:three_bee_test/api/di_service.dart';
import 'package:three_bee_test/presentation/hives_list/bloc/hives_list_cubit.dart';
import 'package:three_bee_test/presentation/hives_list/bloc/hives_list_state.dart';
import 'package:three_bee_test/utils/commonWidget/hive_tile.dart';

class HivesListScreen extends StatelessWidget {
  const HivesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => HivesListCubit(hivesListRepository),
        child: BlocBuilder<HivesListCubit, HivesListState>(
          builder: (BuildContext context, state) {
            return _buildBody(context, state);
          },
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, HivesListState state) {
    if (state.aries.isEmpty) return const Center(child: Text('no aires'));
    return ListView.builder(
      shrinkWrap: true,
      itemCount: state.aries.length,
      itemBuilder: (BuildContext context, int index) {
        final item = state.aries[index];
        final deltaList = item.weights?.delta[item.id] as Map<String?, String?>;
        late final timestamp;
        late final weight;
        deltaList.forEach((key, value) {
          if (key != null && value != null) {
            timestamp = key;
            weight = value;
          }
        });
        return HiveTile(
          image: item.imageId ?? '',
          name: item.name ?? '',
          externalId: item.id.toString(),
          weight: timestamp,
          date: weight,
        );
      },
    );
  }
}
