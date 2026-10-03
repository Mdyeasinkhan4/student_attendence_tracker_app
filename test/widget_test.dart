import 'package:flutter_test/flutter_test.dart';
import 'package:student_attendence_tracker_app/main.dart';

void main() {
  testWidgets('Student attendance app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const StudentAttendanceApp());

    // Verify app title and initial sample students exist.
    expect(find.text('Student Attendance'), findsOneWidget);
    expect(find.text('Rahim'), findsOneWidget);
    expect(find.text('Karim'), findsOneWidget);
    expect(find.text('Nusrat'), findsOneWidget);
  });
}
