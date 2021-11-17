// import 'package:deliv_food/models/categories.dart';
import 'package:deliv_food/models/items.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  int index = 0;
  // RxBool logic = false.obs;

  final text = "asd".obs;

  final items = Items().obs;

  var products = <Items>[].obs;
  // RxInt count = products.length.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Items(name: "Sate", price: 5, url: "kocak.com"),
      Items(name: "Mie", price: 5, url: "kocak.com"),
      Items(name: "Baso", price: 5, url: "kocak.com"),
    ];

    products.value = productResult;
  }

  void newItem({String? fieldName, int? fieldPrice, String? fieldUrl}) {
    products().add(
      Items(name: fieldName, price: 5, url: "kocak.com"),
    );

    text.value = fieldName!;

    print("Change Item $fieldName");
  }

  void addProduct() {
    print("ADD ProDuct");
    products().add(items.value);
  }

  void changeAvail() {
    items.value.isAvailable = !items.value.isAvailable;
    update();
  }

  void changeName({String? fieldName, int? fieldPrice, String? fieldUrl}) {
    items.update((items) {
      items!.name = fieldName!;
      items.price = 999;
      items.url = "aneh";
    });
    addProduct();

    text.value = fieldName!;

    print("Change Item $fieldName");
  }

  void changeBox() {
    items.update((items) {
      items!.isAvailable = !items.isAvailable;
    });
  }
}
