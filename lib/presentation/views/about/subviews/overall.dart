import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:justin/presentation/utils/extensions/extensions.dart';
import 'package:justin/presentation/widgets/widgets.dart';

import '../../../configs/configs.dart';
import 'wave_path.dart';

class Overall extends StatefulWidget {
  const Overall({super.key});

  @override
  State<Overall> createState() => _OverallState();
}

class _OverallState extends State<Overall> with TickerProviderStateMixin {
  late AnimationController _slideController;
  late AnimationController _firstController;
  late AnimationController _secondController;
  late AnimationController _textController;
  late AnimationController _stickController;
  late AnimationController _waveController;

  @override
  void initState() {
    super.initState();
    _slideController = AnimationController(vsync: this, duration: duration2000)
      ..addStatusListener(slideControllerListener);
    _firstController = AnimationController(vsync: this, duration: duration2000)
      ..addStatusListener(firstControllerListener);
    _secondController =
        AnimationController(vsync: this, duration: duration2000);
    _textController = AnimationController(vsync: this, duration: duration2000);
    _stickController = AnimationController(vsync: this, duration: duration1000)
      ..addStatusListener(stickControllerListener);
    _waveController = AnimationController(vsync: this, duration: duration2000);
  }

  void slideControllerListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _secondController.forward();
    }
  }

  void stickControllerListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _textController.forward();
      _waveController.forward();
    }
  }

  void firstControllerListener(AnimationStatus status) {}
  @override
  void dispose() {
    _firstController.dispose();
    _secondController.dispose();
    _slideController.dispose();
    _stickController.dispose();
    _textController.dispose();
    _waveController.dispose();
    super.dispose();
  }

  Animation<Offset> get slideLeftTween => Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
          parent: _slideController, curve: Curves.fastLinearToSlowEaseIn));
  Animation<Offset> get slideRightTween => Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
          parent: _slideController, curve: Curves.fastLinearToSlowEaseIn));
  Animation<Offset> get slideUpTween => Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(CurvedAnimation(
          parent: _slideController, curve: Curves.fastLinearToSlowEaseIn));
  Animation<Color?> get introColorTween =>
      ColorTween(begin: primary, end: teal200).animate(
        CurvedAnimation(
          parent: _firstController,
          curve: Curves.easeInOut,
        ),
      );
  Animation<Color?> get colorTween =>
      ColorTween(begin: primary, end: secondary).animate(
        CurvedAnimation(
          parent: _firstController,
          curve: Curves.easeInOut,
        ),
      );
  Animation<Color?> get transparentColorTween =>
      ColorTween(begin: secondary, end: primary).animate(
        CurvedAnimation(
          parent: _firstController,
          curve: Curves.easeInOut,
        ),
      );
  Animation<Color?> get coffeeColorTween =>
      ColorTween(begin: grey50, end: coffee).animate(
        CurvedAnimation(
          parent: _firstController,
          curve: Curves.easeInOut,
        ),
      );
  Animation<Color?> get strokeColorTween =>
      ColorTween(begin: grey50, end: grey500).animate(
        CurvedAnimation(
          parent: _stickController,
          curve: Curves.easeInOut,
        ),
      );
  Animation<Color?> get blackStrokeColorTween =>
      ColorTween(begin: grey50, end: grey).animate(
        CurvedAnimation(
          parent: _stickController,
          curve: Curves.easeInOut,
        ),
      );
  Animation<double> get waveTween => CurvedAnimation(
        parent: _waveController,
        curve: Curves.easeInOut,
      );
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const ValueKey("overall"),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.2) {
          _slideController.forward();
          _firstController.forward();
          _stickController.forward();
        }
      },
      child: <Widget>[
        if (context.isMobile)
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              kaCoffee,
              semanticsLabel: 'Coffee SVG',
              height: context.percentHeight(s12),
            ).addOpacity(opacity: 0.2),
          ),
        Positioned(
          top: context.percentHeight(s10),
          left: context.percentWidth(s8),
          child: AnimatedOutlinedText(
            text: ksIm,
            fontSize: context.adaptive(s14, s80),
            strokeWidth: context.adaptive(0.3, s4),
            strokeColor: teal200,
            animation: introColorTween,
            fontWeight: FontWeight.w500,
          ),
        ),
        Positioned(
          top: context.percentHeight(s10),
          right: context.percentWidth(s8),
          child: <Widget>[
            AnimatedTextSlideBoxTransition(
              text: ksAllAboutMe.toUpperCase(),
              controller: _textController,
              coverColor: primary,
              textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            horizontalSpaceMedium,
            AnimatedHorizontalStick(
              controller: _stickController,
            ),
          ].addRow(),
        ),
        Positioned(
          top: context.percentHeight(s18),
          left: context.percentWidth(s18),
          child: SlideTransition(
            position: slideLeftTween,
            child: AnimatedOutlinedText(
              text: ksTechNerd.toUpperCase(),
              fontSize: context.adaptive(s30, s100),
              strokeWidth: context.adaptive(s6, s18),
              letterSpacing: 2.5,
              strokeColor: secondary,
              animation: transparentColorTween,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Positioned(
          top: context.percentHeight(s32),
          left: context.percentWidth(s4),
          child: SlideTransition(
            position: slideRightTween,
            child: AnimatedOutlinedText(
              text: coffeeAddict.toUpperCase(),
              fontSize: context.adaptive(s28, s120),
              strokeColor: coffee,
              fontWeight: FontWeight.w700,
              animation: coffeeColorTween,
            ),
          ),
        ),
        Positioned(
          top: context.percentHeight(s48),
          right: context.percentWidth(s8),
          child: AnimatedStrokeText(
            text: ksAiEnthusiast.toUpperCase(),
            fontSize: context.adaptive(s24, s70),
            strokeWidth: s1,
            letterSpacing: s10,
            fontWeight: FontWeight.w900,
            animation: blackStrokeColorTween,
            textColor: transparent,
          ),
        ),
        Positioned(
          bottom: context.percentHeight(s1),
          right: context.percentHeight(s3),
          child: <Widget>[
            Container(
              width: s10,
              height: s10,
              decoration: const BoxDecoration(
                color: coffee,
                shape: BoxShape.circle,
              ),
            ),
            horizontalSpaceMedium,
            AnimatedStrokeText(
              text: ksIntrovert.toUpperCase(),
              fontSize: context.adaptive(s20, s30),
              strokeWidth: s1,
              letterSpacing: s2,
              fontWeight: FontWeight.w900,
              animation: strokeColorTween,
              textColor: transparent,
            ),
          ].addRow(
            mainAxisSize: MainAxisSize.min,
          ),
        ),
        Positioned(
          bottom: context.percentHeight(context.adaptive(s30, s8)),
          left: context.percentWidth(context.adaptive(s30, s10)),
          child: SlideTransition(
            position: slideUpTween,
            child: AnimatedOutlinedText(
              text: ksFlutterDev.toUpperCase(),
              fontSize: context.adaptive(s40, s180),
              maxLines: 2,
              strokeWidth: context.adaptive(0.3, s4),
              strokeColor: secondary,
              animation: colorTween,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Positioned(
          bottom: context.percentHeight(s20),
          left: context.percentWidth(s6),
          child: WavePath(
            color: coffee,
            animation: waveTween,
          ).addSizedBox(
            width: context.percentWidth(s10),
            height: s30,
          ),
        ),
      ].addStack().addSizedBox(
            width: context.screenWidth,
            height: context.screenHeight,
          ),
    );
  }
}
