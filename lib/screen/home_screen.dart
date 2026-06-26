import 'package:flutter/material.dart';
import 'product_detail_screen.dart';
import 'my_profile_page.dart';
import 'search_screen.dart';
import 'review_cart_screen.dart';
import 'notification_screen.dart';
import 'rating_review_page.dart';
import 'wishlist_page.dart';
import 'faq_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> cartItems = [];
  List<Map<String, dynamic>> wishlistItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1),

      //DRAWER
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 81, 36, 154),
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const SizedBox(height: 40),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: Text(
                      "Fruity",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome Guest",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color.fromARGB(255, 219, 216, 225),
                          ),
                        ),
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 30),
              drawerItem(context, Icons.home, "home"), // ← fixed

              ListTile(
                leading: const Icon(Icons.shopping_cart, color: Colors.white),
                title: const Text(
                  "Review Cart",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ReviewCartScreen(cartItems: cartItems),
                    ),
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.person, color: Colors.white),
                title: const Text(
                  "My Profile",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const MyProfilePage()),
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.notifications, color: Colors.white),
                title: const Text(
                  "Notifications",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const NotificationScreen(),
                    ),
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.star, color: Colors.white),
                title: const Text(
                  "Rating & Review",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const RatingReviewScreen(),
                    ),
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.favorite_border, color: Colors.white),
                title: const Text(
                  "Wishlist",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          WishlistPage(wishlistItems: wishlistItems),
                    ),
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.help_outline, color: Colors.white),
                title: const Text(
                  "FAQs",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const FAQPage()),
                  );
                },
              ),

              const SizedBox(height: 30),
              const Text(
                "Contact Support",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Call us: +99900425296",
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
              const Text(
                "Mail us: fruity@gmail.com",
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
              const SizedBox(height: 30),
              const Text(
                "v 1.0.0",
                style: TextStyle(fontSize: 12, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),

      //APPBAR
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 101, 83, 162),
        title: const Text(
          "Home",
          style: TextStyle(
            color: Color.fromARGB(255, 240, 233, 233),
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 225, 223, 223),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 231, 230, 230),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SearchScreen(),
                  settings: RouteSettings(arguments: vegetables),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Color.fromARGB(255, 229, 226, 226),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ReviewCartScreen(cartItems: cartItems),
                ),
              );
            },
          ),
          const SizedBox(width: 15),
        ],
      ),

      //BODY
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/banner.jpg'),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 50, 3, 138),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Fresh Friuts",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "30% Off",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "On all fruits",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Fruits",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),

              const SizedBox(height: 12),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 12,
                childAspectRatio: 0.75,
                children: vegetables
                    .map((v) => vegItem(v, context, cartItems, wishlistItems))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //  Fruit Item
  static Widget vegItem(
    Map<String, String> veg,
    BuildContext context,
    List<Map<String, dynamic>> cartItems,
    List<Map<String, dynamic>> wishlistItems,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductDetailScreen(
              name: veg["name"]!,
              img: veg["img"]!,
              price: veg["price"]!,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Image.asset(
                veg["img"]!,
                height: 95,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    veg["name"]!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    veg["price"]!,
                    style: TextStyle(color: Colors.grey[700], fontSize: 12),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            side: const BorderSide(color: Colors.green),
                          ),
                          onPressed: () {
                            var index = cartItems.indexWhere(
                              (item) => item["name"] == veg["name"],
                            );
                            if (index != -1) {
                              cartItems[index]["qty"] += 1;
                            } else {
                              cartItems.add({
                                "name": veg["name"],
                                "img": veg["img"],
                                "price": veg["price"],
                                "qty": 1,
                              });
                            }
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Added to Cart")),
                            );
                          },
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(fontSize: 11, color: Colors.green),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          if (!wishlistItems.any(
                            (item) => item["name"] == veg["name"],
                          )) {
                            wishlistItems.add({
                              "name": veg["name"],
                              "img": veg["img"],
                              "price": veg["price"],
                            });
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Added to Wishlist")),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget drawerItem(BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const HomeScreen()),
        );
      },
    );
  }
}

