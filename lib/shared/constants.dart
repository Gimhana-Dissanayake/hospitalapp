import 'package:flutter/material.dart';

import 'speciality.dart';

const textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0)),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink, width: 2.0)),
);

List<ListItem> dropdownItems = [
  ListItem(1, "Consultant Surgeon"),
  ListItem(2, "Consultant Physician"),
];

List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
  List<DropdownMenuItem<ListItem>> items = List();
  for (ListItem listItem in listItems) {
    items.add(
      DropdownMenuItem(
        child: Text(listItem.name),
        value: listItem,
      ),
    );
  }
  return items;
}
