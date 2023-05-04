load("@rules_checkstyle//dependencies:load_dependencies.bzl", "load_checkstyle_dependencies")
load("@rules_pmd//dependencies:load_dependencies.bzl", "load_pmd_dependencies")
load("@rules_wpiformat//dependencies:load_dependencies.bzl", "load_wpiformat_dependencies")
load("@rules_spotless//dependencies:load_dependencies.bzl", "load_spotless_dependencies")

def setup_styleguide():
    load_checkstyle_dependencies()
    load_pmd_dependencies()
    load_wpiformat_dependencies()
    load_spotless_dependencies()
