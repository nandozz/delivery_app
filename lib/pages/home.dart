import 'package:deliv_food/pages/login.dart';
import 'package:deliv_food/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class HomePages extends StatelessWidget {
  // const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Deliv - Food",
                  style: TextStyle(
                      color: kHeaderColor,
                      fontWeight: kHeaderWeight,
                      fontSize: kHeaderSize),
                ),
                SizedBox(
                  height: 55,
                ),
                Expanded(child: SvgPicture.asset("assets/Welcome.svg")),
                SizedBox(
                  height: 83,
                ),
                Container(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    child: Text("Login"),
                    onPressed: () {
                      Get.toNamed('/login');
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    child: Text("Sign Up"),
                    onPressed: () {
                      Get.to(LoginPage());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
