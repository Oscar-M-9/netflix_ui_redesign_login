import 'dart:io';

import 'package:clone_netflix_ui/utils/assetsimages.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
            image: DecorationImage(
              image: AssetImage(AsstesImages.fondo),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: const Color.fromARGB(150, 0, 0, 0),
          body: Padding(
            padding: const EdgeInsets.all(45),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(
                  height: 70,
                ),
                Center(
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      color:  const Color.fromARGB(180, 22, 22, 22),
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                        scale: 18,
                        image: AssetImage(AsstesImages.logo),
                      )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide( width: 2, color: Colores.rojo),
                      borderRadius: BorderRadius.circular( 10)
                    ),
                    filled: true,
                    fillColor: Colores.claro,
                    hintText: 'UserName@mail.com',
                    hintStyle: TextStyle(
                      color: Colores.oscuro,
                      fontSize: 15.0,
                    ),
                    contentPadding: const EdgeInsets.all(17),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide( width: 2, color: Colores.rojo),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    filled: true,
                    fillColor: Colores.claro,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colores.oscuro,
                      fontSize: 15.0,
                    ),
                    contentPadding: const EdgeInsets.all(17),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  height: 60,
                  color: Colores.rojoDark,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('Sign in',style: TextStyle(
                    color: Colores.claro,
                    fontSize: 22,
                  )),
                  onPressed: () {},
                ),
                Row(
                  children: [
                    Checkbox(
                      side: BorderSide(
                        color: Colores.claro,
                      ),
                      checkColor: Colores.claro,
                      activeColor: Colores.rojoDark,
                      value: isChecked, 
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const Text(
                      'Remember me',
                      style: TextStyle(
                        color: Color.fromARGB(145, 255, 255, 255),
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,

                      ),
                    ),
                    const SizedBox(
                      width: 55,
                    ),
                    InkWell(
                      child: const Text(
                        'Forget your password?',
                        style: TextStyle(
                          color: Color.fromARGB(145, 255, 255, 255),
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onTap: () {
                        
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'New to Netflix',
                      style: TextStyle(
                        color: Color.fromARGB(145, 255, 255, 255),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: const Text(
                      'Sign up now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {

                    },
                    ),
                  ],
                )
              ],
            ),
            ),
        )
      ],
    );
  }
}