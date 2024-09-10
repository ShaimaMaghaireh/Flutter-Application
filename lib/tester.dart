import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TravelAppScreen(),
    );
  }
}

class TravelAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeaderSection(),
            _buildSearchSection(),
            _buildPopularPlacesSection(),
            _buildPlaceDetailSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
      color: Colors.blue[800],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Travel',
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Find Your Dream Destination With Us',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchSection() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi, David 👋',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Explore the world',
            style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search places',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.tune, color: Colors.grey[700]),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPopularPlacesSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular places',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'View all',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCategoryButton('Most Viewed', true),
              _buildCategoryButton('Nearby', false),
              _buildCategoryButton('Latest', false),
            ],
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildPlaceCard('Mount Fuji', 'Tokyo, Japan', 'assets/mount_fuji.jpg', 4.8),
                SizedBox(width: 10),
                _buildPlaceCard('Andes Mountain', 'South, America', 'assets/andes_mountain.jpg', 4.5),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(String title, bool isSelected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.grey[200],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Widget _buildPlaceCard(String name, String location, String imageUrl, double rating) {
    return Container(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            // child: Image.asset(imageUrl, fit: BoxFit.cover, height: 120, width: 160),
          child: Image.network('https://i0.wp.com/tokyotreatblog.wpcomstaging.com/wp-content/uploads/2024/02/mt-fuji-japan-thumbnail.webp?fit=1024%2C683&ssl=1'),
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          Text(location, style: TextStyle(color: Colors.grey[600])),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow[700], size: 14),
              SizedBox(width: 5),
              Text(rating.toString(), style: TextStyle(color: Colors.grey[600])),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceDetailSection() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network('https://www.travelanddestinations.com/wp-content/uploads/2020/09/Mount-Fuji-views-with-Cherry-Blossoms.jpg', fit: BoxFit.cover),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Andes Mountain',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '\$230',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text('South, America', style: TextStyle(color: Colors.grey[600])),
          SizedBox(height: 20),
          Row(
            children: [
              _buildIconText(Icons.access_time, '8 hours'),
              SizedBox(width: 20),
              _buildIconText(Icons.thermostat, '16°C'),
              SizedBox(width: 20),
              _buildIconText(Icons.star, '4.5'),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and large salt flats.',
            style: TextStyle(color: Colors.grey[600]),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              // primary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 15.0),
            ),
            child: Center(
              child: Text(
                'Book Now',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey[600], size: 16),
        SizedBox(width: 5),
        Text(text, style: TextStyle(color: Colors.grey[600])),
      ],
    );
  }
}