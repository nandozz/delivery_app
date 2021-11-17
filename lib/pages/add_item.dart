import 'package:deliv_food/controllers/product_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class AddItems extends StatelessWidget {
  final ProductController cat = Get.find();
  @override
  Widget build(BuildContext context) {
    final TextEditingController categories =
        TextEditingController(text: Get.parameters["categories"]);
    final TextEditingController itemName = TextEditingController();
    final TextEditingController itemPrice = TextEditingController();
    final TextEditingController itemUrl = TextEditingController();
    return Scaffold(
      body: Center(
        child: Container(
          height: 430,
          width: 355,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.black87,
              border: Border.all(color: kHeaderColor, width: 5),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Text(
                "Add Item in \"${categories.text}\"",
                style: TextStyle(color: kHeaderColor, fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 95,
                  height: 95,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/mieAyam.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              TextField(
                controller: itemName,
                style: TextStyle(fontSize: 14, color: Colors.white),
                decoration: InputDecoration(
                  border: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.red),
                  ),
                  labelText: "item name",
                  labelStyle: TextStyle(color: kDarkYellow),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: itemPrice,
                style: TextStyle(fontSize: 14, color: Colors.white),
                decoration: InputDecoration(
                  labelText: "price",
                  labelStyle: TextStyle(color: kDarkYellow),
                  prefixText: "Rp ",
                  prefixStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: itemUrl,
                style: TextStyle(fontSize: 14, color: Colors.white),
                decoration: InputDecoration(
                  labelText: "url",
                  labelStyle: TextStyle(color: kDarkYellow),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      var list;
                      Get.back(result: list);

                      // Get.offNamed("/catalog");
                    },
                    child: Text("Back"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //       cat.allProduct.value.c items.add(Items(
                      // name: data['itemName'],
                      // price: data['itemPrice'],
                      // url: data['itemUrl']));
                      var list = {
                        'itemName': '${itemName.text}',
                        'itemPrice': int.parse('${itemPrice.text}'),
                        'itemUrl': '${itemUrl.text}',
                      };
                      Get.back(result: list);
                      Get.snackbar("Successfull",
                          '''Your item in ${categories.text} has been added''',
                          backgroundGradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(133, 209, 242, 100),
                                Color.fromRGBO(133, 209, 242, 0),
                              ]),
                          icon: Image.asset("assets/logo.png"));
                    },
                    child: Text("Add"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
