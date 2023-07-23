
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'src/common/widget/app.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(),
      ),
    );
