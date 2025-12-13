// import 'package:flutter/material.dart';

// extension ContextX on BuildContext {
//   Color get primaryColor => Theme.of(this).colorScheme.primary;
//   Color get secondaryColor => Theme.of(this).colorScheme.secondary;

//   TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;
//   TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;
// }

// // Direct access to theme colors and text styles
// // — no more Theme.of(context) clutter.
// Text(
//   'Hello Flutter!',
//   style: context.titleLarge.copyWith(
//     color: context.primaryColor,
//   ),
// ),


// extension ExtensionName on Type {
//   // your methods or getters
// }

// extension StringExtensions on String {
//   String get capitalizeFirst {
//     if (isEmpty) return this;
//     return this[0].toUpperCase() + substring(1);
//   }

//   bool get isEmail => contains('@') && contains('.');
// }

// void main() {
//   print('hello'.capitalizeFirst); // Hello
//   print('test@gmail.com'.isEmail); // true
// }

// extension DateTimeExtensions on DateTime {
//   String get formatted => 
//   "${day.toString().padLeft(2, '0')}-${month.toString().padLeft(2, '0')}-${year}";
  
//   bool isSameDay(DateTime other) =>
//       year == other.year && month == other.month && day == other.day;
// }

// enum HabitStatus { done, pending }

// extension HabitStatusExtension on HabitStatus {
//   String get label {
//     switch (this) {
//       case HabitStatus.done:
//         return 'Done';
//       case HabitStatus.pending:
//         return 'Pending';
//     }
//   }
// }

// print(HabitStatus.done.label); // Done