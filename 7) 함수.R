rm(list=ls())

a = matrix(1:12, 3)
apply(a, 1, mean)   #데이터셋, 방향(행1/열2)지정, 함수
apply(a, 2, max)    #*파이썬이랑 헷갈리지 말 것(0,1 아님)*

apply(iris[ ,1:4], 2, mean)   #iris 데이터 중 1~4열만
#열방향(2)으로 지정해줌 -> 각 칼럼별 평균값 나옴

apply(iris, 2, length)
#숫자가 아닌 데이터에도 적용 가능
#단, 뒤의 함수가 문자형에도 적용할 수 있어야 함

a = matrix(1:20, 2,10)   #[아래,오른쪽] 방향으로 데이터 들어감
apply(a, 2, mean)   #손으로도 계산할 줄 알아야 함

yaksu = function(a){
  for(i in 1:a){
    if(a%%i==0){
      cat(i, end='')
    }
  }
}
yaksu(100)
yaksu(24)

ny_plus = function(x,y){
  result = x+y
  return(result)   #리턴이 무조건 필요한 건x 필요에 따라 설정
}
ny_plus(23, 12)
ny_plus(103, 2)
#ny_plus(23)   #인자값 개수 안 맞으면 에러남

ny_plus2 = function(x, y=2){   #초기값 설정(초기값에 x를 이용한 식 넣어도 됨)
  result = x+y
  return(result)
}
ny_plus2(23)   #y에는 초기값이 있어서 x값만 넣어줘도 오류안남
ny_plus2(x=2, y=3)   #값을 지정해주면 초기값 무시하고 덮어씀


myfun = function(a,b){
  sum_ab = a+b
  mul_ab = a*b
  return (sum_ab, mul_ab)   #리턴값이 여러개면 함수 호출할 때 에러남
}
myfun(3,4)

myfun = function(a,b){
  sum_ab = a+b
  mul_ab = a*b
  return ( list(sum=sum_ab, mul=mul_ab) )   #리스트로 묶어서 반환
}
a = myfun(3,4)   #리스트 형태로 나옴
a[[2]]   #값 접근
a$sum   #리스트 이름 지정해두면 사용이 편함

getwd()
setwd('D:/동덕/R')
source("7) 함수.R")   #해당 파일에 저장되어 있는 함수들 다른 파일에서 사용 가능
myfun(5,10)   #새 파일 열어서도 myfun 함수를 사용할 수 있음

a = c(3,2,9,5,100,1,7,8)
which(a>4)   #해당 조건에 맞는 값들의 인덱스

max(a)   #최대값
which.max(a)   #최대값의 위치(인덱스)
which(a==max(a))
a[[which.max(a)]]   #최대값 인덱스에 접근해 최대값 출력

score = c(75,23,19,76,94,96,34,56,77)
idx = which(score<=60)   #60점 이하 값들의 인덱스
score[idx] = 65   #idx에 해당하는 값들을 65로 변경

idx = which(iris$Sepal.Length > 5)
iris.big = iris[idx, ]   #idx행들만 추출해 iris.big 변수에 저장
iris.big

#------------------------강의안 연습문제-------------------------

apply(mtcars, 2, sum)
apply(mtcars, 1, mean)
apply(mtcars, 2, max)

tri = function(x,y){   #삼각형 빗변길이 구하는 함수
  z = -1   #초기값 설정(혹시 모를 오류를 대비)
  z = sqrt(x**2+y**2)   #sqrt대신 0.5제곱 해도 됨
  return (z)
}
tri(3,4)
tri(12,5)

lgm = function(x,y){   #x,y의 최대공약수 구하기
  res = 0   #초기값 설정
  for(i in 1:x){
    if ((x%%i==0) & (y%%i==0)){
      res = i
    }
  }
  return(res)
  }
lgm(10,8)
lgm(10,20)

maxmin = function(c){   #벡터의 최대 최소 반환하는 함수
  ma = max(c)
  mi = min(c)
  return (list(max=ma, min=mi))   #2개 이상의 값 반환 -> 리스트
}
v1 = c(7,1,2,8,9)
result = maxmin(v1)
result$max   #반환된 리스트에서 이름으로 접근
result$min

weight = c(69,50,55,71,89,64,59,70,71,80)
which.max(weight)
which.min(weight)
which((weight>=61) & (weight<=69))
w = which(weight<=60)
weight.2 = weight[w]
weight.2

ma = which.max(iris$Petal.Length)   #페탈랭스가 가장 큰 값의 인덱스
iris_ma = iris[ma, 1:4]   #ma 행 추출
iris_ma
