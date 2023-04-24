import 'package:app_images/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Center(
                child: Slider.adaptive(
                    value: _sliderValue,
                    activeColor: AppTheme.primaryColor,
                    min: 50,
                    max: 400,
                    onChanged: ( value ) {
                      setState(() {
                        _sliderValue = value;
                      });
                      print( value );
                    }
                ),
              ),
              CheckboxListTile(
                value: false,
                title: const Text('Aceptar terminos y condiciones'),
                onChanged: ( value ) {
                  print('Click en el checkbox: $value');
                }
              ),
              const AboutListTile(),
              Image(
                image: const NetworkImage('https://image.stern.de/32521596/t/qT/v2/w1440/r1/-/elon-musk.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              )
            ]
        ),
      )
    );
  }
}
