load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_styleguide_rule_dependencies():
    maybe(
        http_archive,
        name = "rules_pmd",
        sha256 = "4bec86ee0d5bfc94fcebafb21afdb3d2c7740bc4bd6d7657fb9f63e94affbfae",
        url = "https://github.com/bzlmodRio/rules_pmd/releases/download/6.43.0/rules_pmd-6.43.0.tar.gz",
    )
    maybe(
        http_archive,
        name = "rules_checkstyle",
        sha256 = "94c5696d9948cc6d77168262e66845e41d37843831447dc71755a686d546c346",
        url = "https://github.com/bzlmodRio/rules_checkstyle/releases/download/10.1/rules_checkstyle-10.1.tar.gz",
    )
    maybe(
        http_archive,
        name = "rules_wpiformat",
        sha256 = "b5a2a5cdff940e4dcd9d0188d5579cd260d2d96571b74b087acb701617bd27ad",
        url = "https://github.com/bzlmodRio/rules_wpiformat/releases/download/2022.30/rules_wpiformat-2022.30.tar.gz",
    )
    maybe(
        http_archive,
        name = "rules_spotless",
        sha256 = "b77138dab419a72194fbaeadc09467f198268a99c45242792fa5291acf02be1d",
        url = "https://github.com/bzlmodRio/rules_spotless/releases/download/2.34.0/rules_spotless-2.34.0.tar.gz",
    )
