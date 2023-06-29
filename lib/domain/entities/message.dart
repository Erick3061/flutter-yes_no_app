enum FRomWho { me, hers }

class Message {
  final String text;
  final String? imageUrl;
  final FRomWho fRomWho;

  Message({
    required this.text,
    this.imageUrl,
    required this.fRomWho,
  });
}
