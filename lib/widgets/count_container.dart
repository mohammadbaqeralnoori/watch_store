


import 'package:flutter/material.dart';

Visibility countContainer() {
   int count = 0;
    return Visibility(
        visible: count > 0 ? true : false,
        child: Positioned(
          top: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: Text(
              count.toString(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      );
  }