# v0.1.4 (2017-10-27)

- Only changes in documentation. Also publishing using `flutter packages pub publish` instead of previously incorrect `pub publish` which resulted in a package that reports error on clients' getting the package using `flutter pub get`. Hopefully this change will fix the issue. Below is the full error this new version is trying to fix:

```
flutter_charts_sample_app> flutter pub get      
Running "flutter packages get" in flutter_charts_sample_app...      
Package flutter_charts has no versions that match >=0.1.3 <0.2.0 derived from:
- flutter_charts_sample_app depends on version ^0.1.3
---- Log transcript ----
FINE: Pub 1.25.0-dev.11.0
MSG : Resolving dependencies...
SLVR: Solving dependencies:
    | - flutter_charts ^0.1.3 from hosted (flutter_charts)
    | - flutter any from sdk (flutter) (locked to 0.0.37)
IO  : Get versions from https://pub.dartlang.org/api/packages/flutter_charts.
IO  : HTTP GET https://pub.dartlang.org/api/packages/flutter_charts
    | Accept: application/vnd.pub.v2+json
    | X-Pub-OS: linux
    | X-Pub-Command: get
    | X-Pub-Session-ID: 8D558B08-DBBE-4D24-AB8F-C0EEC36157B2
    | X-Pub-Environment: flutter_cli
    | X-Pub-Reason: direct
    | user-agent: Dart pub 1.25.0-dev.11.0
IO  : HTTP response 200 OK for GET https://pub.dartlang.org/api/packages/flutter_charts
    | took 0:00:00.332100
    | transfer-encoding: chunked
    | date: Tue, 28 Nov 2017 05:32:06 GMT
    | content-encoding: gzip
    | vary: Accept-Encoding
    | via: 1.1 google
    | content-type: application/json
    | x-frame-options: SAMEORIGIN
    | x-xss-protection: 1; mode=block
    | x-content-type-options: nosniff
    | server: nginx
SLVR: * start at root
SLVR: | flutter 0.0.37 from sdk is locked
SLVR: | * select flutter 0.0.37 from sdk
SLVR: | | collection 1.14.3 from hosted is locked
SLVR: | | * select collection 1.14.3 from hosted
SLVR: | | | http 0.11.3+14 from hosted is locked
SLVR: | | | * select http 0.11.3+14 from hosted
SLVR: | | | | async 1.13.3 from hosted is locked
SLVR: | | | | * select async 1.13.3 from hosted
SLVR: | | | | | http_parser 3.1.1 from hosted is locked
SLVR: | | | | | * select http_parser 3.1.1 from hosted
SLVR: | | | | | | charcode 1.1.1 from hosted is locked
SLVR: | | | | | | * select charcode 1.1.1 from hosted
SLVR: | | | | | | | meta 1.1.1 from hosted is locked
SLVR: | | | | | | | * select meta 1.1.1 from hosted
SLVR: | | | | | | | | path 1.4.2 from hosted is locked
SLVR: | | | | | | | | * select path 1.4.2 from hosted
SLVR: | | | | | | | | | sky_engine 0.0.99 from path is locked
SLVR: | | | | | | | | | * select sky_engine 0.0.99 from path
SLVR: | | | | | | | | | | source_span 1.4.0 from hosted is locked
SLVR: | | | | | | | | | | * select source_span 1.4.0 from hosted
SLVR: | | | | | | | | | | | stack_trace 1.8.2 from hosted is locked
SLVR: | | | | | | | | | | | * select stack_trace 1.8.2 from hosted
SLVR: | | | | | | | | | | | | string_scanner 1.0.2 from hosted is locked
SLVR: | | | | | | | | | | | | * select string_scanner 1.0.2 from hosted
SLVR: | | | | | | | | | | | | | typed_data 1.1.4 from hosted is locked
SLVR: | | | | | | | | | | | | | * select typed_data 1.1.4 from hosted
SLVR: | | | | | | | | | | | | | | vector_math 2.0.5 from hosted is locked
SLVR: | | | | | | | | | | | | | | * select vector_math 2.0.5 from hosted
SLVR: | | | | | | | | | | | | | | | inconsistent source "hosted" for flutter:
    | | | | | | | | | | | | | | | |   flutter_charts 0.1.3 from hosted -> flutter >=0.0.20 <0.1.0 from hosted (flutter)
    | | | | | | | | | | | | | | | |   flutter_charts_sample_app 0.0.0 (root) -> flutter any from sdk (flutter)
SLVR: | | | | | | | | | | | | | | | version 0.1.2 of flutter_charts doesn't match >=0.1.3 <0.2.0:
    | | | | | | | | | | | | | | | |   flutter_charts_sample_app 0.0.0 (root) -> flutter_charts ^0.1.3 from hosted (flutter_charts)
SLVR: | | | | | | | | | | | | | | | version 0.1.1 of flutter_charts doesn't match >=0.1.3 <0.2.0:
    | | | | | | | | | | | | | | | |   flutter_charts_sample_app 0.0.0 (root) -> flutter_charts ^0.1.3 from hosted (flutter_charts)
SLVR: | | | | | | | | | | | | | | | version 0.1.0 of flutter_charts doesn't match >=0.1.3 <0.2.0:
    | | | | | | | | | | | | | | | |   flutter_charts_sample_app 0.0.0 (root) -> flutter_charts ^0.1.3 from hosted (flutter_charts)
SLVR: BacktrackingSolver took 0:00:00.516136 seconds.
    | - Tried 1 solutions
    | - Requested 1 version lists
    | - Looked up 1 cached version lists
    | 
FINE: Resolving dependencies finished (0.5s).
ERR : Package flutter_charts has no versions that match >=0.1.3 <0.2.0 derived from:
    | - flutter_charts_sample_app depends on version ^0.1.3
FINE: Exception type: NoVersionException
FINE: package:pub/src/entrypoint.dart 195                                             Entrypoint.acquireDependencies
    | package:pub/src/command/get.dart 38                                             GetCommand.run
    | package:args/command_runner.dart 194                                            CommandRunner.runCommand
    | package:pub/src/command_runner.dart 168                                         PubCommandRunner.runCommand.<fn>
    | dart:async                                                                      new Future.sync
    | package:pub/src/utils.dart 102                                                  captureErrors.<fn>
    | package:stack_trace                                                             Chain.capture
    | package:pub/src/utils.dart 117                                                  captureErrors
    | package:pub/src/command_runner.dart 168                                         PubCommandRunner.runCommand
    | package:pub/src/command_runner.dart 117                                         PubCommandRunner.run
    | /b/build/slave/dart-sdk-linux-dev/build/sdk/third_party/pkg/pub/bin/pub.dart 8  main
    | ===== asynchronous gap ===========================
    | dart:async                                                                      _Completer.completeError
    | package:pub/src/entrypoint.dart 243                                             Entrypoint.acquireDependencies
    | ===== asynchronous gap ===========================
    | dart:async                                                                      _asyncThenWrapperHelper
    | package:pub/src/entrypoint.dart 192                                             Entrypoint.acquireDependencies
    | package:pub/src/command/get.dart 38                                             GetCommand.run
    | package:args/command_runner.dart 194                                            CommandRunner.runCommand
    | ===== asynchronous gap ===========================
    | dart:async                                                                      new Future.microtask
    | package:args/command_runner.dart 142                                            CommandRunner.runCommand
    | package:pub/src/command_runner.dart 168                                         PubCommandRunner.runCommand.<fn>
    | dart:async                                                                      new Future.sync
    | package:pub/src/utils.dart 102                                                  captureErrors.<fn>
    | package:stack_trace                                                             Chain.capture
    | package:pub/src/utils.dart 117                                                  captureErrors
    | package:pub/src/command_runner.dart 168                                         PubCommandRunner.runCommand
---- End log transcript ----
pub get failed (1)
```

# v0.1.3 (2017-10-03)

- Only changes in README, to figure out how to include images (turns out all links must be external)

# v0.1.0 (2017-10-03)

- Initial push. Line chart and (vertical) bar chart support. Various options supported.

# Semantic Version 2.0.0 Conventions

This package follows Semantic Version 2.0.0.
http://semver.org/

Example: 1.2.3 means MAJOR.MINOR.PATCH

Development:         Major version zero (0.y.z) is for initial development. Anything may change at any time. The public API should not be considered stable.

API Stable versions: All versions with the same MAJOR, where MAJOR>0 must have the same API. 
