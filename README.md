# repo_deleter

A simple tool for deleting GitHub repositories.

Make sure the `GITHUB_TOKEN` environment variable is set to an authorization key that
includes the `repo` and `delete_repo` permissions. For example, this can be set in the run
configuration from within Android Studio. 

The current implementation looks for repos that start with "P" since in CS315,
all the projects are prefixed "P0", "P1", _etc._ *This is dangerous and should
be used with caution*. Update the code to delete only the things you want.