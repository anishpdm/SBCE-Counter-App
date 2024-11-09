import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddStudent extends StatelessWidget {
  AddStudent({super.key});

  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController college = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController course = TextEditingController();
  TextEditingController mob = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();

  Future<void> addStudent() async {
    final url = Uri.parse('https://logix-space-course-app-1.onrender.com/addstudents');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        "firstname": fname.text,
        "lastname": lname.text,
        "college": college.text,
        "dob": dob.text,
        "course": course.text,
        "mobile": mob.text,
        "email": email.text,
        "address": address.text,
      }),
    );

    if (response.statusCode == 200) {
      print("Student added successfully");
    } else {
      print("Failed to add student: ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: fname,
              decoration: InputDecoration(
                labelText: "First name",
                hintText: "Enter First name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: lname,
              decoration: InputDecoration(
                labelText: "Last name",
                hintText: "Enter Last name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: college,
              decoration: InputDecoration(
                labelText: "College",
                hintText: "Enter College name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: dob,
              decoration: InputDecoration(
                labelText: "Date of Birth",
                hintText: "Enter D.O.B",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: course,
              decoration: InputDecoration(
                labelText: "Course",
                hintText: "Enter Course details",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: mob,
              decoration: InputDecoration(
                labelText: "Mobile Number",
                hintText: "Enter Mobile number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: "Email Id",
                hintText: "Enter EmailId",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: address,
              decoration: InputDecoration(
                labelText: "Address",
                hintText: "Enter Address",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  backgroundColor: Colors.green,
                ),
                onPressed: () async {
                  await addStudent();
                },
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
