import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';
import 'package:ukk_revisi/login.dart';
import 'package:date_field/date_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  DateTime? selectedDate;

  final List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
];
String? selectedValue;
bool showPassword = false;
int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
              gradient: LinearGradient(
                begin:Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color.fromARGB(255, 85, 179, 255),
                  Color.fromARGB(255, 103, 255, 204),
                ], ),
            ),
      width: MediaQuery.of(context).size.width,
            child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 70),
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin:Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color.fromARGB(255, 85, 179, 255),
                  Color.fromARGB(255, 103, 255, 204),
                ], ),
            ),
            child: Text(
              "OTO",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 45,
              ),
              ),
          ),
          Flexible(
            child: Container(
            padding: EdgeInsets.only(left: 30, right:30,),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(14),topRight: Radius.circular(14)),
            ),

            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 110),
                  height: 34,
                  width: 10,
                  child:  Text("Register",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  
                ),
                ),
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(left: 20,right: 20),
                  width: 312,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: const[
                      BoxShadow(
                    color: Colors.black54,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                    spreadRadius:0.1,
                    ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                  child: 
                  TextField(
                    decoration: InputDecoration(hintText: "Email",
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(height:16,),
                Container(
                  padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(left: 20,right: 20),
                  width: 312,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: const[
                      BoxShadow(
                    color: Colors.black54,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                    spreadRadius:0.1,
                    ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                  child: 
                  TextField(
                    decoration: InputDecoration(hintText: "username",
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(height:16,),
                Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                  width: 312,
                  height: 44,
                  decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255),
                   boxShadow: const[
                      BoxShadow(
                    color: Colors.black54,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                    spreadRadius:0.1,
                    ),
                    ],
                  borderRadius: BorderRadius.circular(10)),
                  child: buildTextField("Password",true),
                ),
                SizedBox(height: 20,),

                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.only(left: 5),
                  width: 310,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const[
                      BoxShadow(
                    color: Colors.black54,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                    spreadRadius:0.1,
                    ),
                    ],
                    borderRadius: BorderRadius.circular(5)),
                    child:DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Text(
                      'Select Item',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme
                                .of(context)
                                .hintColor,
                      ),
                    ),
                    items: items
                            .map((item) =>
                            DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                            .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: 140,
                    itemHeight: 40,
                  ),
                ),
              ),
              SizedBox(height: 70,),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(top:4,),
                height: 38,
                width: 314,
                decoration: BoxDecoration(color: Color.fromARGB(255, 252, 77, 77),borderRadius: BorderRadius.circular(3)),
                child: Text("Register",
                textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ),

              ],
              
            ),
            
          ),
          )
        ],
      ),
      ),
    );
  }
  Widget buildTextField(String placeholder, bool isPasswordTextField){
    return TextField(
      obscureText: isPasswordTextField ? showPassword : false,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide.none),
        suffixIcon: isPasswordTextField 
        ?
        IconButton(
          onPressed:()  {
            setState(() {
              showPassword = !showPassword;
            });
          },
           icon: Icon(
            Icons.remove_red_eye,
            color: Colors.grey,
           ),
           )
           : null,
           hintText: placeholder,
           contentPadding: EdgeInsets.all(8),
      ),
    );
  }        
}
