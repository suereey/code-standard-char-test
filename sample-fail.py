def long_line():
    # The following line is intentionally made long by repeating a phrase
    print("This line is intentionally made very long to exceed the 80-character limit " +
          "just so we can test the line length check script in our repository setup. " +
          "We need to ensure that it's definitely over 80 characters, which it is by now!")

def another_long_line():
    # Another extremely long line that should break our 80 character rule: 
    print("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")

if __name__ == "__main__":
    long_line()
    another_long_line()