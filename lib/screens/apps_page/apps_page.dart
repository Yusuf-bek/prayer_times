import 'package:flutter/material.dart';
import 'package:prayertimes/core/constants/asset_image_paths.dart';

class AppsPage extends StatelessWidget {
  const AppsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
              image: AssetImage(asssetImagePaths[currentImageIndex]),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.65,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green.withOpacity(0.3),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.15,
                          backgroundImage: AssetImage(
                            assetIconAppsPaths[index],
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.55,
                          height: MediaQuery.of(context).size.height * 0.13,
                          child: Center(
                            child: Text(
                              assetAppsNames[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: assetIconAppsPaths.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
