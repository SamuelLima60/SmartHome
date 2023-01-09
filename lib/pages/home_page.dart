import 'package:flutter/material.dart';
import 'package:smarthome/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List smartDevices = [
      // [ smartDeviceName, iconPath , powerStatus ]
      ["Smart Light", "assets/icons/light-bulb.png", true],
      ["Smart AC", "assets/icons/air-conditioner.png", false],
      ["Smart TV", "assets/icons/smart-tv.png", false],
      ["Smart Fan", "assets/icons/fan.png", false],
    ];

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App bar

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/icons/menu.png',
                      color: Colors.grey.shade700,
                      height: 40,
                    ),
                    Icon(
                      color: Colors.grey.shade700,
                      Icons.person,
                      size: 40,
                    ),
                  ],
                ),
              ),

              // Titulo

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Text('Welcome Home'),
              ),
              const Text(
                'Samuel Lima',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 20),

              const Divider(
                indent: 20,
                endIndent: 20,
              ),

              const SizedBox(height: 20),

              // Corpo

              const Text(
                'Smart Devices',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),

              const SizedBox(height: 10),

              // Cards

              Expanded(
                child: GridView.builder(
                  itemCount: smartDevices.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 1 / 1.5,
                  ),
                  itemBuilder: (ctx, index) {
                    return CardWidget(
                      index: index,
                      smartDevices: smartDevices,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
