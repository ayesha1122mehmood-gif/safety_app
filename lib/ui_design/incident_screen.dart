
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'report_status_screen.dart';

class IncidentReportScreen extends StatelessWidget {
  IncidentReportScreen({super.key});

  final TextEditingController _incidentController = TextEditingController();


  static const Color primaryColor = Color(0xFF0D47A1);
  static const Color backgroundColor = Color(0xFFB3E5FC);


 /* Future<void> _openGoogleMap() async {
    final Uri mapUrl = Uri.parse(
      'https://www.google.com/maps/search/?api=1',
    );

    if (await canLaunchUrl(mapUrl)) {
      await launchUrl(
        mapUrl,
        mode: LaunchMode.externalApplication,
      );
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          "Report Incident",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Describe the Issue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),

                const SizedBox(height: 16),


                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                  ),
                  onPressed:null,/*_openGoogleMap,*/
                  child: const Text(
                    "Choose Location",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                /// 🔹 Incident description field
                TextField(
                  controller: _incidentController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Write what problem you are facing...",
                    filled: true,
                    fillColor: Color(0xFFF5F9FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: primaryColor),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                /// 🔹 Submit Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                  ),
                  onPressed: () {
                    if (_incidentController.text.isNotEmpty) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ReportStatusScreen(),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    "Submit Report",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}