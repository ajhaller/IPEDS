library(hexSticker)
library(magick)

chart <- image_read("~/Documents/Smith College/SDS 270/Div 3/IPEDS/data-raw/Sticker/IPEDS.png")
sticker(chart, package = "IPEDS", p_color = "#000103", p_family = "serif", h_color="#2f60a3", h_fill = "#FFFFFF",
        filename="hex_IPEDS.png", p_size=9, s_x=1, s_y=.75, s_width=1.1, s_height = 1.1, )
