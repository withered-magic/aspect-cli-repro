## Repro instructions
1. Finish BuildBuddy configuration by adding `build --remote_header=x-buildbuddy-api-key=<YOUR_KEY_HERE>` to `$HOME/.bazelrc`
2. Run `aspect lint //:file1`, where `aspect` is the most recent release available on GitHub, observe that the command hangs and eventually fails with

```
Error: failed to find lint results file /home/<USER>/aspect-cli-repro/bazel-out/k8-fastbuild/bin/file1.AspectRulesLintESLint.out.exit_code: stat /home/<USER>/aspect-cli-repro/bazel-out/k8-fastbuild/bin/file1.AspectRulesLintESLint.out.exit_code: no such file or directory
```

Note: You may need to populate the remote cache first with `aspect lint //:file1`, then run `bazel clean` and re-run `aspect lint //:file1` again to repro.

3. Run `aspect lint //:file1`, where `aspect` is built from https://github.com/withered-magic/aspect-cli/tree/withered-magic/fix-read-bep-file, observe that the command completes successfully.