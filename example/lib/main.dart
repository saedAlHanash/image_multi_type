import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_multi_type/image_multi_type_pakage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Multi Type Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const BasicExamplesPage(),
    const CircleExamplesPage(),
    const RoundExamplesPage(),
    const AdvancedExamplesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Multi Type Examples'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Basic',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Circle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rounded_corner),
            label: 'Round',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rounded_corner),
            label: 'Advanced',
          ),
        ],
      ),
    );
  }
}

class BasicExamplesPage extends StatelessWidget {
  const BasicExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Basic ImageMultiType Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // Network Image
          _buildExampleCard(
            title: 'Network Image',
            description: 'Loading image from internet with caching',
            child: ImageMultiType(
              url: 'https://picsum.photos/300/200?random=1',
              height: 200,
              width: 300,
              fit: BoxFit.cover,
            ),
            code: '''ImageMultiType(
  url: 'https://picsum.photos/300/200?random=1',
  height: 200,
  width: 300,
  fit: BoxFit.cover,
)''',
          ),

          // Asset Image (placeholder)
          _buildExampleCard(
            title: 'Asset Image',
            description: 'Loading image from assets folder',
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Asset Image\n(Add image to assets/images/)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            code: '''ImageMultiType(
  url: 'assets/images/logo.png',
  height: 200,
  width: 300,
)''',
          ),

          // SVG Asset (placeholder)
          _buildExampleCard(
            title: 'SVG Asset',
            description: 'Loading SVG from assets with color tinting',
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'SVG Asset\n(Add SVG to assets/icons/)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            code: '''ImageMultiType(
  url: 'assets/icons/icon.svg',
  height: 200,
  width: 300,
  color: Colors.blue,
)''',
          ),

          // Icon
          _buildExampleCard(
            title: 'Icon',
            description: 'Displaying Flutter icons with custom size and color',
            child: ImageMultiType(
              url: Icons.favorite,
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            code: '''ImageMultiType(
  url: Icons.favorite,
  height: 100,
  width: 100,
  color: Colors.red,
)''',
          ),

          // Custom Widget
          _buildExampleCard(
            title: 'Custom Widget',
            description: 'Using any Flutter widget as image source',
            child: ImageMultiType(
              url: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'Custom Widget',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            code: '''ImageMultiType(
  url: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.blue, Colors.purple],
      ),
    ),
    child: Text('Custom Widget'),
  ),
)''',
          ),
        ],
      ),
    );
  }

  Widget _buildExampleCard({
    required String title,
    required String description,
    required Widget child,
    required String code,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(height: 16),
            Center(child: child),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                code,
                style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleExamplesPage extends StatelessWidget {
  const CircleExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Circle Image Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // Different sizes
          _buildExampleCard(
            title: 'Different Sizes',
            description: 'Circle images with various sizes',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleImageWidget(
                  url: 'https://picsum.photos/100/100?random=2',
                  size: 60,
                ),
                CircleImageWidget(
                  url: 'https://picsum.photos/100/100?random=3',
                  size: 80,
                ),
                CircleImageWidget(
                  url: 'https://picsum.photos/100/100?random=4',
                  size: 100,
                ),
              ],
            ),
            code: '''CircleImageWidget(
  url: 'https://picsum.photos/100/100?random=2',
  size: 60,
)''',
          ),

          // With background color
          _buildExampleCard(
            title: 'With Background Color',
            description: 'Circle images with custom background colors',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleImageWidget(
                  url: 'https://picsum.photos/100/100?random=5',
                  size: 80,
                  color: Colors.blue[100],
                ),
                CircleImageWidget(
                  url: 'https://picsum.photos/100/100?random=6',
                  size: 80,
                  color: Colors.green[100],
                ),
                CircleImageWidget(
                  url: 'https://picsum.photos/100/100?random=7',
                  size: 80,
                  color: Colors.purple[100],
                ),
              ],
            ),
            code: '''CircleImageWidget(
  url: 'https://picsum.photos/100/100?random=5',
  size: 80,
  color: Colors.blue[100],
)''',
          ),

          // With margin and padding
          _buildExampleCard(
            title: 'With Margin and Padding',
            description: 'Circle images with custom spacing',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleImageWidget(
                  url: 'https://picsum.photos/100/100?random=8',
                  size: 80,
                  margin: const EdgeInsets.all(8),
                  color: Colors.red[100],
                ),
                CircleImageWidget(
                  url: 'https://picsum.photos/100/100?random=9',
                  size: 80,
                  padding: const EdgeInsets.all(4),
                  color: Colors.orange[100],
                ),
              ],
            ),
            code: '''CircleImageWidget(
  url: 'https://picsum.photos/100/100?random=8',
  size: 80,
  margin: EdgeInsets.all(8),
  color: Colors.red[100],
)''',
          ),
        ],
      ),
    );
  }

  Widget _buildExampleCard({
    required String title,
    required String description,
    required Widget child,
    required String code,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(height: 16),
            Center(child: child),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                code,
                style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundExamplesPage extends StatelessWidget {
  const RoundExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Round Image Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // Different border radius
          _buildExampleCard(
            title: 'Different Border Radius',
            description: 'Rounded images with various corner radius',
            child: Column(
              children: [
                RoundImageWidget(
                  url: 'https://picsum.photos/300/150?random=10',
                  height: 100,
                  width: 300,
                  radios: 8,
                ),
                const SizedBox(height: 16),
                RoundImageWidget(
                  url: 'https://picsum.photos/300/150?random=11',
                  height: 100,
                  width: 300,
                  radios: 16,
                ),
                const SizedBox(height: 16),
                RoundImageWidget(
                  url: 'https://picsum.photos/300/150?random=12',
                  height: 100,
                  width: 300,
                  radios: 32,
                ),
              ],
            ),
            code: '''RoundImageWidget(
  url: 'https://picsum.photos/300/150?random=10',
  height: 100,
  width: 300,
  radios: 8,
)''',
          ),

          // Different sizes
          _buildExampleCard(
            title: 'Different Sizes',
            description: 'Rounded images with various dimensions',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundImageWidget(
                  url: 'https://picsum.photos/100/100?random=13',
                  height: 80,
                  width: 80,
                  radios: 16,
                ),
                RoundImageWidget(
                  url: 'https://picsum.photos/100/100?random=14',
                  height: 100,
                  width: 150,
                  radios: 16,
                ),
                RoundImageWidget(
                  url: 'https://picsum.photos/100/100?random=15',
                  height: 120,
                  width: 80,
                  radios: 16,
                ),
              ],
            ),
            code: '''RoundImageWidget(
  url: 'https://picsum.photos/100/100?random=13',
  height: 80,
  width: 80,
  radios: 16,
)''',
          ),

          // With color tinting
          _buildExampleCard(
            title: 'With Color Tinting',
            description: 'Rounded images with color overlay',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundImageWidget(
                  url: 'https://picsum.photos/100/100?random=16',
                  height: 80,
                  width: 80,
                  radios: 16,
                  color: Colors.blue.withValues(alpha: 0.3),
                ),
                RoundImageWidget(
                  url: 'https://picsum.photos/100/100?random=17',
                  height: 80,
                  width: 80,
                  radios: 16,
                  color: Colors.green.withValues(alpha: 0.3),
                ),
                RoundImageWidget(
                  url: 'https://picsum.photos/100/100?random=18',
                  height: 80,
                  width: 80,
                  radios: 16,
                  color: Colors.red.withValues(alpha: 0.3),
                ),
              ],
            ),
            code: '''RoundImageWidget(
  url: 'https://picsum.photos/100/100?random=16',
  height: 80,
  width: 80,
  radios: 16,
  color: Colors.blue.withValues(alpha:)(0.3),
)''',
          ),
        ],
      ),
    );
  }

  Widget _buildExampleCard({
    required String title,
    required String description,
    required Widget child,
    required String code,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(height: 16),
            Center(child: child),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                code,
                style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AdvancedExamplesPage extends StatelessWidget {
  const AdvancedExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Advanced Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // Error handling
          _buildExampleCard(
            title: 'Error Handling',
            description: 'Custom error images and fallbacks',
            child: Column(
              children: [
                // Set custom error image
                ElevatedButton(
                  onPressed: () {
                    setImageMultiTypeErrorImage(
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Column(
                          children: [
                            Icon(Icons.error, color: Colors.red, size: 32),
                            SizedBox(height: 8),
                            Text('Custom Error', style: TextStyle(color: Colors.red)),
                          ],
                        ),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Custom error image set!')),
                    );
                  },
                  child: const Text('Set Custom Error Image'),
                ),
                const SizedBox(height: 16),
                // Test with invalid URL
                ImageMultiType(
                  url: 'https://invalid-url-that-will-fail.com/image.jpg',
                  height: 150,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            code: '''// Set custom error image
