import 'package:flutter/material.dart';
import 'package:message_bar/core/settings/settings.dart';

class CustomMessageWidget extends StatelessWidget {
  final String message;
  final Color primaryColor, backgroundColor;
  final IconData icon;
  
  const CustomMessageWidget({
    Key? key,
    required this.icon,
    required this.primaryColor,
    required this.backgroundColor,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Settings().height,
      padding: Settings().boxPadding,
      margin: Settings().boxMargin,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          color: primaryColor.withOpacity(0.5),
          width: Settings().borderThickness,
        ),
        borderRadius: BorderRadius.circular(Settings().borderRadius),
      ),
      child: Row(
        textDirection: Directionality.maybeOf(context),
        children: [
          Container(
            width: Settings().height -
                (Settings().boxPadding.top + Settings().boxPadding.bottom),
            height: Settings().height -
                (Settings().boxPadding.top + Settings().boxPadding.bottom),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: primaryColor,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0.0, 5.0),
                  color: primaryColor.withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 2,
                )
              ],
            ),
            child: FittedBox(
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: Settings().midPadding,
          ),
          Expanded(
            child: Text(
              message,
              textDirection: Directionality.maybeOf(context),
              maxLines: 2,
              style: TextStyle(
                fontSize: Settings().fontSize,
                color: Settings().textColor,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon:
                Icon(Icons.close, color: Settings().textColor.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}
