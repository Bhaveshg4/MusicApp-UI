import 'package:flutter/material.dart';
import 'package:music_application_1/song_page.dart';

import 'new_box.dart';

void main() {
  runApp(MyMusic());
}

class MyMusic extends StatelessWidget {
  const MyMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return SongPage();
  }
}
