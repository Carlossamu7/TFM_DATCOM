### MÁSTER UNIVERSITARIO EN CIENCIA DE DATOS E INGENIERÍA DE COMPUTADORES
### Trabajo Fin de Máster 2024
### Detección temprana del trastorno del espectro autista
### mediante inteligencia artificial confiable
### Alumno: *Carlos Santiago Sánchez Muñoz*, Tutor: *Alberto Fernández Hilario*

library(tidyverse)
library(ggplot2)

path <- "C:/Users/Carlos/Dropbox/DATCOM/Módulo TFM/TFM_data/"
NDEC <- 2

data <- read.csv(paste0(path, "Metadata/Metadata_Participants.csv"))
head(data)

images_name <- list.files(paste0(path, "Images_original/"), recursive = T, full.names = F)
unique(nchar(images_name))

ids <- as.numeric(substr(images_name, 16, 17))
unique(ids)

data$Num_images <- 0

for(i in 1:dim(data)[1]){
  data[i,"Num_images"] <- sum(ids==data[i,"ParticipantID"])
}

write.csv(data, paste0(path, "Metadata/Metadata_Participants_NumImages.csv"),
          quote = F, row.names = F)

data <- data[data$Num_images!=0,]

result <- data %>%
  group_by(Class, Gender) %>%
  summarise(
    Count = n(),
    min_age = min(Age, na.rm = TRUE),
    max_age = max(Age, na.rm = TRUE),
    mean_age = round(mean(Age, na.rm = TRUE), NDEC),
    sd_age = round(sd(Age, na.rm = TRUE), NDEC),
    min_CARS_Score = min(CARS.Score, na.rm = TRUE),
    max_CARS_Score = max(CARS.Score, na.rm = TRUE),
    mean_CARS_Score = round(mean(CARS.Score, na.rm = TRUE), NDEC),
    sd_CARS_Score = round(sd(CARS.Score, na.rm = TRUE), NDEC),
    min_Num_images = min(Num_images, na.rm = TRUE),
    max_Num_images = max(Num_images, na.rm = TRUE),
    mean_Num_images = round(mean(Num_images, na.rm = TRUE), NDEC),
    sd_Num_images = round(sd(Num_images, na.rm = TRUE), NDEC)
  )

# Ver los resultados
print(result)

write.csv(result, paste0(path, "Metadata/Metadata_Result.csv"),
          quote = F, row.names = F)

ggplot(data = data[!is.na(data$CARS.Score),], aes(x = Age, y = CARS.Score)) +
  geom_point(aes(color=Gender, size=Num_images)) +
  scale_size_continuous(range = c(2, 7)) +
  geom_hline(yintercept = 30, lty="dashed", color = "gray1") +
  labs(
    title = "Scatterplot of Age and CARS Score distinguishing by gender",
    x = "Age",
    y = "CARS Score"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold")
  )
ggsave(paste0(path, "edad_vs_cars_score.png"),
       width = 8, height = 6, bg="white")

