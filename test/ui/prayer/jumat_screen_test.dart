import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jam_sholat_tv/app/providers/config_provider.dart';
import 'package:jam_sholat_tv/ui/prayer/jumat_screen.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('renders the keep-silent logo without overflow', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => ConfigProvider(),
        child: const MaterialApp(home: JumatScreen()),
      ),
    );
    await tester.pump();

    expect(tester.takeException(), isNull);
    expect(find.byType(SvgPicture), findsOneWidget);
  });
}
