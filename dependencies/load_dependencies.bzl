load("@rules_pmd//dependencies:load_rule_dependencies.bzl", "load_pmd_rule_dependencies")
load("@rules_checkstyle//dependencies:load_rule_dependencies.bzl", "load_checkstyle_rule_dependencies")
load("@rules_wpiformat//dependencies:load_rule_dependencies.bzl", "load_wpiformat_rule_dependencies")
load("@rules_spotless//dependencies:load_rule_dependencies.bzl", "load_spotless_rule_dependencies")

def load_styleguide_dependencies():
    load_pmd_rule_dependencies()
    load_checkstyle_rule_dependencies()
    load_wpiformat_rule_dependencies()
    load_spotless_rule_dependencies()
