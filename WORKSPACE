workspace(name = "rules_wpi_styleguide")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_pmd",
    sha256 = "e0ac8b48e5ef240d4f5103431dde0351feedde55353777eb89601604781fced9",
    url = "https://github.com/bzlmodRio/rules_pmd/releases/download/7.2.0/rules_pmd-7.2.0.tar.gz",
)

http_archive(
    name = "rules_checkstyle",
    sha256 = "7194b5ceb525b997d13e0b37604df2c057ea99e15fd88501cd00847dd6b41697",
    url = "https://github.com/bzlmodRio/rules_checkstyle/releases/download/10.12.2/rules_checkstyle-10.12.2.tar.gz",
)

http_archive(
    name = "rules_wpiformat",
    sha256 = "0d77c34bf0283cebff00c6fb89c57318150944e4a5ec927df024cf5da7baf75a",
    url = "https://github.com/bzlmodRio/rules_wpiformat/releases/download/2024.45/rules_wpiformat-2024.45.tar.gz",
)

http_archive(
    name = "rules_spotless",
    sha256 = "edb9b9768a44c23110b446624dcfd6717302cec51e5cad0b9156690d169bc8d5",
    url = "https://github.com/bzlmodRio/rules_spotless/releases/download/2.40.0.bcr1/rules_spotless-2.40.0.bcr1.tar.gz",
)

http_archive(
    name = "rules_python",
    sha256 = "690e0141724abb568267e003c7b6d9a54925df40c275a870a4d934161dc9dd53",
    strip_prefix = "rules_python-0.40.0",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.40.0/rules_python-0.40.0.tar.gz",
)

http_archive(
    name = "rules_java",
    sha256 = "d31b6c69e479ffa45460b64dc9c7792a431cac721ef8d5219fc9f603fa2ff877",
    url = "https://github.com/bazelbuild/rules_java/releases/download/8.11.0/rules_java-8.11.0.tar.gz",
)

http_archive(
    name = "rules_jvm_external",
    sha256 = "c18a69d784bcd851be95897ca0eca0b57dc86bb02e62402f15736df44160eb02",
    strip_prefix = "rules_jvm_external-6.3",
    url = "https://github.com/bazelbuild/rules_jvm_external/releases/download/6.3/rules_jvm_external-6.3.tar.gz",
)

http_archive(
    name = "com_google_protobuf",
    sha256 = "10a0d58f39a1a909e95e00e8ba0b5b1dc64d02997f741151953a2b3659f6e78c",
    strip_prefix = "protobuf-29.0",
    urls = ["https://github.com/protocolbuffers/protobuf/archive/v29.0.tar.gz"],
)

########################
# Setup Dependencies
########################

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

load("@rules_java//java:rules_java_deps.bzl", "rules_java_dependencies")

rules_java_dependencies()

load("@rules_python//python:repositories.bzl", "py_repositories")

py_repositories()

load("@rules_jvm_external//:repositories.bzl", "rules_jvm_external_deps")

rules_jvm_external_deps()

load("@rules_jvm_external//:setup.bzl", "rules_jvm_external_setup")

rules_jvm_external_setup()
########################

load("@rules_checkstyle//dependencies:load_dependencies.bzl", "load_checkstyle_dependencies")
load("@rules_pmd//dependencies:load_dependencies.bzl", "load_pmd_dependencies")
load("@rules_spotless//dependencies:load_dependencies.bzl", "load_spotless_dependencies")
load("@rules_wpiformat//dependencies:load_dependencies.bzl", "load_wpiformat_dependencies")

load_checkstyle_dependencies()

load_pmd_dependencies()

load_wpiformat_dependencies()

load_spotless_dependencies()

load("@rules_checkstyle_dependencies//:defs.bzl", checkstyle_pinned_maven_install = "pinned_maven_install")
load("@rules_pmd_dependencies//:defs.bzl", pmd_pinned_maven_install = "pinned_maven_install")
load("@rules_spotless_dependencies//:defs.bzl", spotless_pinned_maven_install = "pinned_maven_install")
load("@rules_wpiformat_pip//:requirements.bzl", "install_deps")

install_deps()

pmd_pinned_maven_install()

checkstyle_pinned_maven_install()

spotless_pinned_maven_install()
