import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({super.key});

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  final String profile = 'assets/images/account_circle.svg';
  final String Google = 'assets/images/Group 3511.svg';
  final String Password = 'assets/images/password.svg';
  final String Phone = 'assets/images/phone.svg';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              width: double.infinity,
              height: 550,
              color: Colors.amber,
              child: Column(
                children: [
                  SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
              ),
                  
            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: Text(
                        'Please Register to Login.',
                        style: TextStyle(color: Colors.white),
                      ),
            ),
                  
                  SizedBox(
                    height: 25,
                  ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                             label: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('Create Username'),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: SvgPicture.asset(
                                profile,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.black54, width: 2)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black38,
                                ))),
                      ),
          ),
              
                  SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.only(left: 20,right: 20),
                 child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                             label: Padding(
                               padding: const EdgeInsets.only(left: 8),
                               child: Text('Enter Phone Number'),
                             ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: SvgPicture.asset(
                                  Phone,
                                ),
                              ),
                            
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.black54, width: 2)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black38,
                                ))
                      ),
                    ),
               ),
                  SizedBox(
                    height: 10,
                  ),
                 Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              label: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text('Password'),
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                        
                                ),
                                child: SvgPicture.asset(
                                  
                                  Password,
                                  semanticsLabel: 'enter your password ',
                                 
                                  
                                ),
                              ),
                              focusColor: Colors.black45,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.black54, width: 2)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black38))),
                        ),
                      ),
                    ),
                  
             Padding(
               padding: const EdgeInsets.only(left: 250),
               child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.black),
                      ),
             ),
                
                 Padding(
                   padding: const EdgeInsets.only(top: 50),
                   child: Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: Center(
                            child: Text(
                          'Login',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                      ),
                 ),
           SizedBox(height: 40,),       
           Center(
                        child: Text(
                      'Or Login With',
                      style: TextStyle(color: Colors.black),
                    )),
                
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.amber),
              child: ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.amber)),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                  Google,
                 height: 40,
                 width: 40,
                    semanticsLabel: 'Continue With Google ',
                    
                  ),
                  label: Text(
                    'Continue With Google',
                    style: TextStyle(color: Colors.white),
                  ))),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text.rich(TextSpan(
                text: '''  Don't Have Account?  ''',
                children: [
                  TextSpan(
                      text: 'Sign In',
                      style: TextStyle(fontSize: 15, color: Colors.amber))
                ])),
          )
        ],
      ),
    ));

  }
}