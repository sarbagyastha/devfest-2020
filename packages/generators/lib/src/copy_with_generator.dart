import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:generators/annotations.dart';
import 'package:source_gen/source_gen.dart';

class CopyWithGenerator extends GeneratorForAnnotation<CopyWith> {
  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final classElement = element as ClassElement;
    final className = classElement.name;
    final fields = classElement.fields;

    final copyWithBuffer = StringBuffer()
      ..writeln('extension ${className}CopyWithExtension on $className {')
      ..writeln('$className copyWith({')
      ..writeAll(fields.map((f) => '${f.type} ${f.name},'))
      ..writeln('}) {')
      ..writeln('return $className(')
      ..writeAll(fields.map((f) => '${f.name}: ${f.name} ?? this.${f.name},'))
      ..write(');}}');
    return copyWithBuffer.toString();
  }
}

// extension UserModelCopyWithExtension on UserModel {
//   UserModel copyWith({
//     String name,
//     int age,
//   }) {
//     return UserModel(
//       name: name ?? this.name,
//       age: age ?? this.age,
//     );
//   }
// }
