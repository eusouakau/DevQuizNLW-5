import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_gradients.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';
import '../score_card/score_card_widget.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  AppBarWidget({required this.user})
      : super(
          preferredSize: Size.fromHeight(175),
          child: Container(
            height: 161,
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  height: 161,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                            text: 'Olá, ',
                            style: AppTextStyles.title,
                            children: [
                              TextSpan(
                                text: user.name,
                                style: AppTextStyles.titleBold,
                              ),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220, bottom: 5),
                        child: Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.fromBorderSide(
                              BorderSide(color: AppColors.border),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(user.imageUrl),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Align(
                    alignment: Alignment(0.0, 9.0),
                    child: ScoreCardWidget(
                      percent: user.score / 100,
                    )),
              ],
            ),
          ),
        );
}
