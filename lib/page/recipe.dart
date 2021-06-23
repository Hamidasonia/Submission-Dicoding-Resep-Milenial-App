import 'package:flutter/material.dart';
import 'package:resep_milenial_app/common/constans.dart';

class RecipeDetail {
  String name;
  String category;
  String rating;
  String time;
  String quantityIngredients;
  String level;
  String detailIngredients;
  String directions;
  String sumber;
  String imageAsset;

  RecipeDetail({
    @required this.name,
    @required this.category,
    @required this.rating,
    @required this.time,
    @required this.quantityIngredients,
    @required this.level,
    @required this.detailIngredients,
    @required this.directions,
    @required this.sumber,
    @required this.imageAsset,
  });
}

var recipeDetailList = [
  RecipeDetail(
    name: "Garlic Bread",
    category: "Roti",
    rating: "4.5",
    time: "120",
    quantityIngredients: "11",
    level: "Medium",
    detailIngredients:
        "Roti Bun \n 375 gr Tepung Protein Tinggi \n 1 sdt Ragi Instan \n 30 gr Gula Pasir \n 10 gr Susu Bubuk \n 150 CC Susu Cair \n 45 gr Butter atau Butter Oil Substitute \n 1/4 sdt Garam Halus \n 3 Siung Bawang Putih, Cincang Halus \n 150 gram Vanilla Cream \n 75 gr Mayonaise \n 50 gr Keju Cheddar Parut",
    directions:
        "1. Campur tepung terigu, gula pasir, susu bubuk aduk rata. Lalu masukkan larutan ragi, aduk lagi. \n"
        "2. Masukkan susu cair sedikit demi sedikit, jika adonan sudah cukup menyatu stop, jangan dituang semua lihat kondisi adonan ya supaya tidak terlalu lembek.\n"
        "3. Mixer lagi sampai setengah kalis, lalu masukkan butter dan garam.\n"
        "4. Lanjutkan mixer sampai adonan kalis elastis, lebih kurang 20 menit sudah muncul windowpane.\n"
        "5. Setelah kalis, diamkan adonan selama 45 menit sampai mengembang 2x lipat.\n"
        "6. Kempiskan adonan, bagi menjadi 8 bagian lalu bulatkan. Diamkan lagi selama 30 menit. Lalu panggang dalam oven suhu 180derajat selama 20 menit.\n"
        "7. Keluarkan roti, olesi dengan butter dan diamkan hingga hangat. Setelah itu potong potong dan beri isian creamcheese, oleskan dengan garlic sauce hingga merata, taburi dengan parsley dan keju parut.\n"
        "8. Panggang lagi dalam oven dengan suhu 180 derajat selama 5 menit, keluarkan dari oven dan voila siap disajikan",
    sumber:
        "https://cookpad.com/id/resep/14025522-40-garlic-bread-kekinian-sederhana-murah-meriah-enak-%F0%9F%98%8D%F0%9F%98%8D%F0%9F%98%8D%F0%9F%98%8D%F0%9F%98%8D?ref=search&search_term=masakan%20kekinian%20murah",
    imageAsset: kImgMenu1,
  ),
  RecipeDetail(
    name: "Risoles Mayo",
    category: "Gorengan",
    rating: "4.8",
    time: "30",
    quantityIngredients: "14",
    level: "Mudah",
    detailIngredients:
        "200 gr terigu protein tinggi \n 2 butir telur \n 600 ml susu cair \n 1/2 sdt garam \n 1 sdm minyak goreng \n 2 buah kentang \n 5 buah sosis \n keju quickmelt \n 3 buah telur potong \n 150 gr mayonaise \n susu kental manis secukupnya \n 2 butir telur kocok rata \n tepung panir \n saus sambal secukupnya",
    directions:
        "1. Kulit Risoles : campur dalam baskom terigu, susu cair, telur, garam dan minyak goreng. Aduk sampai tercampur rata\n"
        "2. Panaskan wajan teflon diameter 18 cm, tuang 1 sendok sayur adonan ke wajan. Masak sebentar sampai permukaan tidak lengket. Angkat, buat kulit lagi, sambil memberi isian kulit sebellumnya \n"
        "3. Campur mayonaise dengan susu kental manis, koreksi rasa sesuai selera. Di atas kulit beri isian keju, kentang, sosis, dan saus campuran mayonaise. Lipat bentuk amplop. Lakukan berulang sampai semua bahan habis \n"
        "4. Celupkan risoles pada kocokan telur, kemudian lapisi tepung panir sampai rata di kedua sisi \n"
        "5. Goreng risoles mayo sampai matang di kedua sisi. Tiriskan dan sajikan hangat dengan saus sambal",
    sumber: "Yummy App / Laily Puspitasari / Risoles Mayo",
    imageAsset: kImgMenu2,
  ),
  RecipeDetail(
    name: "Oreo Milkshake",
    category: "Minuman",
    rating: "4.0",
    time: "5",
    quantityIngredients: "6",
    level: "Mudah",
    detailIngredients:
        "5 biskuit oreo \n 2 scoops vanila ice cream \n 2 sdm coklat bubuk \n 2 cangkir susu UHT \n 4 buah es batu \n Bisa ditambahkan pelengkap whipped cream, astor, dan oreo",
    directions:
        "1. Siapkan blender, kemudian masukkan oreo. coklat bubuk, susu UHT, es krim, dan es batu. \n"
        "2. Blender bahan tersebut sampai halus \n"
        "3. Kemudian tuangkan pada gelas saji \n"
        "4. Hiasi milkshake dengan whipped cream, astor dan oreo",
    sumber:
        "https://www.idntimes.com/food/recipe/dian-indriati/5-resep-milkshake-praktis-yang-bisa-kamu-coba-di-rumah-c1c2/2",
    imageAsset: kImgMenu3,
  )
];
