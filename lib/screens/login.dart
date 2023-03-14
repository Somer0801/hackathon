import 'package:emergency/screens/signup.dart';
import 'package:flutter/material.dart';


class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
                  child: Text("Let’s Sign You In",style: TextStyle(
                    fontWeight:FontWeight.bold ,
                    fontSize: 30,
                  ),),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20,left: 30),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Welcome back, you’ve been missed!",style: TextStyle(
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
                  child: Text("Username or Email",style: TextStyle(
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

              GestureDetector(
                onTap:(){setState(() {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Signin()));
                });}  ,
                child: Padding(
                  padding: EdgeInsets.only(top: 85),
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
                        Text("SIGN IN",style: TextStyle(
                            fontSize: 20,
                            color:Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
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
                    Text("Don't have an account?",style: TextStyle(
                        fontWeight:FontWeight.w400 ,
                        fontSize: 18,
                        color: Colors.black54
                    ),),
                    GestureDetector(
                      onTap:(){setState(() {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>Signup()));
                      });}  ,
                      child: Text(" Sign up",style: TextStyle(
                          fontWeight:FontWeight.bold ,
                          fontSize: 18,
                          color: Colors.black
                      ),),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap:(){setState(() {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Signin()));
                });}  ,
                child: Padding(
                  padding: EdgeInsets.only(top: 40),
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
                        Icon(Icons.facebook,size: 35,color: Colors.white,),
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
