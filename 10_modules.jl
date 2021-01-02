# Encapsulate functions and definitions in their own space name
# Functions and definitions can be exported, imported and reused
# With the keyword "import" all definitions are available
# With "using" only exported definitions are available

# Ether way the file should be loaded with "include"

module MyModule
  export exported_x

  exported_x() = "x was exported"

  non_exported_p() = "p was not exported"
end