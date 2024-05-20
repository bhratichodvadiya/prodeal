
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
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
                        'Login',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
              ),
                  
            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: Text(
                        'Please Sign in to Continue.',
                        style: TextStyle(color: Colors.white),
                      ),
            ),
                  
                  SizedBox(
                    height: 36,
                  ),
    
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
                    height: 20,
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
                SizedBox(height: 5,),
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
           SizedBox(height: 90,),       
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
                  
                    semanticsLabel: 'Google ',
                     height: 40,
                 width: 40,
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
