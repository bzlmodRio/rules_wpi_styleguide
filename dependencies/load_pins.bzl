load("@rules_checkstyle_dependencies//:defs.bzl", checkstyle_pinned_maven_install = "pinned_maven_install")
load("@rules_pmd_dependencies//:defs.bzl", pmd_pinned_maven_install = "pinned_maven_install")
load("@rules_spotless_dependencies//:defs.bzl", spotless_pinned_maven_install = "pinned_maven_install")
load("@rules_wpiformat_pip//:requirements.bzl", "install_deps")

def load_styleguide_pins():
    install_deps()
    pmd_pinned_maven_install()
    checkstyle_pinned_maven_install()
    spotless_pinned_maven_install()