// fruit data
List<Map<String, String>> vegetables = [
  {
    "name": "strawberry",
    "price": "Rs150",
    "img": "assets/images/strawbery.jpg",
  },
  {"name": "banana", "price": "Rs50", "img": "assets/images/bananas.jpg"},
  {"name": "grapes", "price": "Rs130", "img": "assets/images/grapes.jpeg"},
  {"name": "mango", "price": "Rs150", "img": "assets/images/mango.jpg"},
  {"name": "kiwi", "price": "Rs1200", "img": "assets/images/Kiwi.jpeg"},
  {"name": "Orange", "price": "Rs100", "img": "assets/images/orange.jpg"},
  {"name": "apple", "price": "Rs230", "img": "assets/images/apple.jpg"},
  {"name": "peach", "price": "Rs300", "img": "assets/images/peach.jpg"},
  {
    "name": "pineapple",
    "price": "Rs1100",
    "img": "assets/images/pineapple.jpg",
  },
  {"name": "plum", "price": "Rs150", "img": "assets/images/plum.jpeg"},
  {"name": "Apricot", "price": "Rs200", "img": "assets/images/apricot.jpeg"},
  {
    "name": "watermelon",
    "price": "Rs30",
    "img": "assets/images/watermelon.jpg",
  },
  {"name": "Dates", "price": "Rs470", "img": "assets/images/dates.jpeg"},
  {
    "name": "pomegranate",
    "price": "Rs340",
    "img": "assets/images/pomgrante.jpg",
  },
  {"name": "papaya", "price": "Rs200", "img": "assets/images/papaya.jpg"},
  {"name": "cherry", "price": "Rs900", "img": "assets/images/cherry.jpeg"},
  {
    "name": "jack fruit",
    "price": "Rs700",
    "img": "assets/images/jackfruit.jpeg",
  },
  {
    "name": "dragon fruit",
    "price": "Rs540",
    "img": "assets/images/dragon_fruit.jpeg",
  },
  {"name": "avocado", "price": "Rs720", "img": "assets/images/avocado.jpeg"},
  {"name": "lychee", "price": "Rs400", "img": "assets/images/lychee.jpeg"},
  {
    "name": "blueberry",
    "price": "Rs300",
    "img": "assets/images/blueberry.jpeg",
  },
  {
    "name": "japanease friut",
    "price": "Rs130",
    "img": "assets/images/japanease_fruit.jpeg",
  },
  {"name": "mulberry", "price": "Rs100", "img": "assets/images/mulberry.jpeg"},
  {
    "name": "black grapes",
    "price": "Rs450",
    "img": "assets/images/blackgrapes.jpeg",
  },
  {
    "name": "red grapes",
    "price": "Rs300",
    "img": "assets/images/redgrapes.jpeg",
  },
  {"name": "raspberry", "price": "Rs500", "img": "assets/images/rasberry.jpeg"},
  {"name": "star fruit", "price": "Rs200", "img": "assets/images/a.jpeg"},
  {"name": "guava", "price": "Rs70", "img": "assets/images/b.jpeg"},
  {"name": "pear", "price": "Rs130", "img": "assets/images/c.jpeg"},
  {"name": "jamun", "price": "Rs600", "img": "assets/images/d.jpeg"},
  {"name": "cantaloupe melon", "price": "Rs200", "img": "assets/images/e.jpeg"},
  {"name": "cranberry", "price": "Rs630", "img": "assets/images/f.jpeg"},
  {"name": "chikoo", "price": "Rs230", "img": "assets/images/chikoo.jpeg"},
  {"name": "green apple", "price": "Rs120", "img": "assets/images/g.jpeg"},
  {"name": "red gratefruit", "price": "Rs330", "img": "assets/images/h.jpeg"},
  {"name": "fig", "price": "Rs210", "img": "assets/images/i.jpeg"},
  {"name": "custard apple", "price": "Rs220", "img": "assets/images/j.jpeg"},
  {"name": "amla", "price": "Rs200", "img": "assets/images/k.jpeg"},
  {"name": "longan", "price": "Rs230", "img": "assets/images/l.jpeg"},
  {"name": "mangosteen", "price": "Rs130", "img": "assets/images/m.jpeg"},
  {"name": "musambi", "price": "Rs50", "img": "assets/images/n.jpeg"},
  {"name": "mandarian", "price": "Rs70", "img": "assets/images/o.jpeg"},
  {"name": "black currant", "price": "Rs530", "img": "assets/images/P.jpeg"},
  {"name": "sea buckthorn", "price": "Rs230", "img": "assets/images/q.jpeg"},
  {"name": "coconut", "price": "Rs30", "img": "assets/images/r.jpeg"},
  {
    "name": "white chaunsa mango",
    "price": "Rs230",
    "img": "assets/images/s.jpeg",
  },
  {"name": "cashew apple", "price": "Rs200", "img": "assets/images/t.jpeg"},
  {"name": "langra mango", "price": "Rs230", "img": "assets/images/u.jpeg"},
  {"name": "pashion fruit", "price": "Rs160", "img": "assets/images/v.jpeg"},
  {"name": "tamarind", "price": "Rs180", "img": "assets/images/w.jpeg"},
];
