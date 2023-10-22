// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:allen/secrests.dart';
import 'package:http/http.dart' as http;

class OpenAIService {
  Future<String> isArtPromptAPI(String prompt) async {
    try {
      final res = await http.post(
        Uri.parse('https://api.openai.com/v1/chat/completions'),
        headers: {
          'Content-Type': 'application/json'
              "Authorization: Bearer $openAPIKEY"
        },
        body: jsonEncode({
          "model": "gpt-3.5-turbo",
          "messages": [
            {
              'role': 'user',
              'content':
                  'Does this message want to generate an AI picture , image , art or anything similar $prompt . simply answer with a yes or no.',
            }
          ],
        }),
      );
      print(res.body);
      if (res.statusCode == 200) {
        print('yay');
      }
       return 'AI';
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> chatGPTAPI(String prompt) async {
    return 'CHATGPT';
  }

  Future<String> dallEAPI(String prompt) async {
    return 'DALL-E';
  }
}
