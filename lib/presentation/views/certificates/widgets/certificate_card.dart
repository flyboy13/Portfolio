import 'package:atlas_icons/atlas_icons.dart';
import 'package:flutter/material.dart';
import 'package:justin/data/model/certificate.dart';
import 'package:justin/presentation/configs/configs.dart';
import 'package:justin/presentation/utils/extensions/extensions.dart';

class CertificateCard extends StatelessWidget {
  const CertificateCard({
    super.key,
    required this.animation,
    required this.onHover,
    required this.certificate,
  });
  final Certificate certificate;
  final Animation<double> animation;
  final Function(bool) onHover;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onHover(true),
      onExit: (_) => onHover(false),
      child: AnimatedCertificateImage(
        animation: animation,
        certificate: certificate,
      ),
    );
  }
}

class AnimatedCertificateImage extends AnimatedWidget {
  const AnimatedCertificateImage({
    super.key,
    required this.animation,
    required this.certificate,
  }) : super(listenable: animation);
  final Animation<double> animation;
  final Certificate certificate;

  Animation<double> get curvedAnimation =>
      CurvedAnimation(parent: animation, curve: Curves.easeInOut);

  Animation<double> get opacityAnimation => Tween<double>(
        begin: s1,
        end: 0.2,
      ).animate(curvedAnimation);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showCertificateDialog(context),
      child: <Widget>[
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(s14),
            border: Border.all(
                color: Colors.black,
                width: 2.0), // Adjust color and width as needed
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(s14),
            child: Image.asset(
              certificate.image,
              fit: BoxFit.cover,
              width: double.maxFinite,
              height: double.maxFinite,
            ),
          ).addOpacity(
            opacity: opacityAnimation.value,
          ),
        ),
        IconButton(
          onPressed: () => showCertificateDialog(context),
          icon: const Icon(
            Atlas.arrows_corners_move_thin,
          ),
        )
            .addPadding(
              edgeInsets: context.allPadding(
                p: s8,
              ),
            )
            .addOpacity(
              opacity: 1 - opacityAnimation.value,
            )
            .addAlign(
              alignment: Alignment.topRight,
            ),
        <Widget>[
          Text(
            certificate.name,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
            textAlign: TextAlign.center,
          ),
          verticalSpaceMedium,
        ]
            .addColumn(
              mainAxisSize: MainAxisSize.min,
            )
            .addOpacity(
              opacity: 1 - opacityAnimation.value,
            )
            .addAlign(
              alignment: Alignment.center,
            ),
      ].addStack().addContainer(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(s14),
            ),
          ),
    );
  }

  void showCertificateDialog(BuildContext context) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: <Widget>[
            Text(
              certificate.name,
              maxLines: 3,
              style: context.adaptive(
                Theme.of(context).textTheme.bodySmall,
                Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
              icon: const Icon(Atlas.xmark_circle),
            ),
          ].addRow(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          content: AspectRatio(
            aspectRatio: 9 / 10,
            child: Image.asset(
              certificate.image,
            ),
          ),
        );
      },
    );
  }
}
