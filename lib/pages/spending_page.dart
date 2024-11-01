// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SpendingReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/Login-Setup – 1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay Content
          Column(
            children: [
              SizedBox(height: 50), // Adjust for spacing
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Spending Report',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.notifications, color: Colors.white),
                    SizedBox(width: 16),
                    Icon(Icons.more_vert, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 30),
              // Bar Chart Container
              Center(
                child: Container(
                  height: 450,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.all(16),
                  child: BarChart(
                    BarChartData(
                      maxY: 400,
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: false,
                        drawHorizontalLine: true,
                      ),
                      borderData: FlBorderData(show: false),
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 100,
                            reservedSize: 40,
                            getTitlesWidget: (value, meta) {
                              return Text(
                                '\$${value.toInt()}',
                                style: TextStyle(color: Colors.black),
                              );
                            },
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              const days = [
                                'M',
                                'T',
                                'W',
                                'Th',
                                'F',
                                'Sa',
                                'Su'
                              ];
                              return Text(
                                days[value.toInt() % days.length],
                                style: TextStyle(color: Colors.black),
                              );
                            },
                          ),
                        ),
                      ),
                      barGroups: [
                        BarChartGroupData(
                          x: 0,
                          barRods: [
                            BarChartRodData(toY: 250, color: Colors.lightBlue)
                          ],
                        ),
                        BarChartGroupData(
                          x: 1,
                          barRods: [
                            BarChartRodData(toY: 200, color: Colors.lightBlue)
                          ],
                        ),
                        BarChartGroupData(
                          x: 2,
                          barRods: [
                            BarChartRodData(toY: 280, color: Colors.lightBlue)
                          ],
                        ),
                        BarChartGroupData(
                          x: 3,
                          barRods: [
                            BarChartRodData(toY: 220, color: Colors.lightBlue)
                          ],
                        ),
                        BarChartGroupData(
                          x: 4,
                          barRods: [
                            BarChartRodData(toY: 300, color: Colors.lightBlue)
                          ],
                        ),
                        BarChartGroupData(
                          x: 5,
                          barRods: [
                            BarChartRodData(toY: 180, color: Colors.lightBlue)
                          ],
                        ),
                        BarChartGroupData(
                          x: 6,
                          barRods: [
                            BarChartRodData(toY: 350, color: Colors.lightBlue)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 8, color: Colors.grey),
                  SizedBox(width: 8),
                  Icon(Icons.circle, size: 8, color: Colors.grey.shade300),
                  SizedBox(width: 8),
                  Icon(Icons.circle, size: 8, color: Colors.grey.shade300),
                ],
              ),
              SizedBox(height: 20),
              // Placeholder for additional content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Accounts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart, color: Colors.black),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code, color: Colors.black),
            label: 'Stocks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black),
            label: 'Settings',
          ),
        ],
        currentIndex: 1, // Set the current selected index to 'Reports'
        selectedItemColor: Colors.blue, // Change this to your preferred color
        unselectedItemColor:
            Colors.black, // Change this to your preferred color
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
