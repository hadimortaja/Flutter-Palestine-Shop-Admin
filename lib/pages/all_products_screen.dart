import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:palestine_shop_admin/pages/product_item.dart';
import 'package:palestine_shop_admin/widgets/custom_text.dart';

class AllProductsScreen extends StatefulWidget {
  @override
  _AllProductsScreenState createState() => _AllProductsScreenState();
}

class _AllProductsScreenState extends State<AllProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StaggeredGridView.countBuilder(
      crossAxisCount: 6,
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) => ProductItem(),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(3, index.isEven ? 4 : 5),
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 20,
    )
        //      GridView.count(
        //   crossAxisCount: 2,
        //   childAspectRatio: 240 / 290,
        //   crossAxisSpacing: 8,
        //   mainAxisSpacing: 8,
        //   children: List.generate(100, (index) {
        //     return ProductItem();
        //   }),
        // )
        );
  }
}
