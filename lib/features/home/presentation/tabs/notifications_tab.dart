import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class NotificationsTab extends StatelessWidget {
  const NotificationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Notifications Tab',
        style: TextStyle(fontSize: 24, color: AppColors.primary),
      ),
    );
  }
}
