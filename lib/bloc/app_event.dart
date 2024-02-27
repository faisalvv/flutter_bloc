part of 'app_bloc.dart';
// import 'package:flutter/material.dart';
// 
// @immutable
abstract class AppEvent {}

class AddItem extends AppEvent {
  final String? keyy;

  AddItem({this.keyy});
}

class RemoveIndex extends AppEvent {
  final int indx;
  RemoveIndex({required this.indx});
}

class RemoveItem extends AppEvent {
  final String? text;
  RemoveItem({this.text});
}