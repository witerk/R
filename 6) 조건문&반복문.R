rm(list=ls())

a=1
if(a>5){
  cat(a)   #cat은 자동줄바꿈x
  print('a는 5보다 큽니다.')
  } else{  #주의!!!!!!! else 줄바꿈하면 안됨. if{}괄호 닫고 바로 써야 함
  print('a는 5보다 작습니다.')
}

score=88
if(score>=90){
  grade='A'
} else if(score>=80){
  grade='B'
} else if(score>=70){
  grade='C'
} else{
  grade='F'
}
print(grade)

a=10
b=20
if (a>5 & b>5){   # &(and, 영어로 쓰면x)
  print(a+b)
}
if (a>15 | b>15){   # |(or)
  print(a*b)
}

c = ifelse(a>b, a,b)   #if else문 한 줄로 쓰기
c   #참이면 a를, 거짓이면 b를 반환함 (10>20=거짓이므로 c=b)

ifelse(a>b, c=a,c=b)   #이런 식으로 대입문을 아예 넣는 건x 에러남

for(i in 1:10){
  print(i)
}

a=c(3,5,-1)
for(i in a){
  #cat(i,'\n')   #a내의 원소들을 출력
  print('p')   #문자 p를 a벡터 길이(개수)만큼 출력
}

for(i in 1:9){
  cat('2 x',i,'=',2*i,'\n')
}

for(i in 1:10){
  if(i%%2==0){
    cat(i,'은(는) 짝수입니다.\n')
  } else{
    cat(i,'은(는) 홀수입니다.\n')
  }
}

sum=0
for(i in 1:100){
  sum = sum+i
}
print(sum)

iris
colnames(iris)

len = nrow(iris)
mylabel = c()
for(i in 1:len){
  if(iris$Petal.Length[i] <= 1.6){
    mylabel[i] = 'L'
  } else if(iris$Petal.Length[i] >= 5.1){
    mylabel[i] = 'H'
  } else{
    mylabel[i] = 'M'
  }
}
mylabel   #꽃잎 길이에 따라 1.6이하는 L/ 1.6~5.1사이는 H/ 5.1이상은 M으로 분류
length(mylabel)

a = data.frame(iris$Petal.Length, mylabel)   #데이터프레임 생성
head(a)

#for문과 while문 자유롭게 드나들 수 있어야 함
for(i in 1:5){
  print(i) }

i=1
while(i<=5){
  print(i)
  i = i+1 }

i=1
while(1){
  print(i)
  i = i+1
  if(i>=6) break
}

i=0
while(i<=10){
  if(i%%2==1){   #홀수면
    i = i+1   #next보다 위에 있어야 함(아래에 있으면 안 보고 건너뜀)
    next   #그냥 지나감
  }
  print(i)   #홀수가 아니면 print
  i = i+1
}

#------------------------강의안 연습문제-------------------------
for(i in 1:100){
  if(i%%3==0){
    print(i)
  }
}

for(i in 1:24){
  if(24%%i==0){
    print(i)
  }
}

num=0
sum=0
for(i in 1:100){
  if(i%%3==0){
    num = num+1
    sum = sum+i
  }
}
cat(num, sum)

i=1
k=1
while(i<=5){
  k = k*i
  i = i+1
}
print(k)

i=1
while(i<10){
  cat(i,'x 7 =',i*7,'\n')
  i = i+1
}

i=1
while(i<=100){
  if(i%%4==0){
    print('*')
  } else{
    print(i)
  }
  i = i+1
}

n = nrow(airquality)
m=0
for(i in 1:n){
  if(airquality$Temp[i]>=90){
    cat(airquality$Month[i], airquality$Day[i],'\n')
    m = m+1
  }
}
print(m)
