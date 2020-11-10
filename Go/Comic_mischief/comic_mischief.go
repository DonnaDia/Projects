package main
import "fmt"

func main() {
  var publisher, writer, artist, title string
  var year,pageNumber uint
  var grade float32
  title = "Mr. GoToSleep"
  writer = "Tracey Hatchet"
  artist = "Jewel Tampson"
  publisher = "DizzyBooks Publishing Inc."
  year = 1997
  pageNumber = 14
  grade = 6.5

  fmt.Println(title, "\n\twritten by", writer, "\n\tdrawn by", artist, "\n\tpublished by", publisher, "\n\t",pageNumber, "pages", "\n\tyear", year, "\n\tgraded as", grade, "\n")

  title = "Epic Vol. 1"
  writer = "Ryan N. Shawn"
  artist = "Phoebe Paperclips"
  publisher = "DizzyBooks Publishing Inc."
  year = 2013
  pageNumber = 160
  grade = 9.0

  fmt.Println(title, "\n\twritten by", writer, "\n\tdrawn by", artist, "\n\tpublished by", publisher, "\n\t",pageNumber, "pages", "\n\tyear", year, "\n\tgraded as", grade, "\n")
}
}
