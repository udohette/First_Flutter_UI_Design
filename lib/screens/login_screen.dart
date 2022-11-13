import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_assignment/screens/register_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);



  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<bool> _onwillPop()async{
    return await showDialog(context: context, builder: (context)=> AlertDialog(
      title: Text('Are you  Sure?'),
      content: Text('Are you  sure you  want to  exit?'),
      actions: <Widget>[
        TextButton(onPressed: (){Navigator.of(context).pop(true);}, child: Text('Yes')),
        TextButton(onPressed: (){Navigator.of(context).pop(false);}, child: Text('No'))
      ],
    )) ??  false;
  }

   TextEditingController emailController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
    GlobalKey<FormState> _globalKey = GlobalKey();
 bool obscure = true;



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () { return _onwillPop(); },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          home:  Scaffold(
              body: SingleChildScrollView(
                child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width,
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
                    Text("Login", style: GoogleFonts.montserrat(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold)),
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
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Required"),
                        EmailValidator(errorText: 'Please enter a valid email address')
                      ]),
                      controller: emailController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
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
                  ),
                    SizedBox(height: MediaQuery.of(context).size.height/40,),
                    TextFormField(
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'Required'),
                        MinLengthValidator(6, errorText: "Password must contain at least 6 characters"),
                        MaxLengthValidator(8, errorText: 'Password must not be more than 8 characters'),
                        PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'Password must have at least one special character')
                      ]),
                      controller: passwordController,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          prefixIcon: IconButton(onPressed: (){
                            setState(() {
                              obscure = !obscure;
                            });
                          }, icon: Icon(Icons.visibility)),
                          hintText: 'Password',
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrangeAccent), borderRadius: BorderRadius.circular(30)),
                          focusColor: Colors.grey,
                          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.grey))
                      ),
                      ),
                    SizedBox(height: MediaQuery.of(context).size.height/40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      Text('Forgot Password?', style: GoogleFonts.montserrat(fontSize: 20.0, color: Colors.grey, fontWeight: FontWeight.bold),
                      )],),
                    SizedBox(height: MediaQuery.of(context).size.height/40,),
                    Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      child: Container(
                        height: 50,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.deepOrangeAccent,
                        ),
                        child: TextButton(
                            onPressed: (){
                              setState(() {
                               if (_globalKey.currentState!.validate()) {
                                 Fluttertoast.showToast(msg: 'Validation Successful');
                                 //please i can't use ScaffoldMessenger, comment out and run code to  see error on  console
                                 //ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.white,content: Text('Validation Not Successful',style: TextStyle(color: Colors.black,))));
                               } else {
                                 Fluttertoast.showToast(msg: 'Validation Not Successful');
                                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.white,content: Text('Validation Successful',style: TextStyle(color: Colors.black,))));
                               }
                              });
                            },
                            child: Text("Login", style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),)),
                      )
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('Don\'t have an Account?',style: GoogleFonts.montserrat(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),),
                      TextButton(

                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                          }, child: Text("Register", style: GoogleFonts.montserrat(fontSize: 20, color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold),)),
                    ],)
                ],),
            ),
          )
        ],
      ),
              )
          )
      ),
    );
  }
}
