# This is so cool.
# With dot notation is possible to call methods on each member of a collection

rating_vector = [1,2,3,4,5]

function incByTen(x::Int64)
  println(x * 10)
end

incByTen.(rating_vector)