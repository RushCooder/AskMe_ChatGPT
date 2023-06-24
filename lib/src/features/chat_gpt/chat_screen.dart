import 'package:chat_gpt_02/src/core/utils/constant.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'chatmessage.dart';
import 'threedots.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<ChatMessage> _messages = [];
  late OpenAI? chatGPT;
  bool _isImageSearch = false;

  bool _isTyping = false;

  @override
  void initState() {
    chatGPT = OpenAI.instance.build(
        token: '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',
        baseOption: HttpSetup(receiveTimeout: 60000));
    super.initState();
  }

  @override
  void dispose() {
    chatGPT?.close();
    chatGPT?.genImgClose();
    super.dispose();
  }

  void _sendMessage() async {
    if (_controller.text.isEmpty) return;
    ChatMessage message = ChatMessage(
      text: _controller.text,
      sender: "user",
      isImage: false,
    );

    setState(() {
      _messages.insert(0, message);
      _isTyping = true;
    });

    _controller.clear();

    if (_isImageSearch) {
      final request = GenerateImage(
        message.text,
        1,
        size: "256x256",
      );

      final response = await chatGPT!.generateImage(request);
      Vx.log(response!.data!.last!.url!);
      insertNewData(response.data!.last!.url!, isImage: true);
    } else {
      final request =
          CompleteText(prompt: message.text, model: kTranslateModelV3);

      final response = await chatGPT!.onCompleteText(request: request);
      Vx.log(response!.choices[0].text);
      insertNewData(response.choices[0].text, isImage: false);
    }
  }

  void insertNewData(String response, {bool isImage = false}) {
    ChatMessage botMessage = ChatMessage(
      text: response,
      sender: "AskMe",
      isImage: isImage,
    );

    setState(() {
      _isTyping = false;
      _messages.insert(0, botMessage);
    });
  }

  Widget _buildTextComposer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          // child: TextField(
          //   controller: _controller,
          //   onSubmitted: (value) => _sendMessage(),
          //   decoration: InputDecoration(
          //     contentPadding:
          //         EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          //     hintText: "Send a message",
          //     filled: true,
          //     fillColor: Colors.grey,
          //   ),
          // ),
          child: Container(
            height: 50.0,
            child: TextField(
              controller: _controller,
              onSubmitted: (value) => _sendMessage(),
              decoration: InputDecoration(
                border: InputBorder.none, // Remove the border color
                hintText: "Send a message",
                filled: true,
                fillColor: const Color.fromARGB(255, 230, 229, 229),
              ),
            ),
          ),
        ),
        ButtonBar(
          children: [
            InkWell(
              onTap: () {
                _isImageSearch = false;
                _sendMessage();
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: primaryColor),
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              ),
            )
            // IconButton(
            //   icon: const Icon(Icons.send),
            //   onPressed: () {
            //     _isImageSearch = false;
            //     _sendMessage();
            //   },
            // ),
            // TextButton(
            //     onPressed: () {
            //       _isImageSearch = true;
            //       _sendMessage();
            //     },
            //     child: const Text("Generate Image"))
          ],
        ),
      ],
    ).p8();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Flexible(
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                reverse: true,
                padding: Vx.m8,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return _messages[index];
                },
              ),
            ),
          ),
          if (_isTyping) const ThreeDots(),
          const Divider(
            height: 1.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: context.cardColor,
            ),
            child: _buildTextComposer(),
          )
        ],
      ),
    ));
  }
}
