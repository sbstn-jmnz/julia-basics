# LightXML is a wrapper for libXML2 a C parser
import Pkg

Pkg.add("LightXML")

using LightXML

xdoc = parse_file("food.xml")

xroot = root(xdoc)
println(name(xroot))

for child in child_nodes(xroot)
  if is_elementnode(child)
      elem = XMLElement(child)
      name = find_element(elem, "name")
      println(name)
  end
end

# Deallocate memory
free(xdoc)