import 'package:emergency/screens/login.dart';
import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text("sQuip",style: TextStyle(
                    color: Color(0xff0E7282),
                    fontSize: 60,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.75
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 30),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Getting Started",style: TextStyle(
                    fontWeight:FontWeight.bold ,
                    fontSize: 30,
                  ),),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20,left: 30),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Create an account to continue!",style: TextStyle(
                      fontWeight:FontWeight.bold ,
                      fontSize: 18,
                      color: Colors.black54
                  ),),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 45,left: 30),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Email",style: TextStyle(
                      fontWeight:FontWeight.bold ,
                      fontSize: 18,
                      color: Colors.black54
                  ),),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.85,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      hintText: 'E-mail',
                      prefixIcon: Icon(Icons.email,color: Colors.black,size: 30,),
                      prefixIconColor: Colors.black,
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 45,left: 30),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Username",style: TextStyle(
                      fontWeight:FontWeight.bold ,
                      fontSize: 18,
                      color: Colors.black54
                  ),),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.85,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      hintText: 'User Name',
                      prefixIcon: Icon(Icons.man,color: Colors.black,size: 30,),
                      prefixIconColor: Colors.black,
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40,left: 30),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Password",style: TextStyle(
                      fontWeight:FontWeight.bold ,
                      fontSize: 18,
                      color: Colors.black54
                  ),),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.85,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline,color: Colors.black,size: 30,),
                      prefixIconColor: Colors.black,
                      suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,size:30),
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30,top: 20),
                child: Row(
                  children: [
                    Icon(Icons.check_box_outline_blank_sharp),
                    Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("By creating an account, you agree to our",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text("Term & Conditions",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),),
                          )
                        ],
                      ),
                    ),
                  ],

                ),
              ),

              GestureDetector(
                onTap:(){setState(() {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Signin()));
                });}  ,
                child: Padding(
                  padding: EdgeInsets.only(top: 55),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.85,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Color(0xff0E7282),
                        borderRadius: BorderRadius.circular(10)
                    ),

                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("SIGN UP",style: TextStyle(
                              fontSize: 20,
                              color:Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                        Icon(Icons.arrow_forward_sharp,size: 35,color: Colors.white)
                      ],
                    ),


                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: TextStyle(
                        fontWeight:FontWeight.w400 ,
                        fontSize: 18,
                        color: Colors.black54
                    ),),
                    GestureDetector(
                      onTap:(){setState(() {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>Signin()));
                      });}  ,
                      child: Text(" Sign In",style: TextStyle(
                          fontWeight:FontWeight.bold ,
                          fontSize: 18,
                          color: Colors.black
                      ),),
                    ),
                  ],
                ),
              ),
              GestureDetector(

                child: Padding(
                  padding: EdgeInsets.only(top: 40,bottom: 40),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.85,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Color(0xff3C79E6),
                        borderRadius: BorderRadius.circular(10)
                    ),

                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Icon(Icons.facebook,size: 35,color: Colors.white,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Connect with Facebook",style: TextStyle(
                              fontSize: 20,
                              color:Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                        ),

                      ],
                    ),


                  ),
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
