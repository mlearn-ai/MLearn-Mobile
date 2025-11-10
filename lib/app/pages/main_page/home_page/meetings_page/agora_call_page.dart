import 'dart:async';

import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';

class AgoraCallPage extends StatefulWidget {
  final String channelId;
  final int uid;
  final bool isConsultant;

  const AgoraCallPage({
    super.key,
    required this.channelId,
    required this.uid,
    required this.isConsultant,
  });

  @override
  State<AgoraCallPage> createState() => _AgoraCallPageState();
}

class _AgoraCallPageState extends State<AgoraCallPage> {
  RtcEngine? _engine;
  int? _remoteUid;
  bool _joined = false;
  bool _muted = false;
  bool _cameraOff = false;
  bool _engineReady = false;

  // ⏱ countdown
  int _secondsLeft = 120;
  Timer? _timer;
  bool _timerStarted = false;

  static const _appId = '864a140d82e74f4c9f8d588f78a659a2';
  // App Certificate = OFF бол энд хоосон ('') байж болно.
  static const _tempToken =
      '007eJxTYBCtrvC9s8K/aOGGJqunlTGh77VvKLOZftLnPzcn9J/YKQEFBgszk0RDE4MUC6NUc5M0k2TLNIsUUwuLNHOLRDNTy0Sjlo2CmQ2BjAwbljxiZWSAQBCfnyE3NbUkMy893tDI2NDY0IiBAQB91CHq';

  @override
  void initState() {
    super.initState();
    print(
        'LOG >>> initState: AgoraCallPage channel=${widget.channelId}, uid=${widget.uid}, isConsultant=${widget.isConsultant}');
    _initAgora();
  }

  Future<void> _initAgora() async {
    print('LOG >>> _initAgora эхэллээ');

    // 1️⃣ Permission
    final statuses = await [
      Permission.microphone,
      Permission.camera,
    ].request();

    print(
        'LOG >>> Permission result: camera=${statuses[Permission.camera]}, mic=${statuses[Permission.microphone]}');

    if (statuses[Permission.camera] != PermissionStatus.granted ||
        statuses[Permission.microphone] != PermissionStatus.granted) {
      print('LOG >>> Permission олгогдоогүй тул гарав');
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Камер, микрофоны зөвшөөрөл хэрэгтэй.'),
        ),
      );

