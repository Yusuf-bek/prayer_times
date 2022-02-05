import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:prayertimes/data/database/lagmondata.dart';

class HomePageMainParts {
  static getFirstPart(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/searchpage");
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green.withOpacity(0.2),
              border: Border.all(width: 0.5, color: Colors.white),
            ),
            child: Center(
              child: AutoSizeText(
                addressTimeZones,
                softWrap: true,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  static getSeondPart(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green.withOpacity(0.2),
              border: Border.all(width: 0.5, color: Colors.white),
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}