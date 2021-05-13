import 'executable.dart';

mixin CallToExecute<OUTPUT extends Object> on Executable<OUTPUT> {
  OUTPUT call() => execute();
}
