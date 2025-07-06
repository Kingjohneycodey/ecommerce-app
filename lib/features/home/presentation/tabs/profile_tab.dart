import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Tab',
        style: TextStyle(fontSize: 24, color: AppColors.primary),
      ),
    );
  }
}
