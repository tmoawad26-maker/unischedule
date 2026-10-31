import 'package:flutter/material.dart';

class MainTabModel {
  const MainTabModel({
    required this.labelKey,
    required this.titleKey,
    required this.descriptionKey,
    required this.icon,
    required this.selectedIcon,
    this.showNotificationBadge = false,
  });

  final String labelKey;
  final String titleKey;
  final String descriptionKey;
  final IconData icon;
  final IconData selectedIcon;
  final bool showNotificationBadge;
}

const mainTabs = [
  MainTabModel(
    labelKey: 'main_tab_home',
    titleKey: 'main_home_title',
    descriptionKey: 'main_home_description',
    icon: Icons.home_outlined,
    selectedIcon: Icons.home,
  ),
  MainTabModel(
    labelKey: 'main_tab_schedule',
    titleKey: 'main_schedule_title',
    descriptionKey: 'main_schedule_description',
    icon: Icons.calendar_month_outlined,
    selectedIcon: Icons.calendar_month,
  ),
  MainTabModel(
    labelKey: 'main_tab_courses',
    titleKey: 'main_courses_title',
    descriptionKey: 'main_courses_description',
    icon: Icons.school_outlined,
    selectedIcon: Icons.school,
  ),
  MainTabModel(
    labelKey: 'main_tab_notifications',
    titleKey: 'main_notifications_title',
    descriptionKey: 'main_notifications_description',
    icon: Icons.notifications_none_outlined,
    selectedIcon: Icons.notifications,
    showNotificationBadge: true,
  ),
  MainTabModel(
    labelKey: 'main_tab_profile',
    titleKey: 'main_profile_title',
    descriptionKey: 'main_profile_description',
    icon: Icons.person_outline,
    selectedIcon: Icons.person,
  ),
];
