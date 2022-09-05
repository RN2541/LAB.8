import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<List<dynamic>> foodLists = [
    [
      "https://www.chillpainai.com/src/wewakeup/scoop/images/ec76323ee35b3c40d5f5eaf1e9b759506d5fb26e.jpg",
      "ตำถาด",
      250
    ],
    [
      "https://aroi-mark.com/wp-content/uploads/2021/06/product_34935_108509993_fullsize.jpg",
      "ตำไทย",
      50
    ],
    [
      "https://food.mthai.com/app/uploads/2015/06/iStock_000061473972_Small.jpg",
      "ตำปูปลาร้า",
      55
    ],
    ["https://i.ytimg.com/vi/JDIqP2BMI4o/maxresdefault.jpg", "ซุปหน่อไม้", 50],
    [
      "https://i.ytimg.com/vi/XS7pN2HnUZM/sddefault.jpg",
      "น้ำตกคอหมูย่าง",
      80,
    ],
    [
      "https://i.ytimg.com/vi/A0hhUVYpICM/maxresdefault.jpg",
      "ลาบหมู",
      80,
    ],
    [
      "https://i.ytimg.com/vi/0AAk3wEBqno/maxresdefault.jpg",
      "ตับหวาน",
      70,
    ],
    [
      "https://upload.wikimedia.org/wikipedia/commons/d/d6/%E0%B8%84%E0%B8%AD%E0%B8%AB%E0%B8%A1%E0%B8%B9%E0%B8%A2%E0%B9%88%E0%B8%B2%E0%B8%87.jpg",
      "คอหมูย่าง",
      70,
    ],
    [
      "https://scm-assets.constant.co/scm/unilever/e9dc924f238fa6cc29465942875fe8f0/85e48a46-7e8f-46bc-a81f-aa82b75e40c5.jpg",
      "ต้มแซ่บกระดูกอ่อน",
      80,
    ],
    [
      "https://img-global.cpcdn.com/recipes/053a8c5285883a97/1200x630cq70/photo.jpg",
      "ไก่ย่าง",
      180
    ],
    [
      "http://2.bp.blogspot.com/-C9n0uXPEpY4/VA7dQUYKoDI/AAAAAAAAAcU/r4oiILKTebU/s1600/%E0%B8%82%E0%B9%89%E0%B8%B2%E0%B8%A7%E0%B9%80%E0%B8%AB%E0%B8%99%E0%B8%B5%E0%B8%A2%E0%B8%A7%E0%B8%AD%E0%B8%B1%E0%B8%8D%E0%B8%8A%E0%B8%B1%E0%B8%99.JPG",
      "ข้าวเหนียวอัญชัน",
      20
    ],
    [
      "https://d3h1lg3ksw6i6b.cloudfront.net/media/image/2022/06/14/103df643b8e84d6a87e38289c33b8a26_Get_To_Know_How_Khanom_Chin_Conquered_Thailand_%2810%29.jpg",
      "ขนมจีน",
      20
    ],
    [
      "https://img.wongnai.com/p/1968x0/2021/07/10/04672818b7c04db6a7b606e240cde904.jpg",
      "เส้นหมี่",
      20
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodLists.length,
      itemBuilder: (_, index) {
        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          child: Container(
            height: 150,
            width: double.infinity,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.network(
                      foodLists[index][0],
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${foodLists[index][1]}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              " ${foodLists[index][2]} บาท",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.bottomRight,
                  child: Chip(
                    backgroundColor: Colors.lightBlue,
                    label: Text(
                      "สั่งอาหาร",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
