import 'package:dev_quiz/challenge/widget/next_button/next_button_widget.dart';
import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class ResultQuestErrorPage extends StatelessWidget {
  const ResultQuestErrorPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100),
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Image.asset(AppImages.error),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Errou!",
                    style: AppTextStyles.heading40,
                  ),
                ),
                SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                    text: "Resposta Correta",
                    style: AppTextStyles.body,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 45, right: 45, bottom: 150),
                        child: NextButtonWidget.puple(
                          label: "Avançar",
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
