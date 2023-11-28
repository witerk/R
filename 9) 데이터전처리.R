rm(list=ls())

x = c(1,2,3,4,NA,5)
mean(x)   #결측값이 있으면 연산x (sum, min, max도 마찬가지)
mean(x, na.rm=T)   #결측값을 무시하고 연산 진행(na.rm 생략하면 안됨)

is.na(x)   #T/F로 나옴
sum(is.na(x))   #T의 개수를 셈 = NA값 개수

x[is.na(x)] = 100   #NA값의 인덱스에 접근, 새로운 값 대입
x

y = c(1,2,3,4,NA,5)
y_ = na.omit(y)   #정상값들과, NA값의 인덱스를 별도로 알려줌
as.vector(y_)   #NA값을 삭제한 정상값들의 벡터

a = airquality

for (i in 1:ncol(a)){   #열(칼럼)별로
  count_na = sum(is.na(a[ ,i]))   #결측값 개수 출력
  cat(colnames(a[i]), ':', count_na, '\n')
}

apl = apply(a, 2, is.na)   #결측값 함수(T/F)
apply(apl, 2, sum)   #결측값 개수 합

cal_na = function(x){
  return (sum(is.na(x)))
}
apply(a, 2, cal_na)   #사용자 함수로 한번에 적용

a_na = is.na(a)
sum( is.na(a) )  #총 결측값의 개수
n = rowSums(a_na)   #각 행별로 결측값 개수 합
sum(n>0)   #결측값이 있는 행의 수

rowSums(a_na) > 0   #행별로 결측값이 있는가(T/F)
a[rowSums(a_na) > 0, ]   #결측값이 있는 행 전부 출력

complete.cases(a)   #행별로 결측값이 하나라도 있으면 F
a[complete.cases(a), ]   #결측값이 '없는' 행만 출력
a[!complete.cases(a), ]   #결측값이 '있는' 행만 출력

df = as.data.frame(state.x77)
boxplot(df$Income)   #박스플랏 그림
boxplot.stats(df$Income)   #박스플랏 통계값(분위수, 데이터개수, 박스 범위, 특이값)
boxplot.stats(df$Income)$out   #아웃라이어, 특이값

out = boxplot.stats(df$Income)$out   #특이값 리스트
df$Income[df$Income %in% out] = NA   #특이값을 NA로 대체 (%in%: A in list와 같은 용도, ==쓰면 안됨)
new_data = df[complete.cases(df), ]   #NA가 포함된 행 제거
# 특이값은 '값'의 형태기 때문에 삭제가 쉽지 않음
# 그래서 NA로 바꾼 후 한번에 날리는 것

D = c('c','o','d','e','r')
order(D)   #알파벳순(정렬시 순서 cdeor의 각 '인덱스' 반환)
A = c(3,1,4,3,10)   #중복일 경우 앞에게 먼저
order(A)
C = c('c','o','d','e','r',3,1,4,3,10)  #숫자+문자일 경우 숫자먼저
order(C)

v1 = c(1,7,6,8,4,2,3)
sort(v1)   #오름차순 정렬(값 반환)
sort(v1, decreasing=T)   #내림차순 정렬 sort(v1, T)해도 됨

iris[order(iris$Sepal.Length, decreasing=T), ]  #특정 칼럼 기준, 내림차순 정렬
iris[order(iris$Species, iris$Petal.Width, decreasing=T), ]   #기준 칼럼 2개
iris[order(iris$Species, -iris$Petal.Width, decreasing=T), ]   #Species 내림차순 정렬, P.W 반대(오름차순) 정렬

sp = split(iris, iris$Species)   #품종별 데이터 분리, 그룹화
summary(sp)
sp$setosa   #setosa 그룹만 가져오기

subset(iris, Species=='versicolor',   #조건
       select=c('Sepal.Length', 'Species'))   #조건에 맞는 것 중 특정 열들만 출력

subset(iris, (Sepal.Length>4.8) & (Sepal.Length<5.1),   #조건이 특정 범위일 땐 &로 묶기(0<a<2 안됨)
       select=c(Sepal.Length, Sepal.Width))  #따옴표 없어도 잘 나옴

