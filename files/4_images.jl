import Pkg

Pkg.add("Images")
Pkg.add("ImageView")
Pkg.add("ImageMagick")

using Images, ImageView

img_path = "penguin.jpg"

img = load(img_path)
imshow(img)