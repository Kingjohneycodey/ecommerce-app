import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Orders Tab',
        style: TextStyle(fontSize: 24, color: AppColors.primary),
      ),
    );
  }
}
