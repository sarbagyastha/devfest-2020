import 'package:build/build.dart';
import 'package:generators/src/copy_with_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder copyWithGenerator(BuilderOptions options) => SharedPartBuilder(
      [CopyWithGenerator()],
      'copy_with',
    );
