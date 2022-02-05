import 'package:flutter/material.dart';
import 'package:prayertimes/theme/input_theme.dart';

class SearchPageMainParts {
  static Column getParts(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.13),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.08,
          child: TextFormField(
            decoration: InputDecoration(
              label: const Icon(
                Icons.search,
              ),
              hintText: "Location",
              focusedBorder: ThemeInputFormField.getInputTheme(),
              enabledBorder: ThemeInputFormField.getInputTheme(),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.75,
          color: Colors.green,
          child: ListView.builder(itemBuilder: (context, index) {
            return const ListTile(
              leading: CircleAvatar(),
            );
          },
          itemCount: 10,
          ),
        ),
      ],
    );
  }
}
