rm(list=ls())

favorite = c('WINTER', 'SUMMER','SPRING','SUMMER','SUMMER','FALL','FALL','SUMMER','SPRING','SPRING')
favorite

table(favorite)   #도수분포표 생성(각 원소별 개수 카운트해줌)
table(favorite)/length(favorite)   #전체에서 각 원소가 차지하는 비율

ds = table(favorite)
barplot(ds, main='favorite season')   #막대그래프 (+타이틀 설정)

ds.new = ds[c(2,3,1,4)]   #원소 순서 변경 (1,2,3,4) -> (2,3,1,4)
ds.new
ds

pie(ds, main='favorite season')   #원그래프

favorite.color = c(2,3,2,1,1,2,2,1,3,2,1,3,2,1,2)
ds = table(favorite.color)

barplot(ds, main='favorite color')   #그냥 회색 그래프, 칼럼명x (123숫자로)
colors = c('green', 'red', 'blue')
names(ds) = colors   #각 컬럼명 지정
barplot(ds, main='favorite color', col=colors)   #막대그래프에 색 입혀짐
pie(ds, main='favorite season', col=colors)   #원그래프에 색 입혀짐

weight = c(60,62,64,65,68,69,120)
weight.heavy = c(weight,120)   #weight에 데이터(120) 추가

mean(weight)    #평균 (특이값에 영향받음)
mean(weight.heavy)

median(weight)   #중앙값
median(weight.heavy)

mean(weight, trim=0.2)   #절사평균 (상하위 20%제외하고 나머지들의 평균)
mean(weight.heavy, trim=0.2)   #평균보단 특이값 영향 덜 받음
mean(weight.heavy, 0.2)   #trim= 없이 그냥 숫자만 써 줘도 됨

mydata = c(60,62,64,65,68,69,120)
quantile(mydata)   #사분위수
quantile(mydata, (0:10)/10)   #10% 단위로 분위수 보기(0.1~1)
summary(mydata)   #사분위수와 평균, 최대최소 등을 출력

var(mydata)   #분산(평균과의 오차 제곱합 / 데이터 개수)
sd(mydata)   #표준편차(분산의 제곱근)
range(mydata)   #범위
diff(mydata)   #차분(뒤 요소와의 차이값)

dist = cars[ ,2]
#연속형은 구간을 나눠 히스토그램으로, 범주형은 막대그래프(barplot)로 시각화

hist(dist, main='제동거리 히스토그램',
     xlab='제동거리', ylab='빈도수',
     border='blue', col='green',   #테두리, 막대 색
     las=2, breaks=5)   #x축 글씨방향(0-3), 막대개수 조절
#breaks를 설정해도 R이 자동으로 더 적절한 구간으로 개수를 조절할 수 있음

boxplot(dist, main='자동차 제동거리')
boxplot.stats(dist)   #박스플랏 통계값 조회
#최솟값, 1분위수, 2분위수(중앙값), 3분위수, 최대값
#데이터 개수
#중앙값의 신뢰구간
#극단값(outlier, 이상치)으로 추정되는 데이터

#그룹이 있는 자료의 박스플랏 (그룹별로 박스 그리기)
levels(iris[, 5])
boxplot(Petal.Length~Species, data=iris, main='품종별 꽃잎 길이')   #품종별로 각각 박스를 그림
boxplot(iris$Petal.Length~iris$Species, main='품종별 꽃잎 길이')   #같은 결과

#산점도
wt = mtcars$wt   #중량
mpg = mtcars$mpg   #연비
plot(wt, mpg, main='중량-연비 그래프',   #xy지정, 타이틀 지정
     xlab='중량', ylab='연비(MPG)', 
     col='red', pch=19)   #색상, 포인터 종류

plot(mtcars$wt, mtcars$mpg)   #(xy라벨  mtcars$wt, mtcars$mpg 형식으로 들어감)
plot(mtcars[ , c('wt', 'mpg')])   #결과 동일(라벨 wt, mpg)
plot(mpg~wt, data=mtcars)   #결과 동일(라벨 wt, mpg), 순서 주의(y~x순서)

