import 'package:flutter/material.dart';

import '../../../constants/global_variables.dart';

class DealOfTheDay extends StatefulWidget {
  const DealOfTheDay({Key? key}) : super(key: key);

  @override
  State<DealOfTheDay> createState() => _DealOfTheDayState();
}

class _DealOfTheDayState extends State<DealOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Deal Of The Day..',
                style: TextStyle(
                  fontSize: 20,
                  color: GlobalVariables.blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 16,
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.43,
            color: GlobalVariables.backgroundColor,
            child: Card(
              color: GlobalVariables.whiteColor,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: GlobalVariables.dealList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    // height: double.infinity,

                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          // color: Color(0xff000000),
                          color: Colors.white60,
                          spreadRadius: 1,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 300,
                          width: 250,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              fit: BoxFit.cover,
                              // color: Colors.black,
                              image: NetworkImage(
                                GlobalVariables.dealList[index]['image']!,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          GlobalVariables.dealList[index]['name']!,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          GlobalVariables.dealList[index]['rate']!,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
