import 'package:flutter/material.dart';
import 'package:scholar_chat/constant.dart';
import 'package:scholar_chat/models/message.dart';
import 'package:scholar_chat/widgets/chat_buble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);

  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollections);
  TextEditingController controller = TextEditingController();

  static String id = 'ChatPage';

  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {

   var email = ModalRoute.of(context)!.settings.arguments ;

    return StreamBuilder<QuerySnapshot>(
      stream : messages.orderBy(kCreatedAt, descending: true).snapshots(),
      builder: (context, snapshot) {
      if (snapshot.hasData){
        List<Message> messagesList = [];
        for (int i = 0 ; i<snapshot.data!.docs.length; i++)
        {
          messagesList.add(Message.fromJson(snapshot.data!.docs[i]));
        };
        return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kPrimaryColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                kLogo,
                height: 50,
              ),
              Text('Chat'),
            ],
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                controller: _controller,
                itemCount: messagesList.length,
                itemBuilder: (context, index) {
                  return messagesList[index].id == email ? ChatBuble(
                    message: messagesList[index],
                  ) : ChatBubleForFriend(message: messagesList[index]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: controller,
                onSubmitted: (data) {
                  messages.add({
                    kMessage: data,
                    kCreatedAt: DateTime.now(),
                    'id': email,
                  });
                  controller.clear();
                  _controller.animateTo(
                      0,
                      curve: Curves.easeOut,
                      duration: const Duration(milliseconds: 500),
                    ); 
                },
                decoration: InputDecoration(
                  hintText: 'Send message',
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ); 
      } else {
        return Text('loading...');
      }
    },
    );
  }
}
