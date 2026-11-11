import 'package:flutter/material.dart';

class V3 extends StatefulWidget {
  const V3({super.key});

  @override
  State<V3> createState() => _V3State();
}

class _V3State extends State<V3> {
  double _red = 128.0;
  double _green = 128.0;
  double _blue = 128.0;

  void _onChangedRed(double value) {
    setState(() {
      _red = value;
    });
  }

  void _onChangedGreen(double value) {
    setState(() {
      _green = value;
    });
  }

  void _onChangedBlue(double value) {
    setState(() {
      _blue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color currentColor = Color.fromRGBO(
      _red.toInt(),
      _green.toInt(),
      _blue.toInt(),
      1.0,
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Варіант 3: RGB Палітра кольорів",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: currentColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: currentColor.withOpacity(0.4),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          Center(
            child: Text(
              "RGB: (${_red.toInt()}, ${_green.toInt()}, ${_blue.toInt()})",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),

          // Слайдер для Red
          Row(
            children: [
              const SizedBox(width: 60, child: Text("Red:", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold))),
              Text(_red.toStringAsFixed(0), style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          Slider(value: _red, min: 0, max: 255, activeColor: Colors.red, onChanged: _onChangedRed),

          // Слайдер для Green
          Row(
            children: [
              const SizedBox(width: 60, child: Text("Green:", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold))),
              Text(_green.toStringAsFixed(0), style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          Slider(value: _green, min: 0, max: 255, activeColor: Colors.green, onChanged: _onChangedGreen),

          // Слайдер для Blue
          Row(
            children: [
              const SizedBox(width: 60, child: Text("Blue:", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))),
              Text(_blue.toStringAsFixed(0), style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          Slider(value: _blue, min: 0, max: 255, activeColor: Colors.blue, onChanged: _onChangedBlue),
        ],
      ),
    );
  }
}