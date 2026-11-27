package main
import (
	"fmt"
	"net/http"
	"github.com/gin-gonic/gin"
)


func main(){
	port := ":8000"
	url := "http://localhost" + port

	r := gin.Default()
	r.GET("/hello", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{
			"Message": "Olá, Mundo",
		})
	})

	r.GET("/", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{
			"Message": "Wcond API",
		})
	})

	fmt.Println("Server running on %s", url)
	r.Run(port)
}
