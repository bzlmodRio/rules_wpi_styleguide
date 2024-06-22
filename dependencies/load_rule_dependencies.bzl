load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def load_styleguide_rule_dependencies():
    maybe(
        http_archive,
        name = "rules_pmd",
        sha256 = "e0ac8b48e5ef240d4f5103431dde0351feedde55353777eb89601604781fced9",
        url = "https://github.com/bzlmodRio/rules_pmd/releases/download/7.2.0/rules_pmd-7.2.0.tar.gz",
    )
    maybe(
        http_archive,
        name = "rules_checkstyle",
        sha256 = "7194b5ceb525b997d13e0b37604df2c057ea99e15fd88501cd00847dd6b41697",
        url = "https://github.com/bzlmodRio/rules_checkstyle/releases/download/10.12.2/rules_checkstyle-10.12.2.tar.gz",
    )
    maybe(
        http_archive,
        name = "rules_wpiformat",
        sha256 = "af167c15cfc3430901b0d6a19ed949b306887b1b079eabb24789a54d82371a62",
        url = "https://github.com/bzlmodRio/rules_wpiformat/releases/download/2024.34/rules_wpiformat-2024.34.tar.gz",
    )
    maybe(
        http_archive,
        name = "rules_spotless",
        sha256 = "984b7b6f7da7b1963161812cf2a735e6e59958efdb641e2751af088ff4a03b97",
        url = "https://github.com/bzlmodRio/rules_spotless/releases/download/2.40.0/rules_spotless-2.40.0.tar.gz",
    )
