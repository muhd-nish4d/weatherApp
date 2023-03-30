import 'package:flutter/material.dart';

class WidgetTopSection extends StatelessWidget {
  const WidgetTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            'https://cdn-icons-png.flaticon.com/128/1040/1040443.png'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              '50',
              style: TextStyle(fontSize: 70),
            ),
            Text(
              '○',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('c',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))
          ],
        ),
        const Text('Loacation'),
        const Text('Region, Country'),
      ],
    );
  }
}
