import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/features/home/presentation/views/screens/home_screen.dart';
import 'package:unischedule/features/main/models/main_tab_model.dart';
import 'package:unischedule/features/main/presentation/views/widgets/main_tab_screen.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key, this.initialIndex = 0});

  final int initialIndex;

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex.clamp(0, mainTabs.length - 1);
  }

  @override
  void didUpdateWidget(covariant MainLayoutScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialIndex != oldWidget.initialIndex) {
      _selectedIndex = widget.initialIndex.clamp(0, mainTabs.length - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            for (final tab in mainTabs)
              tab.labelKey == 'main_tab_home'
                  ? const HomeScreen()
                  : MainTabScreen(model: tab),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _selectTab,
        destinations: [
          for (final tab in mainTabs)
            NavigationDestination(
              icon: _buildTabIcon(context, tab.icon, tab.showNotificationBadge),
              selectedIcon: _buildTabIcon(
                context,
                tab.selectedIcon,
                tab.showNotificationBadge,
              ),
              label: tab.labelKey.tr(),
            ),
        ],
      ),
    );
  }

  void _selectTab(int index) {
    if (index == _selectedIndex) return;
    setState(() => _selectedIndex = index);
  }

  Widget _buildTabIcon(BuildContext context, IconData icon, bool showBadge) {
    final theme = Theme.of(context);
    final iconWidget = Icon(icon);

    if (!showBadge) {
      return iconWidget;
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        iconWidget,
        PositionedDirectional(
          top: -7,
          end: -9,
          child: Container(
            constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
            padding: const EdgeInsets.symmetric(horizontal: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: theme.colorScheme.error,
              shape: BoxShape.circle,
            ),
            child: Text(
              'main_notification_count'.tr(),
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onError,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
