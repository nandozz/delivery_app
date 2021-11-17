// import 'package:deliv_food/constant.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../controllers/product_controller.dart';
// import '../widgets/show_product.dart';

// class CatalogPage extends StatelessWidget {
//   // const CatalogPage({Key? key}) : super(key: key);
//   final pro = Get.put(CategoriesController());
//   final CategoriesController categoriesController =
//       Get.put(CategoriesController(), permanent: true);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           backgroundColor: kDarkYellow,
//           elevation: 8,
//           mini: true,
//           onPressed: () {},
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
//         body: CustomScrollView(
//           slivers: [
//             SliverAppBar(
//               backgroundColor: kHeaderColor,
//               pinned: true,
//               actions: [Image.asset('assets/logo.png')],
//               expandedHeight: 165,
//               flexibleSpace: FlexibleSpaceBar(
//                 title: Align(
//                   alignment: Alignment.bottomLeft,
//                   child: Text(
//                     "Catalog",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: kHeaderSize,
//                         fontWeight: kHeaderWeight),
//                   ),
//                 ),
//               ),
//             ),
//             Obx(() {
//               return SliverToBoxAdapter(
//                 child: Column(
//                   children: categoriesController.allProduct.map((p) {
//                     return widgetCatalog(cat: p);
//                   }).toList(),
//                 ),
//               );
//             })
//           ],
//         ));
//   }
// }
