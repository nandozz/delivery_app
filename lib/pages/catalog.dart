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
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Category"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          mini: true,
          onPressed: () {},
        ),
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                AddNewItem(
                    productController: productController, editName: editName),
                Text("Total Item = ${productController.products.length}"),
                Obx(() => Column(
                        children: productController.products.map((i) {
                      var idx = productController.products.indexOf(i);
                      idx++;
                      return ListTile(
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
                        title: Text('$idx ${i.name}'),
                        subtitle: Text('Rp ${i.price}'),
                        trailing: IconButton(
                          icon: productController.items().isAvailable
                              ? Icon(Icons.check_box_rounded)
                              : Icon(Icons.check_box_outline_blank_outlined),
                          onPressed: () {
                            productController.changeBox();
                          },
                        ),
                      );
                    }).toList()))
              ],
            ),
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

class AddNewItem extends StatelessWidget {
  const AddNewItem({
    Key? key,
    required this.productController,
    required this.editName,
  }) : super(key: key);

  final ProductController productController;
  final TextEditingController editName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: Icon(
          Icons.add_box_rounded,
          color: kDarkYellow,
          size: 45,
        ),
        onPressed: () {
          // productController.addProduct(itemName.text);

          productController.newItem(
              fieldName: editName.text, fieldPrice: 123, fieldUrl: "sate.com");
        },
      ),
      title: TextField(
        autocorrect: false,
        autofocus: true,
        decoration: InputDecoration(
            labelText: "Item Name", labelStyle: TextStyle(color: kDarkYellow)),
        textInputAction: TextInputAction.done,
        controller: editName,
        onEditingComplete: () {
          productController.changeName(
              fieldName: editName.text, fieldPrice: 123, fieldUrl: "sate.com");
          editName.clear();
        },
      ),
    );
  }
}
