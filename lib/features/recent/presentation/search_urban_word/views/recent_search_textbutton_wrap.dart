import 'package:com_lvoxx_urban_dictionary/core/service/service_locator.dart'
    as di;
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/cubit/hint_buttons/hint_buttons_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class RecentSearchTextButtonIcon extends StatelessWidget {
  const RecentSearchTextButtonIcon({
    required this.recentSearchWord,
    required this.searchController,
    required this.isFocused,
    super.key,
  });
  final List<String> recentSearchWord;
  final TextEditingController searchController;
  final bool isFocused;

  @override
  Widget build(BuildContext context) {
    di.sl.get<Logger>().d(BlocProvider.of<HintButtonCubit>(context).state);
    return isFocused
        ? Wrap(
            spacing: 1,
            runSpacing: 2,
            children: List.from(
              recentSearchWord.map(
                (text) => TextButton(
                  style: (BlocProvider.of<HintButtonCubit>(context)
                          .state[recentSearchWord.indexOf(text)])
                      ? TextButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          foregroundColor: Colors.white,
                        )
                      : Theme.of(context).textButtonTheme.style,
                  child: Text(text),
                  onPressed: () {
                    if (searchController.text.contains(text)) {
                      searchController.text = searchController.text
                          .replaceAll(RegExp('$text '), '');
                    } else {
                      if (!searchController.text.endsWith(' ')) {
                        searchController.text += ' ';
                      }
                      searchController.text += '$text ';
                    }
                    context.read<HintButtonCubit>().assignClickedTheme(
                          recentSearchWord.indexOf(text),
                        );
                    di.sl.get<Logger>().d(recentSearchWord.indexOf(text));
                  },
                ),
              ),
            ),
          )
        : const SizedBox();
  }
}
