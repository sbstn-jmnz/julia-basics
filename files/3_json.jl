# JSON a fat free xml
import Pkg
Pkg.add("JSON")
import JSON

j_locations = JSON.parsefile("locations.json")

for marker in j_locations["markers"]
  println(marker["name"])
end