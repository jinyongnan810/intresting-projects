import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/components/current_files.dart';
import 'package:image_shrinker/components/file_dropper.dart';
import 'package:image_shrinker/components/folder_selector.dart';
import 'package:image_shrinker/components/loading/loading_screen.dart';
import 'package:image_shrinker/components/percentage_slider.dart';
import 'package:image_shrinker/components/pixel_slider.dart';
import 'package:image_shrinker/components/shrink_button.dart';
import 'package:image_shrinker/providers/loading_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Shrinker',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Consumer(builder: (ctx, ref, child) {
        ref.listen(loadingProvider, (previous, next) {
          if (previous != null && next) {
            LoadingScreen.instance().show(context: ctx, text: 'Shrinking');
          } else if (previous == true && next == false) {
            LoadingScreen.instance().hide();
          }
        });
        return const HomePage();
      }),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: const [
          FileDropper(),
          CurrentFiles(),
          Divider(),
          FolderSelector(),
          PercentageSlider(),
          PixelSlider(),
          ShrinkButton()
        ]),
      ),
    );
  }
}
