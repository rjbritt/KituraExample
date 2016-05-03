import Kitura
import KituraNet
import KituraSys

let router = Router()

router.get("/") {
    request, response, next in
    response.send("Hello, World!")
    next()
}

let server = HttpServer.listen(port:8090, delegate: router)
Server.run()