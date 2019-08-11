library(EBImage)
library(reticulate)
reticulate::use_python("C:/Users/Lenovo/Anaconda3")
reticulate::py_config()
library(keras)
library(kerasR)
library(tensorflow)
library(processx)
install.packages("processx")
install.packages("devtools")
devtools::install_github("rstudio/tensorflow",force=TRUE)
Sys.setenv(TENSORFLOW_PYTHON="/usr/local/bin/python")

setwd('C:/Program Files/R/R-3.5.3/ImageAnalysis/Images')
pic1 <-c('p1.jpg.jpg','p2.jpg.jpg','p3.jpg.jpg','p4.jpg.jpg','p5.jpg.jpg',
         'c1.jpg.jpg','c2.jpg.jpg','c3.jpg.jpg','c4.jpg.jpg','c5.jpg.jpg',
         'b1.jpg.jpg','b2.jpg.jpg','b3.jpg.jpg','b4.jpg.jpg','b5.jpg.jpg')

train <-list()
for(i in 1:15){
  train[[i]] <-readImage(pic1[i])
  }
pic2 <- c('p6.jpg.jpg','c6.jpg.jpg','b6.jpg.jpg')
test <- list()

for(i in 1:3){test[[i]] <-readImage(pic2[i])}

print(train[[12]])
display(train[[12]])

for(i in 1:15) {train[[i]]<-resize(train[[i]],100,100)}
str(train)
for(i in 1:3) {test[[i]] <- resize(test[[i]],100,100)}
train <- combine(train)
x <- tile(train,5)
display(x,title='pictures')

test <- combine(test)
y <- tile(test,3)
display(y, title='pics')

train <- aperm(train, c(4,1,2,3))
test <- aperm(test,c(4,1,2,3))
str(train)

trainy <- c(0,0,0,0,0,1,1,1,1,1,2,2,2,2,2)

testy <- c(0,1,2)
#devtools::install_github("rstudio/keras")
install.packages("tensorflow")
install_tensorflow(version = "1.12")
#library(keras)


trainy <- trainy %>% as.numeric()
trainy = trainy-1
trainLabels <- to_categorical(trainy)

testLabels <- to_categorical(testy)

model <-keras_model_sequential()

model %>%
         layer_conv_2d(filter =32,kernel_size = c(3,3),activation = 'relu',
                      input_shape = c(100,100,3)) %>%
        layer_conv_2d(filters=32,kernel_size = c(3,3),activation='relu') %>%
  layer_max_pooling_2d(pool_size = c(2,2)) %>%
  layer_dropout(rate=0.25) %>%
  layer_conv_2d(filters=64,kernel_size = c(3,3),activation = 'relu') %>%
  layer_conv_2d(filters=64,kernel_size = c(3,3),activation = 'relu') %>%
  layer_max_pooling_2d(pool_size = c(2,2)) %>%
  layer_dropout(rate=0.25) %>%
  layer_flatten()%>%
  layer_dense(units=256,activation = 'relu') %>%
  layer_dropout(rate=0.25)%>%
  layer_dense(units=3,activation='softmax') %>%
 
  compile(loss='categorical_crossentropy',
          optimizer=optimizer_sgd(lr=0.01,
                                  decay=1e-6,
                                  momentum=0.9,
                                  nesterov = T),
          metrics=c('accuracy'))  
summary(model)


model %>%
          compile(loss='binary_crossentropy',
                  optimizer=optimizer_rmsprop(),
                  metrics=c('accuracy'))
history <-model %>%
  fit(trainy,
      trainLabels,
      epochs = 30,
      batch_size = 32,
      validation_split = 0.2)

plot(history)  



model %>% evaluate(train,trainLabels)
