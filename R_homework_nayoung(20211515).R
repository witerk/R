rm(list=ls())
getwd()
setwd('D:/동덕/R')

# 1번 문제
df = read.csv('airquality.csv', header=T) 
head(df)

a = subset(df, Ozone>=40)
write.csv(a, 'Ozone40.csv', row.names=F)

#2번 문제
name = c('Olivia','Sophia', 'John', 'Luna')
age = c(18,23,22,30)
gender = c('F','F','M','F')
height = c(162, 158, 160, 177)
student = c(T,F,T,T)

People = data.frame(name, age, gender, height, student)
People

age_mean = mean(People$age)   #평균 나이
height_mean = mean(People$height)   #평균 키

g = factor(People$gender)
summary(g)   #성별 인원수

#3번 문제
head(swiss)

a = subset(swiss, Catholic>=80)   #카톨릭 신자 비율 80% 이상
a[c('Agriculture')]   #남성 농업인 비율

b = subset(swiss, Examination<20 & Agriculture<50)   #Examination 20% 미만, Agriculture 50% 미만
b[, c('Examination','Agriculture')]   #주 이름, Examination, Agriculture

#4번 문제
result = 25

while(1){
  num = readline('숫자를 입력해주세요: ')
  num = as.numeric(num)

  if(num==result){
    print('정답!')
    break
  } else if(num>25){
    print('down!')
  } else{
    print('up!')
  }
}
