import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CommonNavBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonNavBar({Key? key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context); // Access the theme data

    return AppBar(
      backgroundColor: theme.primaryColor,
      // Set background color to theme color
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.white, // Set background color to white
          child: Icon(
            Icons.person,
            color: theme.primaryColor, // Set icon color to match theme
            size: 32.0,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white, // Set background color to white
            child: Icon(
              Icons.menu,
              color: theme.primaryColor, // Set icon color to match theme
              size: 32.0,
            ),
          ),
        ),
      ],
      centerTitle: true,
      // Center align the title
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: 'https://i.postimg.cc/02pnpHXG/logo-1.png',
            placeholder: (context, url) => const CircularProgressIndicator(),
            // Placeholder widget
            errorWidget: (context, url, error) => const Icon(Icons.error),
            width: Adaptive.w(50),
            fit: BoxFit
                .scaleDown, // Ensure the logo fits within the available space
          ),
        ],
      ),
    );
  }
}
