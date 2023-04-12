import 'package:flutter/material.dart';

class Tablescreen extends StatefulWidget {
  const Tablescreen({Key? key}) : super(key: key);

  @override
  State<Tablescreen> createState() => _TablescreenState();
}

class _TablescreenState extends State<Tablescreen> {
  TextEditingController number = TextEditingController();
  int no = 1;
  var nokey = GlobalKey();
List<int> numberlist=[1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Table",
            style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w500)),
      ),
      body: Form(
        key: nokey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                TextFormField(keyboardType: TextInputType.number,textInputAction: TextInputAction.send,
                  controller: number, validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter the number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      suffixIcon: InkWell(onTap: () {
                            setState(() {
                              print("${number.text}*1=${int.parse(number.text)*1}");
                            });
                      },
                          child: Icon(
                              Icons.search, color: Colors.black, size: 25)),
                      hintText: "Enter the number",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          BorderSide(color: Colors.grey.shade400, width: 2))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("${number.text} * 1 = ${int.parse(number.text)*1}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                           Text("${number.text} * 2 = ${int.parse(number.text)*2}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                           Text("${number.text} * 3 = ${int.parse(number.text)*3}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                           Text("${number.text} * 4 = ${int.parse(number.text)*4}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                           Text("${number.text} * 5 = ${int.parse(number.text)*5}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                           Text("${number.text} * 6 = ${int.parse(number.text)*6}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                           Text("${number.text} * 7 = ${int.parse(number.text)*7}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                           Text("${number.text} * 8 = ${int.parse(number.text)*8}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                           Text("${number.text} * 9 = ${int.parse(number.text)*9}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                           Text("${number.text} * 10 = ${int.parse(number.text)*10}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                         ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