setImageMultiTypeErrorImage(
  Container(
    decoration: BoxDecoration(
      color: Colors.red[100],
      borderRadius: BorderRadius.circular(8),
    ),
    child: Icon(Icons.error, color: Colors.red),
  ),
);

// Use with invalid URL to see error handling
ImageMultiType(
  url: 'https://invalid-url.com/image.jpg',
  height: 150,
  width: 300,
)''',
          ),

          // File from bytes
          _buildExampleCard(
            title: 'File from Bytes',
            description: 'Display images from byte data',
            child: ImageMultiType(
              url: Uint8List.fromList([
                0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A,
                // This is just a placeholder - not a real PNG
              ]),
              height: 150,
              width: 300,
              fit: BoxFit.cover,
            ),
            code: '''ImageMultiType(
  url: Uint8List.fromList([...]),
  height: 150,
  width: 300,
  fit: BoxFit.cover,
)''',
          ),

          // Async file loading
          _buildExampleCard(
            title: 'Async File Loading',
            description: 'Loading images asynchronously',
            child: ImageMultiType(
              url: Future.delayed(
                const Duration(seconds: 2),
                () => Uint8List.fromList([
                  0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A,
                  // This is just a placeholder - not a real PNG
                ]),
              ),
              height: 150,
              width: 300,
              fit: BoxFit.cover,
            ),
            code: '''ImageMultiType(
  url: Future.delayed(
    Duration(seconds: 2),
    () => Uint8List.fromList([...]),
  ),
  height: 150,
  width: 300,
)''',
          ),

          // Mixed content
          _buildExampleCard(
            title: 'Mixed Content Grid',
            description: 'Combining different image types in a grid',
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                ImageMultiType(
                  url: 'https://picsum.photos/150/150?random=19',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                ImageMultiType(
                  url: Icons.star,
                  height: 150,
                  width: 150,
                  color: Colors.amber,
                ),
                ImageMultiType(
                  url: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.pink, Colors.purple],
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        'Custom',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                ImageMultiType(
                  url: 'https://picsum.photos/150/150?random=20',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            code: '''GridView.count(
  crossAxisCount: 2,
  children: [
    ImageMultiType(url: 'https://picsum.photos/150/150?random=19'),
    ImageMultiType(url: Icons.star, color: Colors.amber),
    ImageMultiType(url: Container(...)),
    ImageMultiType(url: 'https://picsum.photos/150/150?random=20'),
  ],
)''',
          ),
        ],
      ),
    );
  }

  Widget _buildExampleCard({
    required String title,
    required String description,
    required Widget child,
    required String code,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(height: 16),
            child,
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                code,
                style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
