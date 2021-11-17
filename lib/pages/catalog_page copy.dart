// import 'package:deliv_food/constant.dart';
// import 'package:deliv_food/models/items.dart';
// import 'package:flutter/material.dart';
// // import '../models/categories.dart';
// // import '../models/items.dart';
// import 'package:get/get.dart';
// import '../controllers/product_controller.dart';
// // import '../widgets/show_product.dart';

// class CatalogPage extends StatelessWidget {
//   // const CatalogPage({Key? key}) : super(key: key);
//   // final pro = Get.put(CategoriesController());

//   final CategoriesController categoriesController =
//       Get.put(CategoriesController(), permanent: true);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("CATALOG"),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           backgroundColor: kDarkYellow,
//           elevation: 8,
//           mini: true,
//           onPressed: () {
//             categoriesController.allProduct
//                 .add(Items(name: "Mie", price: 11000));
//           },
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//         bottomNavigationBar: BottomNavigationBar(
//           elevation: 8,
//           fixedColor: Colors.white,
//           iconSize: 30,
//           currentIndex: 0,
//           items: [
//             BottomNavigationBarItem(
//               backgroundColor: kDarkYellow,
//               icon: Icon(
//                 Icons.home,
//               ),
//               label: 'Catalog',
//             ),
//             BottomNavigationBarItem(
//               backgroundColor: kDarkYellow,
//               icon: Icon(Icons.list),
//               label: 'Order List',
//             ),
//             BottomNavigationBarItem(
//               backgroundColor: kDarkYellow,
//               icon: Icon(Icons.history),
//               label: 'History',
//             ),
//             BottomNavigationBarItem(
//               backgroundColor: kDarkYellow,
//               icon: Icon(Icons.analytics),
//               label: 'History',
//             ),
//           ],
//         ),
//         body: Center(
//           child: Obx(() {
//             return Container(
//               child: ListView.separated(
//                 itemCount: categoriesController.allProduct.length,
//                 separatorBuilder: (_, __) => Text("------------------------"),
//                 itemBuilder: (context, index) => ListTile(
//                   title:
//                       Text(categoriesController.allProduct[index].categories),
//                   subtitle: Text(
//                       categoriesController.allProduct[index].items[index].name),
//                 ),
//               ),
//             );
//           }),
//         ));
//   }
// }
