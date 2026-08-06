## Ruby require and require_relative

# Use require when loading:
# Standard libraries (json, csv, date)
# Installed gems
# Files available in $LOAD_PATH

require "json"

# Use require_relative when loading:
# Your own project files
# Files in the same or nearby directories

require_relative "user"
