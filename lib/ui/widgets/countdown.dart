import 'package:flutter/material.dart';
import 'package:vamos/utils/app_theme.dart';

class Countdown extends AnimatedWidget {
  Countdown({Key? key, required this.animation})
      : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);
    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${(clockTimer.inSeconds.remainder(60) % 60).toString().padLeft(2, '0')}';
    return Text(
      "$timerText",
      style: AppTheme.h4.copyWith(
        color: AppTheme.lightGrey,
      ),
    );
  }
}
