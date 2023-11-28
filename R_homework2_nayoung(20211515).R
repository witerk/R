rm(list=ls())

#1번
repo = function(text, num){
  print(rep(text, num))
}
string = readline('문자를 입력해주세요: ')
k = readline('반복 횟수를 지정해주세요: ')
k = as.numeric(k)
repo(string, k)

#2번
maxmin = function(v){
  v_max = max(v)
  v_min = min(v)
  return (list(max=v_max, min=v_min))
}
v1 = c(7,1,2,8,9)
result = maxmin(v1)
result$max; result$min

result = maxmin(iris[,1])
result$max; result$min

#3번
hist(trees$Girth, main='나무지름별 수',
     xlab='지름',ylab='빈도',
     col='pink')

boxplot(trees$Girth, main='나무지름 상자그림'
        ,col='skyblue')

mean(trees$Height)
median(trees$Height)
mean(trees$Height,trim=0.15)
sd(trees$Height)

#4번
lc = LifeCycleSavings
out = boxplot.stats(lc$ddpi)$out
lc$ddpi[lc$ddpi %in% out] = NA
new_lc = lc[complete.cases(lc), ]
mean(new_lc$ddpi)

#5번

