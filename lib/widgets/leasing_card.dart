import 'package:flutter/material.dart';

class LeasingCard extends StatelessWidget {
  const LeasingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30.0, left: 18.0),
              child: Text(
                "Available Balance",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0, top: 4.0),
              child: Text(
                "105.0054",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 6.0, 18.0, 10.0),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 10,
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: 0.8,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "1435.00355601",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Row(
                        children: const [
                          Text("Leased"),
                          SizedBox(width: 5),
                          CircleAvatar(
                            radius: 5,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Divider(
                    color: Colors.grey,
                    indent: 2,
                    endIndent: 2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "1540.00355601",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Row(
                        children: const [
                          Text("Total"),
                          SizedBox(width: 5),
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Color.fromARGB(255, 108, 152, 230),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Divider(
                    color: Colors.grey,
                    indent: 2,
                    endIndent: 2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  color: const Color.fromARGB(255, 183, 205, 243),
                  height: 50,
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      "Start Lease",
                      style: TextStyle(
                        color: Color.fromARGB(255, 21, 106, 177),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
