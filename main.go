package main

import(
	"time"
	"github.com/gofiber/fiber/v3"
)

func rootHandler(c fiber.Ctx) error{
	return c.JSON(fiber.Map{
		"message": "My name is Nico Whitmarsh",
		"timestamp": time.Now().UnixMilli(),
		"university": "CSU Chico",
	})
}

func main() {
	app := fiber.New()
	app.Get("/", rootHandler)
	app.Listen(":3000")
}
