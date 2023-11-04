import 'package:flutter/material.dart';

class Navigator_Banner extends StatelessWidget {
  const Navigator_Banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Mouse',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.blue[900],
                ),
              ),
              Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Keyboard',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            style: TextButton.styleFrom(
              primary: Colors.blue[500],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Monitor',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            style: TextButton.styleFrom(
              primary: Colors.blue[500],
            ),
          ),
        ],
      ),
    );
  }
}
