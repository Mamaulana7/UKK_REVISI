import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 24, 224, 214),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(0, 244, 67, 54),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            child: Icon(Icons.arrow_back,),
          ),
        ),
        title: 
        Container(
          padding: EdgeInsets.only(left: 70),
          child: Text('Profil Saya',
            style: TextStyle(
              fontSize: 23,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 35,top: 40),
        children: [
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text('Username',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 4,),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(color: Colors.amber,
                boxShadow: const[
                        BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                      spreadRadius:0.1,
                      ),
                      ],
                      borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 5,left: 10),
                    border: OutlineInputBorder(borderSide: BorderSide.none,),
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Container(
              ),
            ],
          ),
        ],
      ),
    );
  }
}
