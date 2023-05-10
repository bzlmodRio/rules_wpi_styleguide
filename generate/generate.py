import os
from get_styleguide_dependencies import get_styleguide_dependencies

from bazelrio_gentool.generate_module_project_files import (
    create_default_mandatory_settings,
)
from bazelrio_gentool.clean_existing_version import clean_existing_version
from bazelrio_gentool.utils import TEMPLATE_BASE_DIR, render_templates
from bazelrio_gentool.cli import add_generic_cli, GenericCliArgs
import argparse
from bazelrio_gentool.generate_shared_files import (
    write_shared_root_files,
    write_shared_test_files,
)
from bazelrio_gentool.utils import TEMPLATE_BASE_DIR


def main():
    SCRIPT_DIR = os.environ["BUILD_WORKSPACE_DIRECTORY"]
    REPO_DIR = os.path.join(SCRIPT_DIR, "..")
    template_dir = os.path.join(SCRIPT_DIR, "templates")

    parser = argparse.ArgumentParser()
    add_generic_cli(parser)
    args = parser.parse_args()

    group = get_styleguide_dependencies()

    mandatory_dependencies = create_default_mandatory_settings(GenericCliArgs(args))

    clean_existing_version(
        REPO_DIR,
        extra_dir_blacklist=["styleguide"],
        file_blacklist=[
            "dependencies/BUILD.bazel",
            "dependencies/load_dependencies.bzl",
            "dependencies/load_pins.bzl",
            "dependencies/setup_styleguide.bzl",
        ],
    )

    write_shared_root_files(REPO_DIR, group)
    write_shared_test_files(REPO_DIR, group)

    template_files = [
        ".github/workflows/build.yml",
        "MODULE.bazel",
        "WORKSPACE",
        "dependencies/load_rule_dependencies.bzl",
        "dependencies/load_transitive_dependencies.bzl",
        "tests/MODULE.bazel",
        "tests/WORKSPACE",
    ]

    render_templates(
        template_files,
        REPO_DIR,
        template_dir,
        container=group,
        mandatory_dependencies=mandatory_dependencies,
    )

    template_files = [
        ".github/workflows/lint.yml",
    ]
    render_templates(
        template_files, REPO_DIR, os.path.join(TEMPLATE_BASE_DIR, "styleguide")
    )


if __name__ == "__main__":
    main()
