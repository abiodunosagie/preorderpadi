import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:preorderpadi/utils/constants/color.dart';
import 'package:preorderpadi/utils/constants/sizes.dart';

/// A widget for displaying on animated loading indicactor with optional text and action button.
class TAnimationLoaderWidget extends StatelessWidget {
  /// Default constructor for the TanimationloaderWidget
  ///
  /// Parameters:
  /// - text: the text to be displayed below the animation
  /// - animation: the path to the lottie animation file
  /// - showAction: Whether to show on action button below the text.
  /// - actionText: The text to be displayed on the action button.
  /// - onActionPressed: Callback function to be executed when the action button is pressed.
  const TAnimationLoaderWidget(
      {super.key,
      required this.text,
      required this.animation,
      this.showAction = false,
      this.onActionPressed,
      this.actionText});
  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            animation,
            width: MediaQuery.of(context).size.width *
                0.8, // Display Lottie animation
          ),
          const SizedBox(
            height: TSizes.defaultSpace,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSizes.defaultSpace,
          ),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: onActionPressed,
                    style:
                        OutlinedButton.styleFrom(backgroundColor: TColors.dark),
                    child: Text(
                      actionText!,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: TColors.light,
                          ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
