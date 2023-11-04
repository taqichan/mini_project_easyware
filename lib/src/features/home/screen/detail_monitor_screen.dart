import 'package:flutter/material.dart';
import 'package:mini_project_easyware/src/features/home/widget/card_detail_widget.dart';
import 'package:mini_project_easyware/src/widget/custom_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailMonitorScreen extends StatefulWidget {
  static const routeName = '/detail-monitor';
  const DetailMonitorScreen({super.key});

  @override
  State<DetailMonitorScreen> createState() => _DetailBannerScreenState();
}

class _DetailBannerScreenState extends State<DetailMonitorScreen> {
  static const likedKey = 'liked_key';
  late bool liked = false;

  @override
  void initState() {
    super.initState();
    _restorePersistedPreference();
  }

  void _restorePersistedPreference() async {
    var prefs = await SharedPreferences.getInstance();
    var liked = prefs.getBool(likedKey);
    setState(() {
      this.liked = liked!;
    });
  }

  void _presistPreference() async {
    setState(() {
      liked = !liked;
    });
    var prefs = await SharedPreferences.getInstance();
    await prefs.setBool(likedKey, liked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('assets/images/detail_monitor.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                const Text(
                  'Monitor',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    _presistPreference();
                  },
                  child: Icon(
                    liked ? Icons.favorite : Icons.favorite_border,
                    color: liked ? Colors.red : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Monitor adalah sebuah perangkat keras yang digunakan untuk menampilkan informasi grafis yang dihasilkan oleh komputer. Monitor terdiri dari layar dan rangkaian elektronika yang digunakan untuk menampilkan informasi grafis dari komputer. Monitor juga disebut sebagai layar komputer atau display.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const CardDetail(),
          const SizedBox(
            height: 32,
          ),
          Center(
            child: CustomBottomWidget(
                title: 'Tanya Chatbot',
                onTap: () {
                  Navigator.pushNamed(context, '/chatbot_screen');
                },
                height: 60,
                width: 200),
          )
        ],
      ),
    );
  }
}
