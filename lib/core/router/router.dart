import 'package:dropship_admin/core/router/location_config.dart';
import 'package:dropship_admin/features/feature_admin_shell/presentation/pages/admin_shell.dart';
import 'package:dropship_admin/features/feature_analytics/presentation/pages/analytics_page.dart';
import 'package:dropship_admin/features/feature_auth/presentation/pages/auth_page.dart';
import 'package:dropship_admin/features/feature_catalog/presentation/pages/catalogs_page.dart';
import 'package:dropship_admin/features/feature_customers/presentation/pages/customers_page.dart';
import 'package:dropship_admin/features/feature_discounts/presentation/pages/discounts_page.dart';
import 'package:dropship_admin/features/feature_home/presentation/pages/home_page.dart';
import 'package:dropship_admin/features/feature_orders/presentation/pages/orders_page.dart';
import 'package:dropship_admin/features/feature_products/presentations/pages/products_page.dart';
import 'package:dropship_admin/features/feature_reviews/presentation/pages/reviews_page.dart';
import 'package:dropship_admin/features/feature_shops/presentation/pages/shops_page.dart';
import 'package:dropship_admin/features/feature_shops/presentation/pages/current_shop_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: LocationConfig.shopMenu,
  routes: [

      GoRoute(path: LocationConfig.auth,
      builder: (context, state) => const AuthPage(),
      ),

    ShellRoute(
      builder: (context, state, child) => AdminShell(child: child),
      routes: [
        ///
        /// SHOP INFO PAGE
        ///
        GoRoute(
          path: LocationConfig.currentShop,
          pageBuilder: (context, state) =>
              MaterialPage(child: CurrentShopPage()),
        ),

        ///
        /// SHOPS MENU PAGE
        ///
        GoRoute(
          path: LocationConfig.shopMenu,
          pageBuilder: (context, state) => MaterialPage(child: ShopsPage()),
        ),

        ///
        /// HOME PAGE
        ///
        GoRoute(
          path: LocationConfig.home,
          pageBuilder: (context, state) => MaterialPage(child: HomePage()),
        ),

        ///
        /// ORDERS PAGE
        ///
        GoRoute(
          path: LocationConfig.orders,
          pageBuilder: (context, state) => MaterialPage(child: OrdersPage()),
        ),

        ///
        /// PRODUCTS PAGE
        ///
        GoRoute(
          path: LocationConfig.products,
          pageBuilder: (context, state) => MaterialPage(child: ProductsPage()),
        ),

        ///
        /// CATALOGS PAGE
        ///
        GoRoute(
          path: LocationConfig.catalogs,
          pageBuilder: (context, state) => MaterialPage(child: CatalogsPage()),
        ),

        ///
        /// CUSTOMERS PAGE
        ///
        GoRoute(
          path: LocationConfig.customers,
          pageBuilder: (context, state) => MaterialPage(child: CustomersPage()),
        ),

        ///
        /// DISCOUNT PAGE
        ///
        GoRoute(
          path: LocationConfig.discounts,
          pageBuilder: (context, state) => MaterialPage(child: DiscountsPage()),
        ),

        ///
        /// ANALYTICS PAGE
        ///
        GoRoute(
          path: LocationConfig.analytics,
          pageBuilder: (context, state) => MaterialPage(child: AnalyticsPage()),
        ),

        ///
        /// REVIEWS PAGE
        ///
        GoRoute(
          path: LocationConfig.reviews,
          pageBuilder: (context, state) => MaterialPage(child: ReviewsPage()),
        ),
      ],
    ),
  ],
);
