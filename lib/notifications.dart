import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> icontext = [
      "Mobile data",
      "Bluetooth",
      "Split Screen",
      "Auto-rotate",
      "Scan",
      "Battery Saver",
      "Silent",
      "Location",
      "Airplane",
      "Record System",
      "Hotspot",
      "Vibration",
    ];
    List<IconData> shorticons = [
      Icons.mobiledata_off,
      Icons.bluetooth,
      Icons.splitscreen,
      Icons.screen_rotation,
      Icons.qr_code_scanner,
      Icons.battery_saver,
      Icons.notifications_off_outlined,
      Icons.location_on,
      Icons.airplanemode_active,
      Icons.record_voice_over,
      Icons.wifi_tethering,
      Icons.vibration,
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "12:00",
                  style: TextStyle(
                    color: Color(0xFF3E3939),
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(
                  Icons.edit,
                  color: Color(0xFF3E3939),
                  size: 25,
                ),
              ],
            ),
            const Text(
              "Wed 28 Aug",
              style: TextStyle(
                  color: Color(0xFF3E3939),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bigContainer(
                  mainicon: Icons.wifi,
                  arrowicon: true,
                ),
                bigContainer(
                  mainicon: Icons.lightbulb,
                  arrowicon: false,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Wrap(
                spacing: 20,
                runSpacing: 15,
                alignment: WrapAlignment.spaceBetween,
                children: List.generate(
                  12,
                  (index) => circleContainer(
                    maintext: icontext[index],
                    shorticon: shorticons[index],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const NotificationBar(), // Adding the Notification Bar
          ],
        ),
      ),
    );
  }

  Widget circleContainer({
    required String maintext,
    required IconData shorticon,
  }) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            color: Color(0xFFDED3FD),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Icon(
            shorticon,
            color: Colors.grey,
            size: 30,
          ),
        ),
        Text(
          maintext,
          style: const TextStyle(
            color: Color(0xFF3E3939),
          ),
        ),
      ],
    );
  }

  Widget bigContainer({required IconData mainicon, required bool arrowicon}) {
    return Column(
      children: [
        Container(
          width: 190,
          height: 70,
          decoration: const BoxDecoration(
            color: Color(0xFFDED3FD),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  mainicon,
                  color: Colors.grey,
                  size: 30,
                ),
                const SizedBox(
                  width: 18,
                ),
                const Column(
                  children: [
                    Text(
                      "Icreatives\nConnected",
                      style: TextStyle(
                          color: Color.fromARGB(255, 62, 57, 57),
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 18,
                ),
                arrowicon
                    ? const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 20,
                      )
                    : Container()
              ],
            ),
          ),
        )
      ],
    );
  }
}

class NotificationBar extends StatelessWidget {
  const NotificationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFDED3FD),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          Icon(Icons.notifications, color: Colors.black),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'You have new notifications!',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.black),
        ],
      ),
    );
  }
}
