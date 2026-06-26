import 'package:flutter/material.dart';

class RatingReviewScreen extends StatefulWidget {
  const RatingReviewScreen({super.key});

  @override
  State<RatingReviewScreen> createState() => _RatingReviewScreenState();
}

class _RatingReviewScreenState extends State<RatingReviewScreen> {
  double userRating = 0.0;
  final TextEditingController reviewController = TextEditingController();

  // Already added reviews (dummy data)
  List<Map<String, dynamic>> reviews = [
    {
      "name": "Ali Ahmed",
      "rating": 4.5,
      "review": "Great quality fruits, fast delivery!",
    },
    {
      "name": "Sara Khan",
      "rating": 5.0,
      "review": "Fresh and tasty items. Loved the service!",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Rating & Reviews",
          style: TextStyle(
            color: Color.fromARGB(255, 244, 242, 242),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 77, 58, 140),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ⭐ SELECT RATING
            const Text(
              "Rate your Experience:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),

            Row(
              children: List.generate(5, (index) {
                return IconButton(
                  onPressed: () {
                    setState(() {
                      userRating = index + 1.0;
                    });
                  },
                  icon: Icon(
                    index < userRating ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                    size: 30,
                  ),
                );
              }),
            ),

            const SizedBox(height: 10),
            TextField(
              controller: reviewController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: "Write your review...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 12),

            /// ADD REVIEW BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (reviewController.text.isNotEmpty && userRating > 0) {
                    setState(() {
                      reviews.add({
                        "name": "You",
                        "rating": userRating,
                        "review": reviewController.text,
                      });
                      reviewController.clear();
                      userRating = 0.0;
                    });

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Review added successfully!"),
                      ),
                    );
                  }
                },
                child: const Text("Submit Review"),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "User Reviews",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            /// REVIEWS LIST
            Expanded(
              child: ListView.builder(
                itemCount: reviews.length,
                itemBuilder: (context, index) {
                  return _buildReviewCard(
                    reviews[index]["name"],
                    reviews[index]["rating"],
                    reviews[index]["review"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReviewCard(String name, double rating, String review) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: List.generate(
                5,
                (i) => Icon(
                  i < rating ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                  size: 18,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(review),
          ],
        ),
      ),
    );
  }
}
