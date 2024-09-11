import 'package:cat_breeds_app/utils/assets.dart';
import 'package:cat_breeds_app/utils/constants.dart';
import 'package:cat_breeds_app/utils/failure.dart';
import 'package:flutter/material.dart';

class ShowingFailureView extends StatelessWidget {
  const ShowingFailureView({
    super.key,
    required this.failure,
  });

  final Failure failure;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Constants.showingFailureTitle,
            style: theme.textTheme.headlineMedium
                ?.copyWith(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: SizedBox(
              height: size.height * 0.3,
              child: Image.asset(Assets.errorImage),
            ),
          ),
          Text(
            failure.message,
            style: theme.textTheme.headlineSmall?.copyWith(color: Colors.red),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
