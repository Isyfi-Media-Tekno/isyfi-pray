import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../app/providers/app_provider.dart';
import '../../services/local_server_service.dart';

/// Full-screen tools page: QR for the CMS, plus debug time travel.
///
/// On Android TV it is opened by the remote (long-press OK / Menu) through
/// [RemoteKeyDetector]. On a phone/tablet it is opened by shaking the device
/// (twice) through [ShakeToConfigListener], so a mobile build can be tested
/// without a remote or ADB.
///
/// The QR encodes the config-server URL (auth token baked in) so anyone on the
/// same Wi-Fi can open the editor from their own device. In debug builds the
/// screen also owns the prayer time-travel buttons (Syuruq / Maghrib), which
/// used to float over the home screen.
class ConfigMenuScreen extends StatefulWidget {
  const ConfigMenuScreen({super.key});

  @override
  State<ConfigMenuScreen> createState() => _ConfigMenuScreenState();
}

class _ConfigMenuScreenState extends State<ConfigMenuScreen> {
  String? _authenticatedUrl;
  String? _localUrl;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _resolveUrls();
  }

  Future<void> _resolveUrls() async {
    setState(() => _loading = true);
    final LocalServerService? server = LocalServerService.instance;
    final String? authenticated = await server?.authenticatedUrl;
    final String? local = await server?.localUrl;
    if (!mounted) return;
    setState(() {
      _authenticatedUrl = authenticated;
      _localUrl = local;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: kDebugMode ? _buildDebugFabs() : null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Row(
            children: [
              _buildQrCard(),
              const SizedBox(width: 36),
              Expanded(child: _buildInfoColumn()),
            ],
          ),
        ),
      ),
    );
  }

  /// Debug-only time travel, mirrors the old home-screen FABs. Tapping one
  /// jumps the clock and closes this page so the transition is visible.
  Widget _buildDebugFabs() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton.small(
          heroTag: 'btnSyuruq',
          backgroundColor: Colors.orange.withValues(alpha: 0.6),
          tooltip: 'Uji waktu Syuruq',
          onPressed: () => _runDebugTool(
            (app) => app.enableFakeSyuruqTime(),
          ),
          child: const Icon(Icons.wb_sunny),
        ),
        const SizedBox(height: 10),
        FloatingActionButton.small(
          heroTag: 'btnJumat',
          backgroundColor: Colors.purple.withValues(alpha: 0.6),
          tooltip: 'Uji waktu Jumat',
          onPressed: () => _runDebugTool(
            (app) => app.enableFakeJumatTime(),
          ),
          child: const Icon(Icons.mosque),
        ),
        const SizedBox(height: 10),
        FloatingActionButton(
          heroTag: 'btnMaghrib',
          backgroundColor: Colors.red.withValues(alpha: 0.5),
          tooltip: 'Uji waktu Maghrib',
          onPressed: () => _runDebugTool(
            (app) => app.enableFakeTime(),
          ),
          child: const Icon(Icons.fast_forward),
        ),
      ],
    );
  }

  void _runDebugTool(void Function(AppProvider app) action) {
    action(context.read<AppProvider>());
    Navigator.of(context).maybePop();
  }

  Widget _buildQrCard() {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: _authenticatedUrl == null
          ? SizedBox(
              width: 260,
              height: 260,
              child: Center(
                child: _loading
                    ? const CircularProgressIndicator()
                    : const Text('Tidak ada alamat'),
              ),
            )
          : QrImageView(
              data: _authenticatedUrl!,
              version: QrVersions.auto,
              size: 260,
              eyeStyle: const QrEyeStyle(
                eyeShape: QrEyeShape.square,
                color: Colors.black,
              ),
              dataModuleStyle: const QrDataModuleStyle(
                dataModuleShape: QrDataModuleShape.square,
                color: Colors.black,
              ),
            ),
    );
  }

  Widget _buildInfoColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "PENGATURAN TV",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 30,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Scan QR atau buka URL di HP / laptop yang terhubung ke Wi-Fi "
          "yang sama:",
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.7),
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 12),
        SelectableText(
          _authenticatedUrl ?? (_loading ? 'Mencari alamat…' : '—'),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
        if (_localUrl != null && _localUrl != _authenticatedUrl) ...[
          const SizedBox(height: 4),
          SelectableText(
            _localUrl!,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.5),
              fontSize: 13,
            ),
          ),
        ],
        const SizedBox(height: 16),
        TextButton.icon(
          onPressed: _loading ? null : _resolveUrls,
          icon: const Icon(Icons.refresh),
          label: const Text("Muat ulang alamat"),
        ),
        const Spacer(),
        Text(
          "Tutup: tekan lama tombol OK / tombol Menu pada remote, atau "
          "goyang HP sekali lagi.",
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.5),
            fontSize: 13,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          "Isyfi Pray — dibuat oleh Isyfi Media Tekno.",
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.5),
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
