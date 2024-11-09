import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ViewAllStudents extends StatefulWidget {
  const ViewAllStudents({super.key});

  @override
  State<ViewAllStudents> createState() => _ViewAllStudentsState();
}

class _ViewAllStudentsState extends State<ViewAllStudents> {
  List<Map<String, dynamic>> students = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchStudents();
  }

  Future<void> fetchStudents() async {
    final url = Uri.parse('https://logix-space-course-app-1.onrender.com/getdata');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List data = json.decode(response.body);
        setState(() {
          students = List<Map<String, dynamic>>.from(data);
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load students');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
      itemCount: students.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          child: ListTile(
            title: Text(students[index]["firstname"]),
            subtitle: Text(
              "${students[index]["email"]}\n${students[index]["mobile"]}",
            ),
          ),
        );
      },
    );
  }
}