vars = c('mpg', 'disp','drat','wt')
target = mtcars[, vars]
head(target)
pairs(target, main='여러 변수들 간 산점도')   #각각의 칼럼 조합으로 산점도 그림
pairs(target, lower.panel=NULL)   #대각선 아래로는 그림 삭제(위쪽 삭제 upper)

iris.2 = iris[ , 3:4]   #데이터
point = as.numeric(iris$Species)   #점 모양(각 종별로 레이블 인코딩 1,2,3)
color = c('red','green','blue')
plot(iris.2, main='아이리스 plot',
     pch=c(point),   #각 종별로 포인터 모양 다르게
     col=color[point])   #각 종별로 색상 다르게

beers = c(5,2,9,8,3,7,3,5,3,5)   #마신 맥주잔 수
bal = c(0.1, 0.03, 0.19, 0.12, 0.04, 0.0095, 0.07, 0.06, 0.02, 0.05)   #혈중알콜농도
tbl = data.frame(beers, bal)

plot(bal~beers, data=tbl)   #산점도
res = lm(bal~beers, data=tbl)   #회귀식(y=ax+b) 도출
abline(res)   #산점도 + 점들을 가로짓는 회귀선 그리기
cor(beers, bal)   #두 칼럼 간의 상관계수 출력

cor(iris[ , 1:4])   #데이터프레임 칼럼들 간 상관계수들 (파이썬 corr()함수와 동일)

#시계열 데이터 분석
month = 1:12
late = c(5,8,7,9,4,6,12,13,8,6,6,4)
plot(month, late, main='월별 지각생 통계',
     type='l', lty=1, lwd=1,   #그래프 종류(l,b,s,o 등), 선 종류(1~6), 선 굵기
     xlab='월', ylab='지각 횟수')

late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month, late1, main='지각생',
     type='b', lty=1, col='red',
     xlab='월', ylab='지각 횟수',
     ylim=c(1,15))   #y레이블값 범위 지정
lines(month, late2, type='b', col='blue')   #이미 그려진 그래프에 선그래프 추가

#------------------------강의안 연습문제-------------------------

gender = c('F','F','F','M','M','F','F','F','M','M')
table(gender)

par(mfrow=c(1,2))   #그래프 몇 개 그릴건지(subplots 같은 거)
gt = table(gender)
barplot(gt, main='gender_bar')
pie(gt, main='gender_bar')

score = c(90,85,73,80,85,65,78,50,68,96)
mean(score)
median(score)
mean(score, trim=0.1)
sd(score)

hist(score, (5:10)*10, 
     main='score_his', xlab='성적', ylab='과목의 수',
     las=2)
boxplot(score, main='score_box')

par(mfrow=c(1,1))
point = as.numeric(iris$Species)
color = c('red','green','blue')
plot(iris$Sepal.Width~iris$Sepal.Length,   #y~x 순서로 넣음
     main='iris_plot',
     col=color[point], pch=point)
#plot(iris$Sepal.Length, iris$Sepal.Width,   #x, y순서 (동일 결과)
#     main='iris_plot',
#     col=color, pch=point)

year = c(20144,20151,20152,20153,20154,20161,20162,20163,20164,20171,20172,20173)
men = c(73.9, 73.1, 74.4, 74.2, 73.5, 73, 74.2, 74.5, 73.8, 73.1, 74.5, 74.2)
women = c(51.4, 50.5, 52.4, 52.4, 51.9, 50.9, 52.6, 52.7, 52.2, 51.5, 53.2, 53.1)
plot(year, men, main='Economic Participation',
     xlab='year', ylab='percentage', 
     type='l', lty=1, col='blue',
     ylim=c(50, 80))   #y라벨 다는 법도 알아두기
lines(year, women, type='l',col='red')
