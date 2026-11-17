import 'package:flutter/material.dart';

class DashboardItem {
  const DashboardItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    this.badge,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final String? badge;
}
