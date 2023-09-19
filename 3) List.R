rm(list=ls())   #value 전부 비우기

a = c(1,3,5)
length(a)   #길이(len아님 length임)

b = 30:90   #30~90이므로 61개(60개 아님)
b
length(b)
b[61]  #b의 61번째 값

a = list(3,'a',T)
a[3]   #나오긴 나오는데 [[1]] 이런게 같이 나옴 -> 이건 시험에서 정답x
a[[3]]   #리스트에서 3번째 값을 뽑고 싶으면 이중 대괄호

b = c(90,80,100)
names(b) = c('math','english','korean')   #각 값에 이름 붙여줌
b[2]   #english 80
b['english']   #이렇게 해도 english 80이 나옴
#이름을 설정해 놓으면 값 접근이 편함

a
names(a) = c('j','k','l')
a    #[[1]],[[2]],[[3]]이거 없어지고 '$이름'이 생김
a$j   #이런식으로 값 접근(값만 나옴)
a['j']   #이름, 값 2줄로 나옴

a = list(j=3, k='a', l=T)   #이름 붙여서 처음부터 생성

y = list('datascience', 'nayoung', 23)
names(y) = c('major','name','age')
y
y$age

z = list('major'='datascience', 'name'='nayoung', 'age'=23)   #한번에 생성
z
z$age   #$표시가 있으면 이름이 있는 리스트, [[n]]이 있으면 이름 없음

k = list(major='datascience', name='nayoung', age=23)   #이름에는 따옴표 없어도 됨
k

#리스트 안에 배열, 이중리스트 등
b
two = list(name='nayoung', score=b, what=z)
two   #score는 리스트안에 배열, what는 이중 리스트

x = c('A','B','A','AB','O','O')
y = factor(x)
y   #levels라고 값의 종류들이 같이 나옴(unique값 같은 느낌)
y[4]   #4번째 값인 'AB'가 나오지만, levels는 여전히 같이 나옴

y[7] = 'B'    #7번째에 'B'가 새로 추가됨
Y[8] = 'C'    #에러. 팩터를 만들 당시 A,B,AB,O 4개만 있었으므로, 새로운 건 올 수 없음

summary(y)    #각 값의 개수까지 카운트해줌
levels(y)     #각 값의 종류만

################강의안 연습문제################
d = c(100:200)
d[50]
d[seq(1,101,10)]
d[1:20]

d = c(100:200)
mean(d)
length(d[d<110])
sum(d[d<110])

x = c(1:20)
y = x[x%%3==0]    #y = x[seq(3,18,3)] 둘 다 정답
sort(y, T)    #T, TRUE, deceasing=T 모두 가능
mean(x[-2:-10])    #-(2:10) 이렇게 해줘도 됨

a = c(1,6,3,8)
a = sort(a)
names(a) = c('one', 'three', 'six', 'eight')

ages = c(58,20,85)
names = c('tony', 'ahn', 'nick')
x = list(ages, names)

names(x) = c('numbers', 'names')

x = c(1,6,8,11)
z = list('x*2'=x*2, 'x/2'=x/2)
#z = list(x*2, x/2)    #이렇게 두 줄로 쓸 수도 있음
#names(z) = c('x*2','x/2')

gender = c(rep('male',5), rep('female',10))
gender_fac = factor(gender)
gender_fac[16] = 'male'
#gender_fac[length(gender_fac)+1] = 'male'  #이러면 길이 몰라도 마지막에 하나 추가 가능
summary(gender_fac)

rm(list=ls())   #clear~~~