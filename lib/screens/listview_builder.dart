import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:gap/gap.dart';

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "subtitle": "PR Pathways",
      "title": "",
      "images": "images/1681726151206.png",
    },
    {
      "subtitle": "Personal",
      "title": "Document",
      "images": "images/1681726151191.png",
    },
    {
      "subtitle": "Agents",
      "title": "",
      "images": "images/1681726151199.png",
    },
    {
      "subtitle": "Discuss",
      "title": "",
      "images": "images/1681726151177.png",
    },
    {
      "subtitle": "Visa",
      "title": "Process",
      "images": "images/1681726151184.png",
    },
  ];
  final colorss = <Color>[
    Colors.blue,
    Color.fromARGB(255, 219, 82, 82),
    Color.fromARGB(255, 230, 163, 39),
    Color.fromARGB(255, 236, 164, 243),
    Color.fromARGB(255, 245, 189, 164)
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        mainAxisExtent: 220,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.white, blurRadius: 8, offset: Offset(1, 2))
                ],
                borderRadius: BorderRadius.circular(
                  17,
                ),
                color: colorss[index]),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: Text(
                            "${gridMap.elementAt(index)['subtitle']}",
                            style: Theme.of(context).textTheme.subtitle1!.merge(
                                  const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Center(
                            child: Text(
                              "${gridMap.elementAt(index)['title']}",
                              style:
                                  Theme.of(context).textTheme.subtitle1!.merge(
                                        const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Center(
                            child: Container(
                              height: 90,
                              width: 80,
                              child: Image.asset(
                                "${gridMap.elementAt(index)['images']}",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
