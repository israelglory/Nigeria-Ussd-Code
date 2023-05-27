import 'package:flutter/material.dart';

import 'dart:async';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  var _size1 = 15.0;
  var _size2 = 10.0;
  var _size3 = 10.0;

  @override
  void initState() {
    //loader animation
    Timer.periodic(const Duration(milliseconds: 250), (timer) {
      if (mounted) {
        setState(() {
          if (_size1 == 15.0) {
            _size1 = _size1 - 10.0;
            _size2 = _size2 + 10.0;
          } else if (_size2 == 15.0) {
            _size2 = _size2 - 10.0;
            _size3 = _size3 + 10.0;
          } else if (_size3 == 15.0) {
            _size3 = _size3 - 10.0;
            _size1 = _size1 + 10.0;
          }
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: media.height * 1,
      width: media.width * 1,
      color: Colors.transparent.withOpacity(0.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
            width: media.width * 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 225),
                  height: _size1,
                  width: _size1,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                const SizedBox(width: 5),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 225),
                  height: _size2,
                  width: _size2,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                const SizedBox(
                  width: 5,
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 225),
                  height: _size3,
                  width: _size3,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
