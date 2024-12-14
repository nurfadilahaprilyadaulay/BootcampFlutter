import 'package:flutter/material.dart';

void main() => runApp(const NewsApp());

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'NewsApp',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'TECHNOLOGY',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewsDetailPage(
                            title: 'Microsoft launches a deepfake detector tool ahead of US election',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9RavGqdXkFKg1AKI6uEDkfyRg-6r0ffJAOQ&s',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 16,
                            left: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Microsoft launches a deepfake detector tool ahead of US election',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '3 min ago',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Latest News',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NewsDetailPage(
                          title: 'Insurtech startup PasarPolis gets \$54 million – Series B',
                        ),
                      ),
                    );
                  },
                  leading: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9RavGqdXkFKg1AKI6uEDkfyRg-6r0ffJAOQ&s',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: const Text(
                    'Insurtech startup PasarPolis gets \$54 million – Series B',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  subtitle: const Text(
                    'TECHNOLOGY',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewsDetailPage extends StatelessWidget {
  final String title;

  const NewsDetailPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'This is the detailed content of the news article. More details and information will be displayed here.',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
