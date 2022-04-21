library(hexSticker)
library(magick)
library(showtext)
library(ggplot2)
library(ggimage)

font_add_google("Gugi", "Gugi")

chart <- image_read("~/Documents/Smith College/SDS 270/Div 3/IPEDS/data-raw/Sticker/IPEDS-New.png")
sticker(chart, package = "IPEDS", p_color = "#65350F", p_family = "Gugi", h_color="#65350F", h_fill = "#ecd4b4",
filename="hex_IPEDSII.png", p_size=3.6, s_x=1, s_y=1, s_width=1.6, s_height = 1.6, p_y = 1)
