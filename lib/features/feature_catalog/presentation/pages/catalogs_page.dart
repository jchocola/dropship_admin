import 'package:dropship_admin/core/icon/icons.dart';
import 'package:dropship_admin/features/feature_catalog/presentation/widgets/catalog_count_tags.dart';
import 'package:dropship_admin/features/feature_catalog/presentation/widgets/catalog_info_card.dart';
import 'package:dropship_admin/features/feature_catalog/presentation/widgets/catalog_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CatalogsPage extends StatelessWidget {
  const CatalogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      floatingActionButton: fab(),
      body: buildBody(context),
    );
  }

    FloatingActionButton fab() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(AppIcons.addIcon),
      
    );
  }

    PreferredSizeWidget appBar() {
    return AppBar(
      title: Text('Catalogs Management'),
      actions: [CatalogCountTags()],
    );
  }


    Widget buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(1.w),
      child: Column(
        spacing: 1.w,
        children: [
         
          Row(
            spacing: 1.w,
            children: [
              Expanded(
                child: CatalogListWidget(),
              ),
              Expanded(child: CatalogInfoCard()),
            ],
          ),
        ],
      ),
    );
  }
}
