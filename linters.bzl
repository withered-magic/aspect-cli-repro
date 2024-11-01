load("@aspect_rules_lint//lint:eslint.bzl", "lint_eslint_aspect")

eslint = lint_eslint_aspect(
    binary = "@@//:eslint",
    configs = [
        "@@//:eslintrc",
        "@@//:tsconfig",
    ],
)
