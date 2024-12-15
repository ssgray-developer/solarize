import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/material.dart';
import 'package:solarize/presentation/front_pecvd/page/front_pecvd.dart';
import '../widgets/initials_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<NavigationPaneItem> items = [
    PaneItem(
      icon: InitialsIcon(initials: 'TXT'),
      title: const Text('Texturing'),
      body: Container(),
      enabled: false,
    ),
    // PaneItemSeparator(),
    PaneItem(
      icon: InitialsIcon(initials: 'BD'),
      title: const Text('Boron Diffusion'),
      // infoBadge: const InfoBadge(source: Text('8')),
      body: Container(),
      enabled: false,
    ),
    PaneItem(
      icon: InitialsIcon(initials: 'BSG'),
      title: const Text('BSG Removal'),
      body: Container(),
      enabled: false,
    ),
    PaneItem(
      icon: InitialsIcon(initials: 'LP'),
      title: const Text('LPCVD'),
      body: Container(),
      enabled: false,
    ),
    PaneItem(
      icon: InitialsIcon(initials: 'PD'),
      title: const Text('Phosphorus Diffusion'),
      body: Container(),
      enabled: false,
    ),
    PaneItem(
      icon: InitialsIcon(initials: 'RCA'),
      title: const Text('RCA & PSG Removal'),
      body: Container(),
      enabled: false,
    ),
    PaneItem(
      icon: InitialsIcon(initials: 'ALD'),
      title: const Text('ALD'),
      body: Container(),
      enabled: false,
    ),
    PaneItem(
      icon: InitialsIcon(
        initials: 'FPE',
        textColor: Colors.black,
      ),
      title: const Text(
        'Front PECVD',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      body: FrontPECVD(),
    ),
    PaneItem(
      icon: InitialsIcon(initials: 'BPE'),
      title: const Text('Back PECVD'),
      body: Container(),
      enabled: false,
    ),
  ];

  List<Widget> itemBodies = [
    Container(), // Body for Texturing
    Container(), // Body for Boron Diffusion
    Container(), // Body for BSG Removal
    Container(), // Body for LPCVD
    Container(), // Body for Phosphorus Diffusion
    Container(), // Body for RCA & PSG Removal
    Container(), // Body for ALD
    FrontPECVD(), // Body for Front PECVD
    Container(), // Body for Back PECVD
  ];

  int selectedIndex = 7;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      paneBodyBuilder: (item, child) {
        return child!;
      },
      appBar: NavigationAppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Solarize',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        ),
      ),
      pane: NavigationPane(
        displayMode: PaneDisplayMode.auto,
        selected: selectedIndex,
        size: NavigationPaneSize(compactWidth: 60, openWidth: 200),
        items: items,
        onChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
