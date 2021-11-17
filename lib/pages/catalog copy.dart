import 'package:deliv_food/constant.dart';
// import 'package:deliv_food/widgets/show_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/product_controller.dart';

class CatalogPage extends StatelessWidget {
  // const CatalogPage({Key? key}) : super(key: key);

  final ProductController productController =
      Get.put(ProductController(), permanent: true);

  final TextEditingController editName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Category"),
        ),
        // floatingActionButton: FloatingActionButton.extended(
        //   label: TextField(
        //     controller: editName,
        //     onEditingComplete: () {
        //       productController.changeName(fieldName: editName.text);
        //       editName.clear();
        //     },

        //     textAlign: TextAlign.center,
        //     // )                    style: TextStyle(fontSize: 14, color: Colors.blueGrey),
        //     decoration: InputDecoration(
        //       border: new UnderlineInputBorder(
        //         borderSide: new BorderSide(color: Colors.red),
        //       ),
        //       labelText: "Add Category",
        //       labelStyle: TextStyle(color: kDarkYellow),
        //     ),
        //   ),
        //   icon: Icon(Icons.add),
        //   backgroundColor: kDarkYellow,
        //   elevation: 8,
        //   onPressed: () {
        //     productController.changeName(fieldName: "Baso");
        //     editName.clear();
        //   },
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: BottomNavigationBar(
          elevation: 8,
          fixedColor: Colors.white,
          iconSize: 30,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              backgroundColor: kDarkYellow,
              icon: Icon(
                Icons.home,
              ),
              label: 'Catalog',
            ),
            BottomNavigationBarItem(
              backgroundColor: kDarkYellow,
              icon: Icon(Icons.list),
              label: 'Order List',
            ),
            BottomNavigationBarItem(
              backgroundColor: kDarkYellow,
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              backgroundColor: kDarkYellow,
              icon: Icon(Icons.analytics),
              label: 'History',
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              // Obx(() => Text("Total Categories = ${productController.products.length}")),

              Obx(() {
                return productController.products.length == 0
                    ? Container()
                    : ListTile(
                        onTap: () {},
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            // border: Border.all(color: kHeaderColor, width: 5),
                            borderRadius: BorderRadius.circular(10),
                            // color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/mieAyam.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text('${productController.items().name}'),
                        subtitle: Text('Rp ${productController.items().price}'),
                        trailing: IconButton(
                          icon: productController.items().isAvailable
                              ? Icon(Icons.check_box_rounded)
                              : Icon(Icons.check_box_outline_blank_outlined),
                          onPressed: () {
                            productController.changeBox();
                          },
                        ),
                      );
              }),

              ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.add_box_rounded,
                    color: kDarkYellow,
                    size: 45,
                  ),
                  onPressed: () {
                    // productController.addProduct(itemName.text);

                    productController.changeName(
                        fieldName: editName.text,
                        fieldPrice: 123,
                        fieldUrl: "sate.com");
                  },
                ),
                title: TextField(
                  autocorrect: false,
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: "Item Name",
                      labelStyle: TextStyle(color: kDarkYellow)),
                  textInputAction: TextInputAction.done,
                  controller: editName,
                  onEditingComplete: () {
                    productController.changeName(
                        fieldName: editName.text,
                        fieldPrice: 123,
                        fieldUrl: "sate.com");
                    editName.clear();
                  },
                ),
              ),

              Text("Total Item = ${productController.products.length}"),
              Container(
                height: 151,
                width: 51,
                color: Colors.amber,
                child: ListView(
                    children: productController.products.map((i) {
                  return Obx(() => ListTile(
                        onTap: () {},
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            // border: Border.all(color: kHeaderColor, width: 5),
                            borderRadius: BorderRadius.circular(10),
                            // color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/mieAyam.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text('${productController.items().name}'),
                        subtitle: Text('Rp ${productController.items().price}'),
                        trailing: IconButton(
                          icon: productController.items().isAvailable
                              ? Icon(Icons.check_box_rounded)
                              : Icon(Icons.check_box_outline_blank_outlined),
                          onPressed: () {
                            productController.changeBox();
                          },
                        ),
                      ));
                }).toList()),
              )
            ],
          ),
        )
        // SliverAppBar(
        //   backgroundColor: kHeaderColor,
        //   pinned: true,
        //   actions: [Image.asset('assets/logo.png')],
        //   expandedHeight: 165,
        //   flexibleSpace: FlexibleSpaceBar(
        //     title: Align(
        //       alignment: Alignment.bottomLeft,
        //       child: Text(
        //         "Catalog",
        //         style: TextStyle(
        //             color: Colors.white,
        //             fontSize: kHeaderSize,
        //             fontWeight: kHeaderWeight),
        //       ),
        //     ),
        //   ),
        // ),

        );
  }
}
