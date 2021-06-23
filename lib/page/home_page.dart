import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resep_milenial_app/common/constans.dart';
import 'package:resep_milenial_app/page/recipe.dart';
import 'package:resep_milenial_app/page/recipe_detail.dart';
import 'package:resep_milenial_app/tool/helper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey _scaffoldKey;
  Helper _helper;

  @override
  void initState() {
    _scaffoldKey = new GlobalKey<ScaffoldState>();
    _helper = new Helper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.orangeAccent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 100.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
              ),
              child: Stack(
                children: [
                  SafeArea(
                      child: Container(
                    padding: EdgeInsets.only(top: 16, left: 16),
                    child: Text("Cari Resepmu!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black87)),
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(right: 150),
                            child: Image.asset(kImg1)),
                        Row(
                          children: [
                            Expanded(child: Container()),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Terbaik bulan ini!",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                                Text("Juni 2021",
                                    style: TextStyle(
                                        color: Colors.orange[300],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                                SizedBox(height: 10),
                                Text("Spaghetti Cheese and Pepper",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text("Spaghetti merupakan salah satu"),
                                Text(
                                    "memiliki bentuk silinder tipis dan padat"),
                                Text("yang terbuat dari olahan gandum"),
                                SizedBox(height: 20),
                                MaterialButton(
                                    color: Colors.yellow[300],
                                    onPressed: () => _helper.launcherIntent(
                                        'https://tasty.co/recipe/spaghetti-with-cheese-and-pepper'),
                                    child: Text("Lihat Resep")),
                              ],
                            ),
                            SizedBox(width: 30),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Menu Favorit Minggu ini!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: recipeDetailList.length,
                itemBuilder: (context, index) {
                  final RecipeDetail recipe = recipeDetailList[index];
                  return InkWell(
                    onTap: () => _helper.jumpToPage(context,
                        page: RecipeDetailPage(recipe: recipe)),
                    child: Row(
                      children: [
                        SizedBox(width: 16.0),
                        Container(
                            width: 200,
                            height: 100,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    width: 50,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(10)),
                                        image: DecorationImage(
                                            image:
                                                AssetImage(recipe.imageAsset),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(10)),
                                    ),
                                    padding: EdgeInsets.all(8),
                                    height: 100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          recipe.name,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          recipe.category,
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )),
                        SizedBox(width: 16.0),
                      ],
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: false,
              ),
            ),
            SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
