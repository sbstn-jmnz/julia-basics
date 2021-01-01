# try catch finally

try
  sqrt("hello")
catch
  println("You should have entered a numeric value")
end

function pinpong(x)
  x == "ping" ? "pong" : error("You have to pass \"ping\" as argument")
end

pinpong("ping")


# ArgumentError
# DomainError
# DevideError
# InterrupError
# ErrorException
# Many more...