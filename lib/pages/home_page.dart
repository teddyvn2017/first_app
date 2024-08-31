// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:first_app/util/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:first_app/util/category_cart.dart';
import 'package:first_app/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello,",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      SizedBox(height: 8),
                      Text("Mitch Koko", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.person))
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: Colors.pink[100]),
                  child: Row(
                    children: [
                      // animation or cute picture
                      Container(
                          height: 100,
                          width: 100,
                          color: Colors.deepPurple[200]),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'How do you feel?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Fill out your medical card right now',
                              style: TextStyle(fontSize: 14.0),
                            ),
                            SizedBox(height: 8),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                  child: Text(
                                'Get started',
                                style: TextStyle(color: Colors.white),
                              )),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            SizedBox(height: 25),
            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you today?',
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const CategoryCard(
                    categoryName: 'Dentist',
                    iconPath: 'lib/icons/tooth.png',
                  ),
                  const CategoryCard(
                    categoryName: 'Surgeon',
                    iconPath: 'lib/icons/surgeon.png',
                  ),
                  const CategoryCard(
                    categoryName: 'Pharmacist',
                    iconPath: 'lib/icons/pharmacist.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Doctors list',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text('See all',
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 25),

            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(
                  imagePath: 'lib/images/doctor1.jpg',
                  doctorName: 'Dr. John Doe',
                  doctorProfession: 'Dentist',
                  rating: '4.9',
                ),
                DoctorCard(
                  imagePath: 'lib/images/doctor2.jpg',
                  doctorName: 'Dr. Sarah',
                  doctorProfession: 'Dentist',
                  rating: '4.9',
                ),
                DoctorCard(
                  imagePath: 'lib/images/doctor3.jpg',
                  doctorName: 'Dr. Maria',
                  doctorProfession: 'Dentist',
                  rating: '4.9',
                )
              ],
            ))
          ]),
        ));
  }
}
