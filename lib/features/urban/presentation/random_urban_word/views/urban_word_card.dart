import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/entities/urban_word.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/widget/underline_text.dart';

class UrbanWordCard extends StatelessWidget {
  const UrbanWordCard({required this.urbanWord, super.key});
  final UrbanWord urbanWord;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 245, 245, 245),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  urbanWord.word,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 15,
                ),
                UnderlineText(
                  text: urbanWord.definition,
                  textStyle: Theme.of(context).textTheme.bodyLarge!,
                ),
                const Divider(),
                UnderlineText(
                  text: urbanWord.example,
                  textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                ),
                const SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'by ',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: '${urbanWord.author} ',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                      TextSpan(
                        text: DateFormat('MMMM dd, yyyy')
                            .format(urbanWord.writtenOn),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_up,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          urbanWord.thumbsUp.toString(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_down,
                          color: Theme.of(context).splashColor,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          urbanWord.thumbsDown.toString(),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
