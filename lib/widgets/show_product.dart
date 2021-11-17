// import 'package:deliv_food/models/categories.dart';
// import 'package:deliv_food/models/items.dart';
// // import 'package:deliv_food/pages/catalog_page.dart';
// // import 'package:deliv_food/pages/catalog_page.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../constant.dart';

// //////////////////   WIDGET FUNCTION
// Widget widgetCatalog({required Categories cat}) {
//   return Container(
//     padding: EdgeInsets.symmetric(horizontal: 20),
//     margin: EdgeInsets.symmetric(vertical: 20),
//     // height: 285,
//     // color: Colors.amber[100],
//     child: Column(
//       children: [
//         ////////////////////  CATAEGORY
//         Row(
//           children: [
//             Container(
//               height: 50,
//               width: 50,
//               margin: EdgeInsets.only(right: 20),
//               decoration: BoxDecoration(
//                 border: Border.all(color: kHeaderColor, width: 5),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Align(
//                 alignment: Alignment.center,
//                 child: Text(
//                   '${cat.items.length}',
//                   style: TextStyle(
//                       color: kHeaderColor,
//                       fontSize: kCategorySize,
//                       fontWeight: kHeaderWeight),
//                 ),
//               ),
//             ),
//             Text(
//               '${cat.categories}',
//               style:
//                   TextStyle(fontSize: kCategorySize, fontWeight: kHeaderWeight),
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
//           ],
//         ),

//         ///////////////////// Items
//         Padding(
//           padding: const EdgeInsets.only(left: 55),
//           child: Column(
//             children: cat.items.map((e) {
//               return ListTile(
//                 onTap: () {
//                   Get.toNamed(
//                       "/detail/${cat.categories}?name=${e.name}&price=${e.price}&url=${e.url}");
//                 },
//                 leading: Container(
//                   height: 50,
//                   width: 50,
//                   decoration: BoxDecoration(
//                     // border: Border.all(color: kHeaderColor, width: 5),
//                     borderRadius: BorderRadius.circular(10),
//                     // color: Colors.black,
//                     image: DecorationImage(
//                       image: AssetImage(
//                         "assets/mieAyam.jpg",
//                       ),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 title: Text('${e.name}'),
//                 subtitle: Text('Rp ${e.price}'),
//                 trailing: Switch(
//                   value: e.isAvailable,
//                   onChanged: (value) {
//                     e.isAvailable = value;
//                   },
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//         OutlinedButton.icon(
//           onPressed: () async {
//             var data = await Get.toNamed("/addItem/${cat.categories}");
//             print(data);
//             if (data != null) {
//               cat.items.add(Items(
//                   name: data['itemName'],
//                   price: data['itemPrice'],
//                   url: data['itemUrl']));
//             } else
//               print(data);
//           },
//           icon: Icon(
//             Icons.add,
//             color: kHeaderColor,
//           ),
//           label: Text(
//             "Add Item",
//             style: TextStyle(color: kDarkYellow),
//           ),
//         ),
//       ],
//     ),
//   );
// }

// void update() {}
