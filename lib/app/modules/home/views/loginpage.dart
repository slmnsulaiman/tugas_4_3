import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_42/app/modules/home/controllers/logincontroller.dart';
import 'package:tugas_42/app/routes/app_routes.dart';

class LoginPage extends StatelessWidget {
  final logC = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                width: 150,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/bg.png'))),
              ),
              Center(
                  child: Text(
                'SIG IN',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(height: 15),
              TextField(
                controller: logC.emailC,
                autocorrect: false,
                decoration: InputDecoration(
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
                    controller: logC.passC,
                    obscureText: logC.istampilsandi.value,
                    autocorrect: false,
                    decoration: InputDecoration(
                        prefixIconColor: Colors.orange,
                        hintText: 'Masukkan Password',
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.orange),
                        prefixIcon: Icon(Icons.key),
                        suffixIcon: IconButton(
                            onPressed: () {
                              logC.istampilsandi.toggle();
                            },
                            icon: Icon(Icons.remove_red_eye)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  )),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  logC.login();
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have account?'),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(routes.register);
                      },
                      child: Text('Register'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
