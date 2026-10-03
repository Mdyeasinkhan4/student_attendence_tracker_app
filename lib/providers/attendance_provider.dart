import 'package:flutter/foundation.dart';
import '../models/student.dart';

class AttendanceProvider extends ChangeNotifier {
  final List<Student> _students = [
    Student(name: 'Rahim'),
    Student(name: 'Karim'),
    Student(name: 'Nusrat'),
  ];

  List<Student> get students => List.unmodifiable(_students);

  int get totalStudents => _students.length;

  int get presentStudents => _students.where((s) => s.isPresent).length;

  int get absentStudents => _students.where((s) => !s.isPresent).length;

  void addStudent(String name) {
    if (name.trim().isEmpty) return;
    _students.add(Student(name: name.trim(), isPresent: false));
    notifyListeners();
  }

  void removeStudent(int index) {
    if (index >= 0 && index < _students.length) {
      _students.removeAt(index);
      notifyListeners();
    }
  }

  void updateAttendance(int index, bool isPresent) {
    if (index >= 0 && index < _students.length) {
      _students[index].isPresent = isPresent;
      notifyListeners();
    }
  }
}
