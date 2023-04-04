#!/usr/bin/python3

import string
import random
import pyperclip
import termcolor

clipboard_icon = "󰅇 "
success_icon = "󰗠 "

# Length of the password
length = 24

# Characters that make up a password
lower = string.ascii_lowercase
upper = string.ascii_uppercase
digits = string.digits
punctuation = string.punctuation

# Integrating all characters
all = lower + upper + digits + punctuation

# Generate password
password = "".join(random.sample(all, length))

# Copy to clipboard
pyperclip.copy(password)

# Show message width password
termcolor.cprint(success_icon, "green", end="")
termcolor.cprint("The password has been generated.")
termcolor.cprint("-> ", "green", attrs=["bold"], end="")
termcolor.cprint(password, attrs=["bold"])
termcolor.cprint(clipboard_icon, "green", attrs=["bold"], end="")
termcolor.cprint("Copied to clipboard!")
