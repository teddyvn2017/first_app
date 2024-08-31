// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String imagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  const DoctorCard(
      {required this.imagePath,
      required this.rating,
      required this.doctorName,
      required this.doctorProfession});

  @override

  /// This method is a placeholder for the actual UI of a doctor's card in the
  /// doctor selection screen. It is expected to be overridden in a subclass to
  /// provide the actual UI for the card.
  ///
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Container(
            padding: EdgeInsets.all(25),
            constraints: BoxConstraints(
              minHeight: 0, // Không đặt chiều cao tối thiểu
              minWidth: 0, // Không đặt chiều rộng tối thiểu
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //picture of doctor
                ClipOval(
                  // borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    imagePath,
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Text(
                      rating,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 10),
                //doctor name
                Text(
                  doctorName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 5),
                //doctor title
                Text(doctorProfession),
              ],
            ),
          ),
        )
      ],
    );
  }
}
