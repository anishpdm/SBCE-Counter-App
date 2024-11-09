
import 'package:flutter/material.dart';

class AddStudent extends StatelessWidget {
   AddStudent({super.key});

  TextEditingController fname= TextEditingController();
  TextEditingController lname= TextEditingController();
  TextEditingController college= TextEditingController();
  TextEditingController dob= TextEditingController();
  TextEditingController course= TextEditingController();
  TextEditingController mob= TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController address= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: fname,
          decoration: InputDecoration(
            labelText: "First name",
            hintText: "Enter First name",
            border: OutlineInputBorder()
          ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: lname,
                decoration: InputDecoration(
                    labelText: "Last name",
                    hintText: "Enter Last name",
                    border: OutlineInputBorder()
                ),
              ),
      
              SizedBox(height: 15,),
              TextField(
                controller: college,
                decoration: InputDecoration(
                    labelText: "College",
                    hintText: "Enter College name",
                    border: OutlineInputBorder()
                ),
              ),
      
              SizedBox(height: 15,),
              TextField(
                controller: dob,
                decoration: InputDecoration(
                    labelText: "Date of Birth",
                    hintText: "Enter D.O.B",
                    border: OutlineInputBorder()
                ),
              ),
      
              SizedBox(height: 15,),
              TextField(
                controller: course,
                decoration: InputDecoration(
                    labelText: "Course",
                    hintText: "Enter Course details",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: mob,
                decoration: InputDecoration(
                    labelText: "Mobile Number",
                    hintText: "Enter Mobile number",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "Email Id",
                    hintText: "Enter EmailId",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: address,
                decoration: InputDecoration(
                    labelText: "Address",
                    hintText: "Enter Address",
                    border: OutlineInputBorder()
                ),
              ),
      
              SizedBox(height: 15,),
      SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero),
        backgroundColor: Colors.green,
      
      ),
        onPressed: (){
          print(fname.text);
          print(lname.text);
          print(college.text);
          print(dob.text);
          print(course.text);
          print(mob.text);
          print(email.text);
          print(address.text);

        }, child: Text("Submit",
      style: TextStyle(color: Colors.white,fontSize: 20.0),)),
      )
      
      
      
      
            ],
          ),
        ),
      ),
    );
  }
}
