import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink[300],
          leading: const Icon(
            Icons.reorder_outlined,
            color: Color(0xffc2185b),
          ),
          title: const Text(
            'Flowers Lovers',
            style: TextStyle(
              fontSize: 25,
              color: Color(0xffc2185b),
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            const Icon(
              Icons.notification_add_outlined,
              color: Color(0xffc2185b),
            ),
            const Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xffc2185b),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              color: Colors.pink[100],
              width: double.infinity,
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // width: double.infinity,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: const Image(
                        image: NetworkImage(
                            'https://img.freepik.com/free-photo/vertical-closeup-shot-beautiful-pink-tulips-white-background_181624-33800.jpg?size=626&ext=jpg&ga=GA1.1.294524808.1699048091&semt=sph'),
                        fit: BoxFit.cover,
                        width: 200,
                        height: 160,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: const Image(
                        image: NetworkImage(
                            'https://img.freepik.com/free-photo/vertical-closeup-shot-beautiful-pink-tulips-white-background_181624-33261.jpg?w=360&t=st=1699048963~exp=1699049563~hmac=51c57ca4ef5859429f37357d62c629c1efeb6bc9a7d98201befdbbb0a1555685'),
                        fit: BoxFit.cover,
                        width: 200,
                        height: 160,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'What is your favorite flower? ',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.local_florist_outlined,
                    ),
                  ),
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Image(
                  image: NetworkImage(
                      'https://img.freepik.com/premium-photo/flowers-background-roses-lilies-space-text_73152-226.jpg?w=996'),
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
