# e_soko

A new Flutter project.

THEME DECLARATION
In the the main.dart in the MaterialApp()
    theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
            fontFamily: GoogleFonts.raleway().fontFamily,
        ),

Add this under the widget build to call for theme
    final theme = Theme.of(context);
    // ↓ Add this.
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

And this under style to pick desired theme
    color: theme.colorScheme.onBackground,


CHANGE DEFAULT LAUNCHER ICON
Add in dependancies
    flutter_launcher_icons: 

Add outside depencancies on the margin no indenting
    flutter_icons:
        image_path: "assets/icons/icon.png"
        android: true
        ios: true

Finally run 
    flutter pub run flutter_launcher_icons

SPLASH SCREEN ANIMATION
Text
Add to dependancies
    flutter pub add flutter_animate

To use add .animate after target wigdet
    Text('Hello World).animate(),

Image
Add to dependancies
    flutter pub add lottie

To use add Lottie()
    Lottie.asset('path to asset')

Page switch on animation load
    onLoaded: (composition) {
        // When the animation is loaded, navigate to the next page.
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NextPage()),
        );
    },
N/B: Moving to fast animation doesn't complete load up

Used a the animation as a button by setting an onclick function
To be reviewed later
