import 'package:flutter/material.dart';
import 'package:message_bar/core/settings/settings.dart';
import 'package:message_bar/features/message_bar/domain/usecase/show_simple_toast.dart';
import 'package:message_bar/features/message_bar/message_bar.dart';

class MessageWidget extends StatelessWidget {
  final MessageType type;
  final String message;
  const MessageWidget({
    Key? key,
    required this.type,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Settings().height,
      padding: Settings().boxPadding,
      margin: Settings().boxMargin,
      decoration: BoxDecoration(
        color: getBoxColor(type),
        border: Border.all(
          color: getColor(type).withOpacity(0.5),
          width: Settings().borderThickness,
        ),
        borderRadius: BorderRadius.circular(Settings().borderRadius),
      ),
      child: Row(
        children: [
          Container(
            width: Settings().height -
                (Settings().boxPadding.top + Settings().boxPadding.bottom),
            height: Settings().height -
                (Settings().boxPadding.top + Settings().boxPadding.bottom),
            padding: EdgeInsets.all(Settings().iconPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: getColor(type),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0.0, 5.0),
                  color: getColor(type).withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 2,
                )
              ],
            ),
            child: FittedBox(
              child: Icon(
                getIcon(type),
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
            onPressed: () => MessageBar().closeToast(),
            icon:
                Icon(Icons.close, color: Settings().textColor.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }

  Color getBoxColor(MessageType type) {
    switch (type) {
      case MessageType.SUCCESS:
        return const Color(0xffECF8EF);
      case MessageType.ALERT:
        return const Color(0xffE7F0FB);
      case MessageType.FAILED:
        return const Color(0xffFDEDEA);
      case MessageType.WARNING:
        return const Color(0xffFDF4E6);
      default:
        return Colors.grey.shade100;
    }
  }

  Color getColor(MessageType type) {
    switch (type) {
      case MessageType.SUCCESS:
        return const Color(0xff3DB763);
      case MessageType.ALERT:
        return const Color(0xff0D6BDB);
      case MessageType.FAILED:
        return const Color(0xffEB4C2C);
      case MessageType.WARNING:
        return const Color(0xffF09501);
      default:
        return Colors.grey;
    }
  }

  IconData getIcon(MessageType type) {
    switch (type) {
      case MessageType.SUCCESS:
        return Icons.check_circle_rounded;
      case MessageType.ALERT:
        return Icons.info_rounded;
      case MessageType.FAILED:
        return Icons.warning_rounded;
      case MessageType.WARNING:
        return Icons.warning_rounded;
      default:
        return Icons.warning_rounded;
    }
  }
}
