
import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';
import 'package:islami_app_c21/core/theme/app_colors.dart';

class Tasbeh extends StatefulWidget {
Tasbeh({super.key});

  @override
  State<Tasbeh> createState() => _TasbehState();
}

class _TasbehState extends State<Tasbeh> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Assets.images.tasbeh.sebhaBackground.image(
          width: double.infinity,
          fit: BoxFit.fill,
        ),

        SingleChildScrollView(
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.images.headerImg.image(width: 290, height: 160),
              Text(
                textAlign: TextAlign.center,
                "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    if (counter < 30) {
                      counter++;
                    } else {
                      counter = 0;
                    }
                  });
                },
                child: Column(
                  children: [
                    Assets.images.tasbeh.sebhaHead.image(width: 140, height: 80),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedRotation(
                          turns: counter / 30,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          child: Assets.images.tasbeh.sebhaBody1.image(
                            width: 370,
                            height: 350,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "سبحان الله",
                              style: TextStyle(
                                color: AppColors.secondary,
                                fontSize: 36,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              counter.toString(),
                              style: TextStyle(
                                color: AppColors.secondary,
                                fontSize: 36,
                                fontWeight: FontWeight.w700,
                              ),
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
        ),
      ],
    );
  }
}
