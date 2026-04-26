import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AdminShellMenuSideButton extends StatelessWidget {
  const AdminShellMenuSideButton({
    super.key,
    this.showFullIcon = false,
    this.leading = const SizedBox(),
    this.title = 'Title',
    this.onTap,
    this.isPicked = false
  });
  final bool showFullIcon;
  final Widget leading;
  final String title;
  final void Function()? onTap;
  final bool isPicked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: isPicked ? Colors.blue : Colors.white,
        child: Padding(
          padding: EdgeInsetsGeometry.all(0.5.w),
          child: Row(
            mainAxisAlignment: showFullIcon ? .spaceBetween : .center,
            children: [
              leading,
              if (showFullIcon) SizedBox(width: 1.w),
              if (showFullIcon)
                Text(
                  title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
