// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class AniamationView extends StatefulWidget {
  const AniamationView({super.key});

  @override
  State<AniamationView> createState() => _AniamationViewState();
}

class _AniamationViewState extends State<AniamationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Model Viewer")),
      // ①ModelViewerウィジェットの各プロパティを設定する
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      colors: [
                        Color.fromARGB(255, 132, 107, 255).withOpacity(0.6),
                        Color.fromARGB(255, 47, 255, 155).withOpacity(0.6),
                      ],
                      stops: const [
                        0.0,
                        1.0,
                      ]),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black, // シャドウの色
                      spreadRadius: 2, // シャドウの拡がり具合
                      blurRadius: 5, // シャドウのぼかし具合
                      offset: Offset(0, 3), // シャドウの位置
                    ),
                  ]),
              child: ModelViewer(
                src: "assets/scb.glb",
                iosSrc: "assets/scb.usdz",
                ar: true,
                autoRotate: true,
                cameraControls: true,
              ),
            ),
          ),
          Text("data")
        ],
      ),
    );
  }
}