x = 1:100
sample(x, size=10)  #비복원(replace=F 기본값) 추출

idx = sample(1:nrow(iris), 50)
iris[idx, ]   #랜덤하게 50줄
dim(iris[idx, ])   #50행 확인

set.seed(54)
sample(1:10, 5)  #두 줄 한번에 실행해야 seed가 먹힘

combn(1:5, 3)   #1~5중 3개를 뽑는 모든 경우의 수(중복x) -> 10개 열(칼럼)

x = c('red','green','blue','black','white')
com = combn(x, 2)
for (i in 1:ncol(com)){  #그냥 보기 좋게 출력
  cat(com[ ,i],'\n')
}

#집계함수
aggregate(iris[ ,-5],  #데이터 (종 빼고 나머지 칼럼들의)
          by = list(품종=iris$Species),  #기준 칼럼 (품종 별), 기준 칼럼 이름 설정 
          #by는 반드시 리스트 형태로 넣어줄 것!!!!
          FUN = mean)   #적용할 함수 (평균)

aggregate(mtcars, 
          by = list(mtcars$cyl, mtcars$vs),  #기준 칼럼 2개(이름 안 정하면 GROUP.1, 2로 뜸)
          max)   #FUN 없어도 됨

A = data.frame(name=c('a','b','c'), math=c(90,80,40))
B = data.frame(name=c('a','b','d'), korean=c(75,60,90))

merge(A,B, by=c('name'))   #name칼럼을 기준으로 공통된 행들만 합쳐짐 (나머지는 탈락)
merge(A,B, all.x=T)   #앞 테이블을 기준으로 (없는 부분은 NA로 들어감)
merge(A,B, all.y=T)   #뒤 테이블을 기준으로
merge(A,B, all=T)   #양쪽 테이블을 기준으로

A = data.frame(name=c('a','b','c'), math=c(90,80,40))   #기준으로 삼을 칼럼명이
B = data.frame(same=c('a','b','d'), korean=c(75,60,90))   #서로 다를 경우
merge(A,B, by.x=c('name'), by.y=c('same'))   #각각 지정
merge(A,B, by.x=c('name'), by.y=c('same'), all=T)   #그냥 all=T만 해주면 name, same을 다른 칼럼으로 봄

#만약 기준칼럼 삼을게 2개 이상이면 (by로 하나를 지정해주지 않았을 때)
#두 칼럼 모두가 일치해야 같은 행으로 취급
#만약 name이 같아도 학번이 다르면 다른 행으로 취급

#------------------------강의안 연습문제-------------------------

ds = state.x77
ds[2,3] = NA
ds[3,1] = NA
ds[2,4] = NA
ds[4,3] = NA
for (i in 1:ncol(ds)){   #외워
  na = is.na(ds[ ,i])
  cat(colnames(ds)[i],':',sum(na),'\n')
}

sum(rowSums(is.na(ds))>0)
ds.new = df[complete.cases(ds), ]
head(ds.new)

df = data.frame(state.x77)
out_val = boxplot.stats(df)$out
df[df %in% out_val] = NA
df_2 = df[complete.cases(df), ]
length(rownames(df))   #원본 행 개수
length(rownames(df_2))   #이상치 제거 후 행 개수

df[order(df$Population), ]   #오름차순 정렬
df[order(df$Income, decreasing=T), ]   #내림차순 정렬

mt_g = split(mtcars, mtcars$gear)
mt_g
mt_wt = subset(mtcars, wt>1.5 & wt<3.0)
mt_wt

set.seed(100)
st_sam = sample(1:nrow(df), size=20)
st_other = df[-st_sam, ]
st_other

authors = data.frame(
  surname = c('Twein', 'Venables', 'Tierney', 'McNeil'),
  nationality = c('US', 'Australia', 'US', 'UK')
  )
books = data.frame(
  name = c('Venables', 'Tierney', 'Ripley', 'McNeil'),
  title = c('Modern Applied Statistics...', 'LISP-STAT', 'Spatial Statistics','Interactive Data Analysis')
)
merge(authors, books, by.x='surname', by.y='name')

