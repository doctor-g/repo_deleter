import 'package:github/github.dart';

Future printAll() async {
  Authentication auth = findAuthenticationFromEnvironment();
  assert(auth.isToken,
      "Authentication token could not be found. Make sure it is set in the environment variables for this execution as GITHUB_TOKEN.");
  var github = GitHub(auth: auth);
  await github.repositories
      .listOrganizationRepositories('bsu-cs315', type: 'all')
      .where((element) => element.name.startsWith('P')) // Captures P0, P1, etc.
      .forEach((element) => _delete(github, element));
}

_delete(GitHub github, Repository element) async {
  await github.repositories.deleteRepository(element.slug());
  print('Deleted ${element.name}');
}
