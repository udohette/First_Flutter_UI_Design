import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_assignment/screens/login_screen.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _globalKey = GlobalKey();
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 400,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(100)),
                          color: Colors.deepOrangeAccent,
                        ),
                        child:Center(child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.white, width: 6.0)
                          ),
                          child:  Container(
                            margin: EdgeInsets.all(30.0),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/logo2.jpg')),
                              //color: Colors.white
                            ),
                          ),
                        ),
                        ),
                      ),
                      Positioned(
                          top: 320,
                          right: 50,
                          child:
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Register", style: GoogleFonts.montserrat(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold)),
                            ],))
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height /20,),
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Form(
                            key: _globalKey,
                            child: TextFormField(
                              controller: fullNameController,
                              validator: (value) {
                                if (value.toString().isEmpty) {
                                  return "Required";
                                } else {
                                }
                              },
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person, color: Colors.grey,),
                                  hintText: 'Full Name',
                                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrangeAccent), borderRadius: BorderRadius.circular(30)),
                                  focusColor: Colors.grey,
                                  errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.grey))
                              ),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/40,),
                          TextFormField(
                            controller: emailController,
                            validator: MultiValidator([RequiredValidator(errorText: 'Required'), EmailValidator(errorText: 'Enter a valid email address')
                            ]) ,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email, color: Colors.grey,),
                                hintText: 'Email',
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrangeAccent), borderRadius: BorderRadius.circular(30)),
                                focusColor: Colors.grey,
                                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.grey))
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/40,),
                          TextFormField(
                            controller: phoneNumberController,
                            validator: MultiValidator([RequiredValidator(errorText: 'Required')]),
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.phone, color: Colors.grey,),
                                hintText: 'Phone Number',
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrangeAccent), borderRadius: BorderRadius.circular(30)),
                                focusColor: Colors.grey,
                                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.grey))
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/40,),
                          TextFormField(
                            validator: MultiValidator([RequiredValidator(errorText: 'Required'),
                              MaxLengthValidator(8, errorText: 'Max Password Required is 8'), MinLengthValidator(4, errorText: 'Min Password require is 4 Characters')]),
                            textInputAction: TextInputAction.done,
                            controller: passwordController,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.key, color: Colors.grey,),
                                hintText: 'Password',
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrangeAccent), borderRadius: BorderRadius.circular(30)),
                                focusColor: Colors.grey,
                                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.grey))
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/40,),
                          Container(
                            height: 50,
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.deepOrangeAccent,
                            ),
                            child: TextButton(
                                onPressed: (){
                                  if (_globalKey.currentState!.validate()) {
                                    Fluttertoast.showToast(msg: 'Validation Successful');
                                  } else {
                                    Fluttertoast.showToast(msg: 'Validation not  Successful');
                                  }
                                }, child: Text("Register", style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Already have an Account?',style: GoogleFonts.montserrat(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),),
                              TextButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                                  }, child: Text("Login", style: GoogleFonts.montserrat(fontSize: 20, color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold),)),
                            ],)
                        ],),
                    ),
                  )
                ],
              ),
            )));
  }
}
