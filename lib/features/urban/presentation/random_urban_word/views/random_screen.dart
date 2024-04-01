import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/widget/urban_word_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/random_urban_word/bloc/random_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/random_urban_word/bloc/random_event.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/random_urban_word/bloc/random_state.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/random_urban_word/views/urban_word_card.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/widget/center_widget.dart';

class RandomScreen extends StatefulWidget {
  const RandomScreen({required this.scrollController, super.key});
  final ScrollController scrollController;
  @override
  State<RandomScreen> createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {
  late int urbanWordIndex;
  late ScrollController _scrollController;
  @override
  void initState() {
    urbanWordIndex = 0;
    super.initState();
    _scrollController = widget.scrollController;
  }

  @override
  Widget build(BuildContext context) {
    urbanWordIndex = 0;
    return BlocConsumer<RandomBloc, RandomState>(
      builder: (context, state) {
        return state.whenOrNull(
              loadingRandomState: () => const Center(
                child: CenterWidget(
                  widgets: [CircularProgressIndicator()],
                ),
              ),
              loadedRandomState: (urbanWords) => SafeArea(
                child: RefreshIndicator(
                  onRefresh: () {
                    BlocProvider.of<RandomBloc>(context)
                        .add(const LoadNewRandomWordsFromApiEvent());
                    return Future.delayed(const Duration(seconds: 2));
                  },
                  child: UrbanWordListView(
                    scrollController: _scrollController,
                    scrollPhysics: const BouncingScrollPhysics(),
                    itemToBuild: (context, index) =>
                        UrbanWordCard(urbanWord: urbanWords[index]),
                    itemToSeperate: (context, index) => const SizedBox(
                      height: 15,
                    ),
                    itemCount: urbanWords.length,
                  ),
                ),
              ),
            ) ??
            const CenterWidget(
              widgets: [CircularProgressIndicator()],
            );
      },
      listener: (context, state) {},
    );
  }
}
