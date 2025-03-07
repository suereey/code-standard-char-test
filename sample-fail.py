# This file has a line over 80 characters to demonstrate a failed check.

def greet(name):
    print(f"Hello {name}!")  # Short enough line

def do_something_long():
    # This comment line is intentionally extremely verbose to demonstrate a line that is more than 80 characters in length, and will be flagged by our line-length check script.
    pass

if __name__ == "__main__":
    greet("World")
    do_something_long()
