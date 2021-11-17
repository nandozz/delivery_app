import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class DetailItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController editName =
        TextEditingController(text: Get.parameters['name']);
    final TextEditingController editPrice =
        TextEditingController(text: Get.parameters['price']);
    final TextEditingController editUrl =
        TextEditingController(text: Get.parameters['url']);
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
                "Detail Item",
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
                controller: editName,
                style: TextStyle(fontSize: 14, color: Colors.white),
                decoration: InputDecoration(
                  border: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.red),
                  ),
                  labelText: "edit name",
                  labelStyle: TextStyle(color: kDarkYellow),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: editPrice,
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
                controller: editUrl,
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
                      Get.offNamed("/catalog");
                    },
                    child: Text("Back"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.back();
                      Get.snackbar(
                          "Successfull", '''Your data has been updated''',
                          backgroundGradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(133, 209, 242, 100),
                                Color.fromRGBO(133, 209, 242, 0),
                              ]),
                          icon: Image.asset("assets/logo.png"));
                    },
                    child: Text("Edit"),
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
