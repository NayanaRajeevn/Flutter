
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Login.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
        child: AppBar(
          backgroundColor: Color(0xFF39EFE5),
          automaticallyImplyLeading: false,
          title: const Align(
            alignment: AlignmentDirectional(0, -0.3),
            child: Text(
              'FANCODE',
              style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF0C0C0C),
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.04, -0.68),
                child: Image.asset(
                  'assets/images/sport-2588906-2160920.webp',
                  width: 170,
                  height: 170,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.05, 0.8),
                child: ElevatedButton(onPressed: () async{
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const Login())));
                  
                }, child: const Text("Login"),)
              ),
             
              Align(
                alignment: AlignmentDirectional(0.09, 0.67),
                child: Text(
                  'Do you already have an account?',
                  style: TextStyle()
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.08, -0.03),
                child: Text(
                  'SIGN UP WITH',
                  style:TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                ),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}
