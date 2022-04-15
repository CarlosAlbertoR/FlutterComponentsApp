import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;
  bool _lockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            Expanded(
              child: _createImage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Image size',
      //divisions: 20,
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: (_lockCheck)
          ? null
          : (value) {
              setState(() {
                _sliderValue = value;
              });
            },
    );
  }

  Widget _createCheckBox() {
    return CheckboxListTile(
      title: Text('Lock slider'),
      value: _lockCheck,
      onChanged: (value) {
        setState(() {
          _lockCheck = value;
        });
      },
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Lock slider'),
      value: _lockCheck,
      onChanged: (value) {
        setState(() {
          _lockCheck = value;
        });
      },
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/1200x/c9/37/6b/c9376b4acaa7dfdd06cce284aa1084b5.jpg'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }
}
