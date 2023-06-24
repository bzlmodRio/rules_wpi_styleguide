from get_styleguide_dependencies import get_styleguide_dependencies


def main():
    group = get_styleguide_dependencies()
    print(group.version)


if __name__ == "__main__":
    main()
