import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_field/date_field.dart';
import 'package:ukk_revisi/navbar.dart';
import 'package:flutter/services.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
  }
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Color.fromARGB(0, 78, 2, 2),
    // ));
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        drawer:  NavBar(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 188, 251, 255),
          title: Row(
              children: [
                Container(
            padding: EdgeInsets.only(left: 60),
            child: Text('Enjoy.',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 3,),
            Container(
              child: Text('ID',
                style: TextStyle(
                  color: Color.fromARGB(255, 226, 147, 0),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
              ],
          ),
          bottom: TabBar(tabs: [
            Tab(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),),
                child: Text('Permintaan',
                style: TextStyle(
                  color: Colors.black,
                ),
                ),
              ),
            ),
            Tab(
              child: Container(
                decoration: BoxDecoration(color: Color.fromARGB(0, 255, 255, 255),),
                child: Text('Riwayat',
                style: TextStyle(
                  color: Colors.black,
                ),
                ),
              ),
            ),
          ]), 
        ),
        body: TabBarView(children: [
          buildp1(),
          buildp2()
        ],)
      ),
    );
  }
  Widget buildp1(){
    return Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 12,),
              Container(
                padding: EdgeInsets.only(left: 12,right: 12, top: 18),
                width: 350,
                height: 40,
                decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const[
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                      spreadRadius: 0.1,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(hintText: "Urutkan Tanggal",
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                ),
              ),
              SizedBox(height: 12,),
              Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: ListView(
                    children: [

                    ],
                  ),
                  ),
              ),
            ],
          ),
        );
  }
  Widget buildp2(){
    return Container(
      padding: EdgeInsets.only(top: 35,),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 12, right: 12,),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                    DateTimeFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.black45),
                    errorStyle: TextStyle(color: Colors.redAccent),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.event_note),
                    labelText: 'Masukkan Tanggal',
                  ),
                  firstDate: DateTime.now().add(const Duration(days: 10)),
                  lastDate: DateTime.now().add(const Duration(days: 40)),
                  initialDate: DateTime.now().add(const Duration(days: 20)),
                  autovalidateMode: AutovalidateMode.always,
                  validator: (DateTime? e) =>
                      (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                  onDateSelected: (DateTime value) {
                    print(value);
                  },
                ),
                  ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(top: 15,),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Color.fromARGB(255, 131, 131, 131))
            ),
            width: 370,
            height: 45,
            child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(hintText: "Dari Manakah Anda ?",
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(top: 15,),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Color.fromARGB(255, 131, 131, 131))
            ),
            width: 370,
            height: 45,
            child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(hintText: "Suhu Tubuh",
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            padding: EdgeInsets.only(top: 7,),
            margin: EdgeInsets.only(left: 210,),
            width: 160,
            height: 40,
            decoration: BoxDecoration(
              color: Color.fromARGB(0, 182, 88, 88),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Color.fromARGB(255, 131, 131, 131),),
            ),
            child: Text('Simpan',
            textAlign: TextAlign.center,
              style: GoogleFonts.secularOne(
                textStyle: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 17,),
            ),
          ),
          ),
        ],
      ),
    );
  }
}