package controllers

import (
	"fmt"
	"server/libs"

	"github.com/gin-gonic/gin"
)

func SongCreate (c *gin.Context) {
	youtubeUrl := c.PostForm("youtubeUrl")
	fmt.Println(youtubeUrl)



	// song := models.Song{Title: "song title", Description: "song description"}

	// result := initializers.DB.Create(&song)

	// if result.Error != nil {
	// 	c.Status(400)

	// 	return
	// }

	libs.GetYoutubeInfo("https://www.youtube.com/watch?v=lf_kiH_NPvM")

	c.JSON(200, gin.H{
		"song": "abc",
	})
}