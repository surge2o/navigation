import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blue[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/k.png'),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                      )),
                ),
              ),
            ),
            const Text('Sephanie Millton'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Favorite"),
                ),
                const Icon(Icons.add)
              ],
            ),
            const SizedBox(height: 50),
            Container(
              width: 500,
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  ListTile(
                    leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.yellow[100],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(Icons.question_answer_outlined)),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text('Start a Chat'),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  ListTile(
                    leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 164, 226, 166),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(Icons.person)),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text('Expart replies'),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  ListTile(
                    leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.red[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(Icons.star_border_outlined)),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text('Review ratings'),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  ListTile(
                    leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(Icons.list)),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text('Add Questions'),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
