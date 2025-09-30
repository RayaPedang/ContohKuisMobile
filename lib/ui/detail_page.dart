import 'package:flutter/material.dart';
import 'package:template_quiz_mobile_si_b/models/game_model.dart';

class DetailPage extends StatefulWidget {
  final GameModel game;
  const DetailPage({super.key, required this.game});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late int _currentLikes;
  bool _isLiked = false;

  @override
  void initState() {
    super.initState();
    _currentLikes = widget.game.totalLike;
  }

  void _toggleLike() {
    setState(() {
      if (_isLiked) {
        _currentLikes -= 1;
      } else {
        _currentLikes += 1;
      }
      _isLiked = !_isLiked;
      widget.game.totalLike = _currentLikes;
    });
  }

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue, size: 20),
          const SizedBox(width: 10),
          Text(
            "$label:",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const Spacer(),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Game"),
        backgroundColor: Colors.blue,
        elevation: 0,
        actions: [
          IconButton(
            //tombol like
            onPressed: _toggleLike,
            icon: Icon(
              _isLiked ? Icons.favorite : Icons.favorite_border,
              color: _isLiked ? Colors.red : Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.game.gameImg,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 250,
                color: Colors.grey.shade300,
                child: const Center(
                  child: Text('Image Error', style: TextStyle(fontSize: 20)),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Game
                  Text(
                    widget.game.gameName,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.favorite, color: Colors.red),
                      const SizedBox(width: 5),
                      Text(
                        '$_currentLikes Likes',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),

                  const Divider(height: 30, color: Colors.grey),
                  const Text(
                    "Deskripsi",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.game.gameDesc,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const Divider(height: 30, color: Colors.grey),
                  _buildDetailRow(
                    Icons.business,
                    "Publisher",
                    widget.game.gamePublisher,
                  ),
                  _buildDetailRow(
                    Icons.calendar_today,
                    "Tanggal Rilis",
                    widget.game.gamePublishDate,
                  ),

                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Fitur Kunjungi Halaman belum tersedia!",
                            ),
                          ),
                        );
                      },
                      icon: const Icon(Icons.download, color: Colors.white),
                      label: const Text(
                        "Unduh / Beli Game",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade700,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
