## Anchors in Regular Expressions

# Anchors are special characters in regular expressions that specify a position in a string,
# rather than matching actual characters.

# ^   → beginning of line
# $   → end of line
# \A  → absolute beginning of string
# \z  → absolute end of string
# \Z  → end of string, allowing final newline

deer_text = "The deer can jump over the fence..."

p deer_text.scan(/^\w+/)  # ["The"]

p deer_text.scan(/\A\w+/) # ["The"]

p deer_text.scan(/\.+\z/) # ["..."]
