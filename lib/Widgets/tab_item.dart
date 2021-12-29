import 'package:avocato_application/constants.dart';
import 'package:flutter/material.dart';
class TabItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  final Function onTap;
  const TabItem({required this.text, required this.icon, required this.isSelected, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: whiteColor,
              child: Icon(

                icon,
                color: isSelected ? mainColor :  mainColor,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                  color: isSelected ? Colors.white : Colors.white,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  fontSize: 13),
            )
          ],
        ),
      ),
      onTap: onTap(),
    );
  }
}
