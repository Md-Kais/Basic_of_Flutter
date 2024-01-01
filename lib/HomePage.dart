import 'package:flutter/material.dart';

const String src =
    'https://images.unsplash.com/photo-1682687982049-b3d433368cd1?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
const String description = '''
Chittagong Division, officially known as Chattogram Division, is geographically the largest of the eight administrative divisions of Bangladesh. It covers the south-easternmost areas of the country, with a total area of 34,529.97 km2 (13,332.10 sq mi) and a population at the 2022 census of 33,202,326. The administrative division includes mainland Chittagong District, neighbouring districts and the Chittagong Hill Tracts.

Chittagong Division is home to Cox's Bazar, the longest natural sea beach in the world;[3][4] as well as St. Martin's Island, Bangladesh's sole coral reef.
The Chittagong Division was established in 1829 to serve as an administrative headquarters for five of Bengal's easternmost districts, with the Chittagong District serving as its headquarters.[5] During the East Pakistan period, the division's Tippera district was renamed to Comilla District in 1960.[citation needed]
''';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,

                children: [
                  AppBar(
                    title: Text('Chattogram'),
                  ),
                  imageSection(),
                  titleName(),
                  navigationBlock(context),
                  descriptionBlock(context)
                ],
              ),
            )));
       }

  Image imageSection() {
    return Image.network(
      src,
      height: 250,
      fit: BoxFit.cover,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          // Image is fully loaded, display the image
          return child;
        } else {
          // Image is still loading, display a loading indicator
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      (loadingProgress.expectedTotalBytes ?? 1)
                  : null,
            ),
          );
        }
      },
    );
  }

  Container descriptionBlock(context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Text(
        description,
        style: TextStyle(
          fontFamily: 'Roboto',
        ),
      ),
    );
  }

  Container navigationBlock(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).primaryColor,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Text('Like'),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.call,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              SizedBox(
                height: 10,
              ),
              Text('Call'),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Share',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container titleName() {
    return Container(
      padding: EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Chattogram',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'The Port City of Bengal',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              )
            ],
          ),
          Column(children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                const Text(
                  '45',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            )
          ])
        ],
      ),
    );
  }
}
