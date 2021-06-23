import 'package:flutter/material.dart';
import 'package:resep_milenial_app/page/recipe.dart';

class RecipeDetailPage extends StatefulWidget {
  final RecipeDetail recipe;

  RecipeDetailPage({@required this.recipe});

  @override
  _RecipeDetailPageState createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage>
    with SingleTickerProviderStateMixin {
  bool isFavorite = false;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(widget.recipe.imageAsset),
                        SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.orangeAccent,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.keyboard_arrow_left,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.orangeAccent,
                                  child: Center(
                                    child: IconButton(
                                      icon: Icon(
                                        isFavorite
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          isFavorite = !isFavorite;
                                        });
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 100)
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Card(
                    margin: EdgeInsets.all(20.0),
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.recipe.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.orange, size: 20),
                              SizedBox(width: 5),
                              Text(
                                widget.recipe.rating,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Divider(
                            color: Colors.grey[300],
                            thickness: 2,
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.timer_outlined,
                                    color: Colors.black54,
                                  ),
                                  Text(
                                    widget.recipe.time + " min",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.fastfood_outlined,
                                    color: Colors.black54,
                                  ),
                                  Text(
                                    widget.recipe.quantityIngredients +
                                        " bahan",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.stairs_outlined,
                                    color: Colors.black54,
                                  ),
                                  Text(
                                    widget.recipe.level,
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.deepOrange,
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.black54,
              tabs: [
                Tab(
                  text: 'Bahan',
                ),
                Tab(
                  text: 'Cara Memasak',
                ),
                Tab(
                  text: 'Referensi',
                )
              ],
            ),
            SizedBox(
              height: 300,
              child: TabBarView(controller: _tabController, children: [
                _bahan(),
                _caraMemasak(),
                _referensi(),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget _bahan() {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Text(
          widget.recipe.detailIngredients,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _caraMemasak() {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: SingleChildScrollView(
          child: Text(
        widget.recipe.directions,
        textAlign: TextAlign.justify,
      )),
    );
  }

  Widget _referensi() {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Text(widget.recipe.sumber),
      ),
    );
  }
}
