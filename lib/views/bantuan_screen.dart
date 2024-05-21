import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bantuan'),
      ),
      body: ChatColumn(), // Gunakan widget ChatColumn untuk menampilkan obrolan
    );
  }
}

class ChatColumn extends StatefulWidget {
  @override
  _ChatColumnState createState() => _ChatColumnState();
}

class _ChatColumnState extends State<ChatColumn> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
      // Misalnya, untuk sekarang, semua pesan dianggap sebagai pesan dari pengguna
      isUserMessage: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: ListView.builder(
            reverse: true,
            itemCount: _messages.length,
            itemBuilder: (_, int index) => _messages[index],
          ),
        ),
        Divider(height: 1.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.white, // Mengganti dengan warna latar belakang yang diinginkan
          ),
          child: _buildTextComposer(),
        ),
      ],
    );
  }

  Widget _buildTextComposer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: InputDecoration.collapsed(hintText: "Kirim pesan"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            child: IconButton(
              icon: Icon(Icons.send),
              onPressed: () => _handleSubmitted(_textController.text),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({required this.text, required this.isUserMessage});

  final String text;
  final bool isUserMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment:
            isUserMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: <Widget>[
          isUserMessage
              ? SizedBox() // Jarak kosong untuk menyamarkan ikon pengguna
              : CircleAvatar(
                  backgroundImage: AssetImage('assets/admin_avatar.png'),
                ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: isUserMessage
                  ? Colors.blue // Mengganti dengan warna latar belakang yang diinginkan
                  : Colors.grey[200],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (!isUserMessage)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      'Bantuan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                Text(
                  text,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          isUserMessage
              ? CircleAvatar(
                  backgroundImage: AssetImage('assets/user_avatar.png'),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
