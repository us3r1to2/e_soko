import 'package:flutter/material.dart';

class SamButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const SamButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          border: Border.all(width: 1, color: theme.colorScheme.secondary),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: theme.colorScheme.onPrimary,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
