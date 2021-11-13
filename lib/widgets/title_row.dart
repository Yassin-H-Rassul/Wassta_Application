import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  final String title;
  final String? trailingText;
  const TitleRow({required this.title, this.trailingText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          if (trailingText != null)
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  trailingText!,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
