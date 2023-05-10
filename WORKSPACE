workspace(name = "rules_wpi_styleguide")

# Download dependencies
load("//dependencies:load_rule_dependencies.bzl", "load_styleguide_rule_dependencies")

load_styleguide_rule_dependencies()

# Download transative dependencies
load("//dependencies:load_dependencies.bzl", "load_styleguide_dependencies")

load_styleguide_dependencies()

load("//dependencies:load_transitive_dependencies.bzl", "load_styleguide_transitive_dependencies")

load_styleguide_transitive_dependencies()

# Setup dependencies
load("//dependencies:setup_styleguide.bzl", "setup_styleguide")

setup_styleguide()

load("//dependencies:load_pins.bzl", "load_styleguide_pins")

load_styleguide_pins()
