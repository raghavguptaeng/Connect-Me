import 'package:flutter/material.dart';

var backgroundColor = Color(0xFF267EBD);
var inputdecoration = new InputDecoration(
    border: new OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        const Radius.circular(10.0),
      ),
    ),
    filled: true,
    hintStyle: new TextStyle(color: Colors.grey[800]),
    hintText: "Type in your text",
    labelText: "Email",
    fillColor: Colors.white70);