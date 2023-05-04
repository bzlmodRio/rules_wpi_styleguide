load("@rules_pmd//pmd:defs.bzl", "pmd")
load("@rules_checkstyle//checkstyle:defs.bzl", "checkstyle")
load("@rules_spotless//spotless:defs.bzl", "spotless")

def java_styleguide(name, srcs = None, pmd_rulesets=None, checkstyle_config_file=None, spotless_config_file=None):
    if not srcs:
        srcs = native.glob(["**/*.java"])

    pmd_rulesets = pmd_rulesets or ["@rules_wpi_styleguide//styleguide:pmd_rules"]
    checkstyle_config_file = checkstyle_config_file or "@rules_wpi_styleguide//styleguide:checkstyle"
    spotless_config_file = spotless_config_file or "@rules_wpi_styleguide//styleguide:spotless.prototxt"

    pmd(
        name = name + ".pmd",
        srcs = srcs,
        rulesets = pmd_rulesets,
    )

    checkstyle(
        name = name + ".checkstyle",
        srcs = srcs,
        config_file = checkstyle_config_file,
    )

    spotless(
        name = name + ".spotless",
        srcs = srcs,
        config_file = spotless_config_file,
    )
