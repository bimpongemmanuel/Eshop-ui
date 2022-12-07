import 'package:ecommerce_shop/buttomnavigation/navbar.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
   bool value = false;
  @override
  Widget build(BuildContext context) {   
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              const Text('Signup',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                const SizedBox(height: 20,),
              TextField(
                 cursorColor: Colors.grey,
                decoration: InputDecoration(
                  focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.orange),borderRadius: BorderRadius.circular(15)) ,
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Enter your email',     
                ),
              ),
              const SizedBox(height: 15,),
               TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  hintText: 'Enter your full name', 
                 focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.orange),borderRadius: BorderRadius.circular(15)) ,
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              TextField(
                 cursorColor: Colors.grey,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '.............',
                  focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.orange),borderRadius: BorderRadius.circular(15)) ,
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
               const SizedBox(height: 10,),

                Row(
                  children: [
                    Checkbox(
                      activeColor:const Color(0xE1E43C08) ,
                      value:value ,
                     onChanged: (bool? value){
                      setState(() {
                        this.value = value!;
                      });
                     }                   
                     ),

                     const Text('Agree to our'),

                       const SizedBox(width: 5,),

                     GestureDetector(child: const Text('Terms&Conditions',style: TextStyle(color: Colors.blue),)),

                  ],
                ),

                const SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor:const Color(0xE1E43C08) ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MyNav()));
                    },
                   child:  const Center(child:  Text('Register',style:  TextStyle(color: Colors.white,fontSize: 20),)),),
                ),
                 
                   const SizedBox(height: 30,),

                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Row(children: const [
                      Expanded(child:  Divider(color:Color(0xE1E43C08),thickness: 2 ,)),
                      SizedBox(width: 10,),
                      Text('OR',style: TextStyle(fontSize: 20)),
                       SizedBox(width: 10,),
                      Expanded(child: Divider(color:Color(0xE1E43C08),thickness: 2 ,))
                     ],),
                   ),
                     const SizedBox(height: 10,),
                   const Text('Sign up with',style:  TextStyle(color: Colors.blue,fontSize: 15),),
                    const SizedBox(height: 12,),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(backgroundColor:  Colors.white,backgroundImage: AssetImage('images/google.png'),),
                        SizedBox(width: 10,),
                        CircleAvatar(backgroundColor: Colors.white,backgroundImage: AssetImage('images/Facebook.png')),
                        SizedBox(width: 10,),
                        CircleAvatar(backgroundColor:  Colors.white,backgroundImage: AssetImage('images/apple.png')),
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}