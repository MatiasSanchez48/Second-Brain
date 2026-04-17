import 'package:flutter/material.dart';
import 'package:second_brain/utils/extensions/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _Appbar(),
            const SizedBox(height: 10),
            Text(
              'DAILY REFLECTION',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Curate your thoughts \ninto wisdom.',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: colorScheme.scrim,
              ),
            ),
            const SizedBox(height: 15),
            Card(
              surfaceTintColor: colorScheme.onPrimary,
              elevation: .1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/149/149071.png',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: colorScheme.scrim,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("asdadsadasdasdada"),
                        Text("adsadadadadadadadadadadaadasd"),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.thumb_up_alt_outlined,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.thumb_down_alt_outlined,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Appbar extends StatelessWidget {
  const _Appbar();

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;

    return Row(
      children: [
        Expanded(
          child: IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(
              Icons.menu_outlined,
              size: 30,
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Text(
            'Ethereal Archive',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: colorScheme.scrim,
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              size: 32,
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/149/149071.png',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
