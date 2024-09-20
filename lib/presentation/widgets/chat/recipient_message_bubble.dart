import 'package:flutter/material.dart';

class RecipientMessageBubble extends StatelessWidget {


  const RecipientMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

  final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("The One Piece is real!", style: TextStyle(color: Colors.white),),
          ),
        ),

        const SizedBox(height: 5,),

        const _ImageBubble(),

        const SizedBox(height: 10,),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://media.tenor.com/OwCpyCczAwkAAAAM/chopper.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) { 
          if(loadingProgress == null) {
            return child;
          }

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text("Monkey D. Luffy is sending an image..."),
          );
        }
      ),
    );
  }
}