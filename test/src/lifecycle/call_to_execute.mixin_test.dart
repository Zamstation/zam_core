import 'package:test/test.dart';
import 'package:zam_core/zam_core.dart' show CallToExecute, Executable;

void main() {
  group('CallToExecute:', () {
    final cmd = DeployCommand();
    final output = 'execute called';

    test('Call should execute should do the same thing', () {
      expect(cmd.execute(), output);
      expect(cmd(), output);
    });
  });
}

class DeployCommand extends Executable<String> with CallToExecute {
  @override
  String execute() {
    return 'execute called';
  }
}
