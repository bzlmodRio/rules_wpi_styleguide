import os
from get_styleguide_dependencies import get_styleguide_dependencies
from bazelrio_gentool.publish_module import publish_module


def main():
    SCRIPT_DIR = os.environ["BUILD_WORKSPACE_DIRECTORY"]
    registry_location = os.path.join(
        SCRIPT_DIR, "..", "..", "..", "bazel-central-registry"
    )

    group = get_styleguide_dependencies()

    module_template = os.path.join(SCRIPT_DIR, "templates/MODULE.bazel.jinja2")

    os.chdir(SCRIPT_DIR)
    publish_module(
        registry_location,
        group,
        module_json_template=None,
        module_template=module_template,
    )


if __name__ == "__main__":
    main()
