import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_field/date_field.dart';
import 'package:ukk_revisi/navbar.dart';
import 'package:flutter/services.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
          
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 188, 251, 255),
          // leading: Container(
          
          //   child: Icon(Icons.menu, color: Colors.black,
              
          //   ),
          // ),
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
                child: Text('Riwayat',
                style: TextStyle(
                  color: Colors.black,
                ),
                ),
              ),
            ),
            Tab(
              child: Container(
                decoration: BoxDecoration(color: Colors.white,),
                child: Text('Baru',
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
                      Container(
                        margin: EdgeInsets.only(left: 22, right: 20,),
                        decoration: BoxDecoration(
                        color: Color.fromARGB(255, 180, 255, 249),
                        borderRadius: BorderRadius.circular(5),
                        ),
                        height: 130,
                        width: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 18),
                              padding: EdgeInsets.only(top: 8),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(0, 168, 82, 82),
                              ),
                              width: 330,
                              height: 30,
                              child: Text('Jumat, 23-10-2021',
                              style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 153, 153, 153),
                                    fontSize: 15,
                                    ),
                                ),
                              ),
                           ),
                           SizedBox(height: 5,),
                           Container(
                            margin: EdgeInsets.only(left: 18,),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(0, 5, 5, 5),
                              ),
                              child: Text('Dubai, Uni Emirat Arab',
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 15,
                                    ),
                                ),
                              ),
                           ),
                           SizedBox(height: 5,),
                           Container( 
                            margin: EdgeInsets.only(left: 18,),
                            decoration: BoxDecoration(color: Color.fromARGB(0, 5, 5, 5),),
                            child: 
                            Row(
                              children: [
                                Text('Suhu tubuh:',
                                    style: GoogleFonts.secularOne(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 15,
                                        ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text('39.9',
                                    style: GoogleFonts.secularOne(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 153, 153, 153),
                                        fontSize: 15,
                                        ),
                                    ),
                                  ),
                              ],
                            ),
                           ),
                          SizedBox(height: 2,),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(color:Color.fromARGB(0, 160, 89, 89),),
                            child: 
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5,),
                                  margin: EdgeInsets.only(left: 8,),
                                  width: 170,
                                  height: 30,
                                  color: Color.fromARGB(0, 33, 149, 243),
                                  child: Text('Ubah',
                                  textAlign: TextAlign.center,
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 17, 179, 2),
                                    fontSize: 17,
                                    ),
                                ),
                              ),
                                ),
                                SizedBox(width: 1,),
                                Container(
                                  padding: EdgeInsets.only(top: 5,),
                                  width: 165,
                                  height: 30,
                                  color: Color.fromARGB(0, 33, 149, 243),
                                  child: Text('Hapus',
                                  textAlign: TextAlign.center,
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 199, 3, 3),
                                    fontSize: 17,
                                    
                                    ),
                                ),
                              ),
                                ),
                              ],
                            ),
                          ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        margin: EdgeInsets.only(left: 22, right: 20,),
                        decoration: BoxDecoration(
                        color: Color.fromARGB(255, 180, 255, 249),
                        borderRadius: BorderRadius.circular(5),
                        ),
                        height: 130,
                        width: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 18),
                              padding: EdgeInsets.only(top: 8),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(0, 168, 82, 82),
                              ),
                              width: 330,
                              height: 30,
                              child: Text('Jumat, 23-10-2021',
                              style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 153, 153, 153),
                                    fontSize: 15,
                                    ),
                                ),
                              ),
                           ),
                           SizedBox(height: 5,),
                           Container(
                            margin: EdgeInsets.only(left: 18,),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(0, 5, 5, 5),
                              ),
                              child: Text('Dubai, Uni Emirat Arab',
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 15,
                                    ),
                                ),
                              ),
                           ),
                           SizedBox(height: 5,),
                           Container( 
                            margin: EdgeInsets.only(left: 18,),
                            decoration: BoxDecoration(color: Color.fromARGB(0, 5, 5, 5),),
                            child: 
                            Row(
                              children: [
                                Text('Suhu tubuh:',
                                    style: GoogleFonts.secularOne(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 15,
                                        ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text('39.9',
                                    style: GoogleFonts.secularOne(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 153, 153, 153),
                                        fontSize: 15,
                                        ),
                                    ),
                                  ),
                              ],
                            ),
                           ),
                          SizedBox(height: 2,),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(color:Color.fromARGB(0, 160, 89, 89),),
                            child: 
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5,),
                                  margin: EdgeInsets.only(left: 8,),
                                  width: 170,
                                  height: 30,
                                  color: Color.fromARGB(0, 33, 149, 243),
                                  child: Text('Ubah',
                                  textAlign: TextAlign.center,
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 17, 179, 2),
                                    fontSize: 17,
                                    ),
                                ),
                              ),
                                ),
                                SizedBox(width: 1,),
                                Container(
                                  padding: EdgeInsets.only(top: 5,),
                                  width: 165,
                                  height: 30,
                                  color: Color.fromARGB(0, 33, 149, 243),
                                  child: Text('Hapus',
                                  textAlign: TextAlign.center,
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 199, 3, 3),
                                    fontSize: 17,
                                    
                                    ),
                                ),
                              ),
                                ),
                              ],
                            ),
                          ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        margin: EdgeInsets.only(left: 22, right: 20,),
                        decoration: BoxDecoration(
                        color: Color.fromARGB(255, 180, 255, 249),
                        borderRadius: BorderRadius.circular(5),
                        ),
                        height: 130,
                        width: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 18),
                              padding: EdgeInsets.only(top: 8),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(0, 168, 82, 82),
                              ),
                              width: 330,
                              height: 30,
                              child: Text('Jumat, 23-10-2021',
                              style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 153, 153, 153),
                                    fontSize: 15,
                                    ),
                                ),
                              ),
                           ),
                           SizedBox(height: 5,),
                           Container(
                            margin: EdgeInsets.only(left: 18,),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(0, 5, 5, 5),
                              ),
                              child: Text('Dubai, Uni Emirat Arab',
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 15,
                                    ),
                                ),
                              ),
                           ),
                           SizedBox(height: 5,),
                           Container( 
                            margin: EdgeInsets.only(left: 18,),
                            decoration: BoxDecoration(color: Color.fromARGB(0, 5, 5, 5),),
                            child: 
                            Row(
                              children: [
                                Text('Suhu tubuh:',
                                    style: GoogleFonts.secularOne(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 15,
                                        ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text('39.9',
                                    style: GoogleFonts.secularOne(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 153, 153, 153),
                                        fontSize: 15,
                                        ),
                                    ),
                                  ),
                              ],
                            ),
                           ),
                          SizedBox(height: 2,),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(color:Color.fromARGB(0, 160, 89, 89),),
                            child: 
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5,),
                                  margin: EdgeInsets.only(left: 8,),
                                  width: 170,
                                  height: 30,
                                  color: Color.fromARGB(0, 33, 149, 243),
                                  child: Text('Ubah',
                                  textAlign: TextAlign.center,
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 17, 179, 2),
                                    fontSize: 17,
                                    ),
                                ),
                              ),
                                ),
                                SizedBox(width: 1,),
                                Container(
                                  padding: EdgeInsets.only(top: 5,),
                                  width: 165,
                                  height: 30,
                                  color: Color.fromARGB(0, 33, 149, 243),
                                  child: Text('Hapus',
                                  textAlign: TextAlign.center,
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 199, 3, 3),
                                    fontSize: 17,
                                    ),
                                ),
                              ),
                                ),
                              ],
                            ),
                          ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        margin: EdgeInsets.only(left: 22, right: 20,),
                        decoration: BoxDecoration(
                        color: Color.fromARGB(255, 180, 255, 249),
                        borderRadius: BorderRadius.circular(5),
                        ),
                        height: 130,
                        width: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 18),
                              padding: EdgeInsets.only(top: 8),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(0, 168, 82, 82),
                              ),
                              width: 330,
                              height: 30,
                              child: Text('Jumat, 23-10-2021',
                              style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 153, 153, 153),
                                    fontSize: 15,
                                    ),
                                ),
                              ),
                           ),
                           SizedBox(height: 5,),
                           Container(
                            margin: EdgeInsets.only(left: 18,),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(0, 5, 5, 5),
                              ),
                              child: Text('Dubai, Uni Emirat Arab',
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 15,
                                    ),
                                ),
                              ),
                           ),
                           SizedBox(height: 5,),
                           Container( 
                            margin: EdgeInsets.only(left: 18,),
                            decoration: BoxDecoration(color: Color.fromARGB(0, 5, 5, 5),),
                            child: 
                            Row(
                              children: [
                                Text('Suhu tubuh:',
                                    style: GoogleFonts.secularOne(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 15,
                                        ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text('39.9',
                                    style: GoogleFonts.secularOne(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 153, 153, 153),
                                        fontSize: 15,
                                        ),
                                    ),
                                  ),
                              ],
                            ),
                           ),
                          SizedBox(height: 2,),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(color:Color.fromARGB(0, 160, 89, 89),),
                            child: 
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5,),
                                  margin: EdgeInsets.only(left: 8,),
                                  width: 170,
                                  height: 30,
                                  color: Color.fromARGB(0, 33, 149, 243),
                                  child: Text('Ubah',
                                  textAlign: TextAlign.center,
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 17, 179, 2),
                                    fontSize: 17,
                                    ),
                                ),
                              ),
                                ),
                                SizedBox(width: 1,),
                                Container(
                                  padding: EdgeInsets.only(top: 5,),
                                  width: 165,
                                  height: 30,
                                  color: Color.fromARGB(0, 33, 149, 243),
                                  child: Text('Hapus',
                                  textAlign: TextAlign.center,
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 199, 3, 3),
                                    fontSize: 17,
                                    
                                    ),
                                ),
                              ),
                                ),
                              ],
                            ),
                          ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        margin: EdgeInsets.only(left: 22, right: 20,),
                        decoration: BoxDecoration(
                        color: Color.fromARGB(255, 180, 255, 249),
                        borderRadius: BorderRadius.circular(5),
                        ),
                        height: 130,
                        width: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 18),
                              padding: EdgeInsets.only(top: 8),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(0, 168, 82, 82),
                              ),
                              width: 330,
                              height: 30,
                              child: Text('Jumat, 23-10-2021',
                              style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 153, 153, 153),
                                    fontSize: 15,
                                    ),
                                ),
                              ),
                           ),
                           SizedBox(height: 5,),
                           Container(
                            margin: EdgeInsets.only(left: 18,),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(0, 5, 5, 5),
                              ),
                              child: Text('Dubai, Uni Emirat Arab',
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 15,
                                    ),
                                ),
                              ),
                           ),
                           SizedBox(height: 5,),
                           Container( 
                            margin: EdgeInsets.only(left: 18,),
                            decoration: BoxDecoration(color: Color.fromARGB(0, 5, 5, 5),),
                            child: 
                            Row(
                              children: [
                                Text('Suhu tubuh:',
                                    style: GoogleFonts.secularOne(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 15,
                                        ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text('39.9',
                                    style: GoogleFonts.secularOne(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 153, 153, 153),
                                        fontSize: 15,
                                        ),
                                    ),
                                  ),
                              ],
                            ),
                           ),
                          SizedBox(height: 2,),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(color:Color.fromARGB(0, 160, 89, 89),),
                            child: 
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5,),
                                  margin: EdgeInsets.only(left: 8,),
                                  width: 170,
                                  height: 30,
                                  color: Color.fromARGB(0, 33, 149, 243),
                                  child: Text('Ubah',
                                  textAlign: TextAlign.center,
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 17, 179, 2),
                                    fontSize: 17,
                                    ),
                                ),
                              ),
                                ),
                                SizedBox(width: 1,),
                                Container(
                                  padding: EdgeInsets.only(top: 5,),
                                  width: 165,
                                  height: 30,
                                  color: Color.fromARGB(0, 33, 149, 243),
                                  child: Text('Hapus',
                                  textAlign: TextAlign.center,
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 199, 3, 3),
                                    fontSize: 17,
                                    
                                    ),
                                ),
                              ),
                                ),
                              ],
                            ),
                          ),
                          ],
                        ),
                      ),
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