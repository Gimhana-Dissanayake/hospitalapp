import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slh_channeling_app/Widgets/Tile.dart';

class DarshBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned(
              bottom: 10,
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                height: 430,
                width: 360,
                color: Colors.transparent,
                child: Container(
                  child: GridView.extent(
                    maxCrossAxisExtent: 200.0,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    children: <Widget>[
                      Tile(
                        type: TileSize.medium,
                        imageTopMargin: 2,
                        callBack: () {
                          print('Hello');
                        },
                        imagePath:
                            'assets/images/dashboard/view_consultants.svg',
                        text: 'View Consultants',
                      ),
                      Tile(
                        type: TileSize.medium,
                        imageTopMargin: 2,
                        callBack: () {
                          print('Hello');
                        },
                        imagePath:
                            'assets/images/dashboard/my_appointments.svg',
                        text: 'View Consultants',
                      ),
                      Tile(
                        type: TileSize.medium,
                        imageTopMargin: 2,
                        callBack: () {
                          print('Hello');
                        },
                        imagePath: 'assets/images/dashboard/get_directions.svg',
                        text: 'View Consultants',
                      ),
                      Tile(
                        type: TileSize.medium,
                        imageTopMargin: 2,
                        callBack: () {
                          print('Hello');
                        },
                        imagePath:
                            'assets/images/dashboard/view_floor_plan.svg',
                        text: 'View Consultants',
                      ),
                      Tile(
                        type: TileSize.medium,
                        imageTopMargin: 2,
                        callBack: () {
                          print('Hello');
                        },
                        imagePath: 'assets/images/dashboard/about_us.svg',
                        text: 'View Consultants',
                      ),
                      Tile(
                        type: TileSize.medium,
                        imageTopMargin: 2,
                        callBack: () {
                          print('Hello');
                        },
                        imagePath: 'assets/images/dashboard/contact_us.svg',
                        text: 'View Consultants',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 400,
              right: -120,
              child: ClipOval(
                child: Container(
                  padding: EdgeInsets.only(bottom: 45),
                  child: Align(
                    child: Image.asset('assets/images/SLH_logo_1.png'),
                    alignment: Alignment.bottomCenter,
                  ),
                  height: 500,
                  width: 600,
                  color: Hexcolor('#E4DCFF'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
