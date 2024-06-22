from bazelrio_gentool.deps.dependency_container import (
    DependencyContainer,
)


def get_styleguide_dependencies():
    version = "2024.06.22"
    year = "1"
    group = DependencyContainer("rules_wpi_styleguide", version, year, "")

    return group