      Navigator.of(context).pop();
      return;
    }

    // 2️⃣ Engine initialize
    final engine = createAgoraRtcEngine();
    print('LOG >>> Engine үүсгэлээ');

    await engine.initialize(const RtcEngineContext(appId: _appId));
    print('LOG >>> Engine initialize дууслаа');

    await engine.setChannelProfile(ChannelProfileType.channelProfileCommunication);
    await engine.enableVideo();
    await engine.enableLocalVideo(true);

    // 🔺 Нягтрал / fps / bitrate тохиргоо (720p)
    await engine.setVideoEncoderConfiguration(
       const VideoEncoderConfiguration(
      dimensions: VideoDimensions(width: 1920, height: 1080), // ✅ 1080p
      frameRate: 30,
      bitrate: 2000, // 2 Mbps орчим тохиромжтой
      ),
    );
    print('LOG >>> Video encoder config 1080p тохирлоо');

    // 3️⃣ Event handler-ууд
    engine.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (connection, elapsed) {
          print(
              'LOG >>> ✅ onJoinChannelSuccess uid=${connection.localUid}, elapsed=$elapsed');
          setState(() {
            _joined = true;
          });
          _startCountdown();
        },
        onUserJoined: (connection, remoteUid, elapsed) {
          print(
              'LOG >>> ✅ onUserJoined remoteUid=$remoteUid, elapsed=$elapsed');
          setState(() {
            _remoteUid = remoteUid;
          });
        },
        onUserOffline: (connection, remoteUid, reason) {
          print(
              'LOG >>> ⚠️ onUserOffline remoteUid=$remoteUid, reason=$reason');
          setState(() {
            _remoteUid = null;
          });
        },
        onError: (err, msg) {
          print('LOG >>> ❌ AGORA ERROR: $err | $msg');
        },
      ),
    );
    print('LOG >>> Event handler бүртгэгдлээ');

    // 4️⃣ Local preview эхлүүлэх
    await engine.startPreview();
    print('LOG >>> startPreview() дуудагдлаа');

    // 5️⃣ Channel-д нэгдэх
    await engine.joinChannel(
      token: _tempToken, // App Certificate = OFF бол '' болгож болно
      channelId: widget.channelId,
      uid: widget.uid,
      options: const ChannelMediaOptions(
        publishCameraTrack: true,
        publishMicrophoneTrack: true,
        autoSubscribeAudio: true,
        autoSubscribeVideo: true,
      ),
    );
    print(
        'LOG >>> joinChannel() дуудлаа: channel=${widget.channelId}, uid=${widget.uid}');

    setState(() {
      _engine = engine;
      _engineReady = true;
    });
    print('LOG >>> Engine бэлэн боллоо (_engineReady = true)');
  }

  // ⏱ Countdown эхлүүлэх
  void _startCountdown() {
    if (_timerStarted) return;
    _timerStarted = true;
    _secondsLeft = 120;
    print('LOG >>> Countdown 120 секунд эхэллээ');

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }

      setState(() {
        _secondsLeft--;
      });

      print('LOG >>> Countdown: $_secondsLeft сек үлдлээ');

      if (_secondsLeft <= 0) {
        timer.cancel();
        _endCall(auto: true);
      }
    });
  }

  // 📞 Дуудлага дуусгах
  void _endCall({bool auto = false}) {
    print('LOG >>> Call end (${auto ? 'AUTO 10s' : 'BUTTON'})');
    _timer?.cancel();
    _timer = null;
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    print('LOG >>> dispose: call page хаагдаж байна');
    _timer?.cancel();
    _engine?.leaveChannel();
    _engine?.release();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(
        'LOG >>> build() дуудагдлаа: engineReady=$_engineReady, joined=$_joined, remoteUid=$_remoteUid');

    if (!_engineReady || _engine == null) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.isConsultant ? 'Багшийн дуудлага' : 'Сурагчийн дуудлага',
        ),
      ),
      body: Stack(
        children: [
          // 🔹 ТОМ ДЭЛГЭЦ: НӨГӨӨ ХҮНИЙ КАМЕР (remote)
          Positioned.fill(
            child: _remoteUid != null
                ? AgoraVideoView(
                    controller: VideoViewController.remote(
                      rtcEngine: _engine!,
                      canvas: VideoCanvas(uid: _remoteUid),
                      connection: RtcConnection(
                        channelId: widget.channelId,
                      ),
                    ),
                  )
                : Container(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        _joined
                            ? 'Нөгөө тал холбогдохыг хүлээж байна...'
                            : 'Сувагт нэгдэж байна...',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
          ),

          // 🔹 ЖИЖИГ ЦОНХ: ЧИ ӨӨРӨӨ (local preview) – үргэлж харагдана
          Positioned(
            right: 16,
            top: 16,
            child: SizedBox(
              width: 110,
              height: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: _cameraOff
                    ? Container(
                        color: Colors.black54,
                        child: const Center(
                          child: Icon(
                            Icons.videocam_off,
                            color: Colors.white70,
                          ),
                        ),
                      )
                    : AgoraVideoView(
                        controller: VideoViewController(
                          rtcEngine: _engine!,
                          // 🔺 Local preview-д ихэвчлэн uid = 0 ашигладаг
                          canvas: const VideoCanvas(uid: 0),
                        ),
                      ),
              ),
            ),
          ),

          // 🔹 Дээр талын countdown
          Positioned(
            top: 12,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'Дуудлага: $_secondsLeft сек',
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
          ),

          // 🔹 Доод control bar
          Positioned(
            left: 0,
            right: 0,
            bottom: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconButton(
                  icon: _muted ? Icons.mic_off : Icons.mic,
                  color: _muted ? Colors.red : Colors.white,
                  onTap: _engineReady
                      ? () {
                          setState(() => _muted = !_muted);
                          print('LOG >>> 🎤 Mic toggle: muted=$_muted');
                          _engine!.muteLocalAudioStream(_muted);
                        }
                      : null,
                ),
                const SizedBox(width: 24),
                _buildIconButton(
                  icon: _cameraOff ? Icons.videocam_off : Icons.videocam,
                  color: _cameraOff ? Colors.red : Colors.white,
                  onTap: _engineReady
                      ? () {
                          setState(() => _cameraOff = !_cameraOff);
                          print('LOG >>> 📷 Camera toggle: off=$_cameraOff');
                          _engine!.muteLocalVideoStream(_cameraOff);
                        }
                      : null,
                ),
                const SizedBox(width: 24),
                _buildIconButton(
                  icon: Icons.call_end,
                  color: Colors.red,
                  onTap: () => _endCall(auto: false),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton({
    required IconData icon,
    required Color color,
    required VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 26,
        backgroundColor: Colors.white24,
        child: Icon(icon, color: color, size: 28),
      ),
    );
  }
}
