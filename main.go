package main

import (
	"net/http"

	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"
)

func main() {
	e := echo.New()
	e.Renderer = LoadTemplates(e)

	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	e.GET("/", index)
	e.Logger.Fatal(e.Start(":4000"))
}

func index(c echo.Context) error {
	return c.Render(http.StatusOK, "index.tmpl", nil)
}
