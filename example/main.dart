import 'package:flutter_chat_types/flutter_chat_types.dart' show TextMessage, User;

void main() {
  var user = const User(id: 'authorId', createdAt: null, firstName: '', lastName: '');
  var message = TextMessage(
    author: user,
    id: 'id',
    text: 'text',
    createdAt: DateTime.now(),
    metadata: {},
    roomId: '',
  );
  // ignore: avoid_print
  print(message.toJson());
  final json = {
    'author': {'id': 'authorId'},
    'id': 'id',
    'text': 'text',
  };
  // ignore: avoid_print
  print(TextMessage.fromJson(json).toJson());
}
