import 'package:flutter/material.dart';

class Tablescreen extends StatefulWidget {
  const Tablescreen({Key? key}) : super(key: key);

  @override
  State<Tablescreen> createState() => _TablescreenState();
}

class _TablescreenState extends State<Tablescreen> {
  TextEditingController number = TextEditingController();
int? no;
var nokey=GlobalKey();
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
                TextFormField(keyboardType: TextInputType.number,
                  controller: number,validator: (value) {
                    if(value==null||value.isEmpty)
                      {
                        return "Enter the number";
                      }
                    return null;
                  },
                  decoration: InputDecoration(
                      suffixIcon: InkWell(onTap: () {
                        if(nokey.currentState!.)
                          {
                            setState(() {
                              int no=int.parse(number.text);
                            });
                          }
                      },child: Icon(Icons.search, color: Colors.black, size: 25)),
                      hintText: "Enter the number",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.grey.shade400, width: 2))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Center(
                    child: Container(
                      height: 500,
                      width: 250,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 2)),
                      child: Column(
                        children: [
                          Text("$no*")
                        ],
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
