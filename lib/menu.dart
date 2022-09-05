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
    ["https://i.ytimg.com/vi/JDIqP2BMI4o/maxresdefault.jpg", "ซุปหน่อไม้", 50],
    [
      "https://i.ytimg.com/vi/XS7pN2HnUZM/sddefault.jpg",
      "น้ำตกคอหมูย่าง",
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
                              height: 5,
                            ),
                            Text(
                              " ${foodLists[index][2]} ฿",
                              style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 14,
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
                    backgroundColor: Colors.lightGreen,
                    label: Text(
                      "Order Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
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
