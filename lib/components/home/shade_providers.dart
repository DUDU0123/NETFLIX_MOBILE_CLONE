import 'package:flutter/material.dart';

Positioned bottomShadeProvider() {
    return Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color.fromARGB(20, 0, 0, 0), Colors.black],
                  ),
                ),
              ),
            );
  }

  Positioned topShadeProvider() {
    return Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color.fromARGB(0, 0, 0, 0), Colors.black],
                  ),
                ),
              ),
            );
  }