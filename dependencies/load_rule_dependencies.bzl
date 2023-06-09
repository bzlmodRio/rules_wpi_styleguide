load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def load_styleguide_rule_dependencies():
    maybe(
        http_archive,
        name = "rules_pmd",
        sha256 = "920de7134c12a6f5fb465aec0a4684451fe5dd992c5f4aae86551e6307d4cbe2",
        url = "https://github.com/bzlmodRio/rules_pmd/releases/download/6.43.0/rules_pmd-6.43.0.tar.gz",
    )
    maybe(
        http_archive,
        name = "rules_checkstyle",
        sha256 = "08c80009bf6e8af6d3e2e8b6493b86012ea4ab5bf0f62c527d53557552a03d77",
        url = "https://github.com/bzlmodRio/rules_checkstyle/releases/download/10.1/rules_checkstyle-10.1.tar.gz",
    )
    maybe(
        http_archive,
        name = "rules_wpiformat",
        sha256 = "3e5edc1516a8e2edb0c89d7e9e5b90f66e7fb6ec1dccd8c9bb2c12589a746176",
        url = "https://github.com/bzlmodRio/rules_wpiformat/releases/download/2022.30/rules_wpiformat-2022.30.tar.gz",
    )
    maybe(
        http_archive,
        name = "rules_spotless",
        sha256 = "d0a49b0dd1c3e7a4efb7debb1cc39584345e10bf35494cd051d0e4e8a4d54241",
        url = "https://github.com/bzlmodRio/rules_spotless/releases/download/2.34.0/rules_spotless-2.34.0.tar.gz",
    )
