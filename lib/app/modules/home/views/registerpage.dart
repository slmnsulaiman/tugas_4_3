import 'package:flutter/material.dart';
import 'package:tugas_42/app/modules/home/controllers/registercontroller.dart';
import 'package:tugas_42/app/routes/app_routes.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  final regisC = Get.find<RegisController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                width: 150,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/bg.png',
                        ),
                        fit: BoxFit.cover)),
              ),
              Center(
                  child: Text(
                'Please Fill out form to Register!',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(height: 15),
              TextField(
                controller: regisC.fullnameC,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    prefixIconColor: Colors.orange,
                    hintText: 'Masukkan Name',
                    labelText: 'Full Name',
                    labelStyle: TextStyle(color: Colors.orange),
                    prefixIcon: Icon(Icons.accessibility_sharp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(height: 15),
              TextField(
                controller: regisC.usernameC,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    prefixIconColor: Colors.orange,
                    hintText: 'Masukkan Username',
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.orange),
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(height: 15),
              TextField(
                controller: regisC.emailC,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    prefixIconColor: Colors.orange,
                    hintText: 'Masukkan Email',
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.orange),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(height: 15),
              Obx(() => TextField(
                    obscureText: regisC.istampilsandi.value,
                    controller: regisC.passwordC,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        prefixIconColor: Colors.orange,
                        hintText: 'Masukkan Password',
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.orange),
                        prefixIcon: Icon(Icons.key),
                        suffixIcon: IconButton(
                            onPressed: () {
                              regisC.istampilsandi.toggle();
                            },
                            icon: Icon(Icons.remove_red_eye)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  )),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  regisC.registerC();
                },
                child: Text(
                  'REGISTER',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Yes i have an account?'),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(routes.login);
                      },
                      child: Text('Login'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
