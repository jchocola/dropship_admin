import 'package:dropship_admin/core/icon/icons.dart';
import 'package:dropship_admin/core/router/location_config.dart';
import 'package:dropship_admin/features/feature_admin_shell/widgets/admin_shell_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:sizer/sizer.dart';

class AdminShell extends StatefulWidget {
  const AdminShell({super.key, required this.child});
  final Widget child;
  @override
  State<AdminShell> createState() => _AdminShellState();
}

class _AdminShellState extends State<AdminShell> {
  bool _isSidebarCollapsed = false;

  void _toggleSidebar() {
    setState(() {
      _isSidebarCollapsed = !_isSidebarCollapsed;
    });
  }

  void _logoutTapped() {
    context.go(LocationConfig.auth);
  }

  @override
  Widget build(BuildContext context) {
    final currentLocation = GoRouterState.of(context).matchedLocation;
    return Scaffold(
      body: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: _isSidebarCollapsed ? 8.w : 15.w,
            // color: Colors.blueGrey,
            child: Padding(
              padding: EdgeInsets.all(1.w),
              child: Column(
                crossAxisAlignment: .center,
                spacing: 1.w,
                children: [
                  IconButton(
                    icon: Icon(_isSidebarCollapsed ? Icons.menu : Icons.close),
                    onPressed: _toggleSidebar,
                  ),
                  // Add your sidebar items here
                  AdminShellMenuSideButton(
                    onTap: () => context.go(LocationConfig.currentShop),
                    showFullIcon: !_isSidebarCollapsed,
                    leading: ShadAvatar(
                      'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
                    ),
                    title: 'Chanka',
                    isPicked: currentLocation == LocationConfig.currentShop,
                  ),

                 

                  Expanded(child: SingleChildScrollView(
                    child: Column(
                      children: [

                         AdminShellMenuSideButton(
                    leading: Icon(AppIcons.shopIcon),
                    title: 'Shops',
                    onTap: () => context.go(LocationConfig.shopMenu),
                    showFullIcon: !_isSidebarCollapsed,
                    isPicked: currentLocation == LocationConfig.shopMenu,
                  ),

                  Divider(),
                         AdminShellMenuSideButton(
                      onTap: () => context.go(LocationConfig.home),
                      leading: Icon(AppIcons.homeIcon),
                      title: 'Home',
                      showFullIcon: !_isSidebarCollapsed,
                      isPicked: currentLocation == LocationConfig.home,
                    ),
                    AdminShellMenuSideButton(
                      onTap: () => context.go(LocationConfig.orders),
                      leading: Icon(AppIcons.orderIcon),
                      title: 'Orders',
                      showFullIcon: !_isSidebarCollapsed,
                      isPicked: currentLocation == LocationConfig.orders,
                    ),
                    AdminShellMenuSideButton(
                      onTap: () => context.go(LocationConfig.products),
                      leading: Icon(AppIcons.productIcon),
                      title: 'Products',
                      showFullIcon: !_isSidebarCollapsed,
                      isPicked: currentLocation == LocationConfig.products,
                    ),
                    AdminShellMenuSideButton(
                      onTap: () => context.go(LocationConfig.catalogs),
                      leading: Icon(AppIcons.catalogIcon),
                      title: 'Catalogs',
                      showFullIcon: !_isSidebarCollapsed,
                      isPicked: currentLocation == LocationConfig.catalogs,
                    ),
                    AdminShellMenuSideButton(
                      onTap: () => context.go(LocationConfig.customers),
                      leading: Icon(AppIcons.customerIcon),
                      title: 'Customers',
                      showFullIcon: !_isSidebarCollapsed,
                      isPicked: currentLocation == LocationConfig.customers,
                    ),
                    AdminShellMenuSideButton(
                      onTap: () => context.go(LocationConfig.discounts),
                      leading: Icon(AppIcons.discountIcon),
                      title: 'Discounts',
                      showFullIcon: !_isSidebarCollapsed,
                      isPicked: currentLocation == LocationConfig.discounts,
                    ),
                    AdminShellMenuSideButton(
                      onTap: () => context.go(LocationConfig.analytics),
                      leading: Icon(AppIcons.analyticIcon),
                      title: 'Analytics',
                      showFullIcon: !_isSidebarCollapsed,
                      isPicked: currentLocation == LocationConfig.analytics,
                    ),
                    AdminShellMenuSideButton(
                      onTap: () => context.go(LocationConfig.reviews),
                      leading: Icon(AppIcons.reviewIcon),
                      title: 'Reviews',
                      showFullIcon: !_isSidebarCollapsed,
                      isPicked: currentLocation == LocationConfig.reviews,
                    ),
                    
                      ],
                    ),
                  )),

                 
                 // Spacer(),

                  IconButton(
                    icon: Icon(AppIcons.logoutIcon),
                    onPressed: _logoutTapped,
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: widget.child),
        ],
      ),
    );
  }
}
