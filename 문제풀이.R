########## 제출자_Me ########## (1주차)

# <1번> 문제
a = c(200:300)
a[seq(1,101,2)]   #짝수만
a[-(seq(1,101,10))]   #10단위로 제외
max(a[a%%2==0])   #홀수 중 가장 큰값

# <2번> 문제
b = c('인절미', '가래떡', '송편')
rep(b,2)  #2번 반복
rep(b,2,each=3))  #각 요소를 3회씩 반복한 걸, 2회 반복
rep(b, c(1,2,3))  #각각 1회, 2회, 3회씩 반복

# <3번> 문제
Weekday = c('월', '화', '화', '월', '금', '목', '수', '금', '월', '화')
WD = factor(Weekday)   #펙터 선언
WD
WD[11] = '토'   #아래 summary결과, NA's가 출력
summary(WD)

########## 제출자_Others ########## (1주차)
x = c(3,11,5,2,4,6,9,7,8,15)
sort(x, decreasing=T)   #내림차순 정렬
mean(x)   #평균값

m = matrix(c(9,8,7,11,5,2,3,9), 2,4)   #매트릭스 생성
rownames(m) = c('x','y')   #행 이름 설정
colnames(m) = c('a','b','c','d')   #열 이름 설정
m1 = rbind(m, z=c(1:4))   #행 방향으로 데이터 추가
m1

number = c(1:3)
name = c('a','b','c')
Exam = c(3.5, 4.5, 5.5)
c = data.frame(number, name, Exam)
str(c)   #실행결과 보고 데이터프레임 생성하기

C = rep(2,4)   #실행결과 맞추기

numbers = c(1:5)
square = numbers**2   #**대신 ^로 해도 무관
square   #실행결과 맞추기

name = c('Alice','Bob','Charlie')
Age = c(25,30,35)
df = data.frame(Name=name, Age)
df   #실행결과 보고 빈칸 맞추기

subject = c(rep('math',6), rep('english',7))
subject   #실행 결과 맞추기
subject_fac = factor(subject)
subject_fac   #실행결과 맞추기(levels 정보 추가돼서 나옴)

x = list(F, 7, 'Alex')   #리스트
x   #결과보고 생성

u = matrix(c(seq(10,40,4)), nrow=4, ncol=2)
u   #결과 맞추기(배열 형태)
u_t = t(u)
u_t   #결과 맞추기(형태)

########## 제출자_Me ########## (2주차)

# <1번> 문제
library(svDialogs)   #입력 라이브러리 활성화
n = dlgInput('숫자를 입력해주세요: ')$res   #입력받기
num = as.numeric(n)   #숫자로 변환
m = matrix(c(num:(num*2)), 2)   #매트릭스 생성
write.table(m,'nayoung.txt', eol='###', row.names=F, col.names=F, quote=F)   
#txt파일로 저장(행 구분자 ###, 행렬 이름x, 쌍따옴표x)

# <2번> 문제
class(airquality)  #데이터프레임
max_wind = subset(airquality, Wind==max(Wind))   #바람이 가장 강한 날
sink('nayoung2.txt')
cat('바람이 가장 강한 날은',max_wind$Month,'월',max_wind$Day,'일이다.')
sink()   #nayoung2.txt에 문장 저장

########## 강의안 예제 모음 ##########
d = c(100:200)
d[50]
d[seq(1,101,10)]
d[c(1:20)]
d[1:20]

length(d)
mean(d)
length(d[d<110])
sum(d[d<110])

x = c(1:20)
y = x[x%%3==0]
sort(y, decreasing=T)
mean(x[-(2:10)])

a = c(1,6,3,8)
a = sort(a)
names(a) = c('one','three','six','eight')

ages = c(58,20,85)
names = c('ta','kin','na')
x = list(ages, names)

x[[1]] = c(59,20,85)

x = c(1,6,8,11)
z = list('x*2'=x*2, 'x/2'=x/2)
z = list(x*2, x/2)
names(z) = c('x*2','x/2')

gender = c(rep('male',5), rep('female',10))
gneder_fac = factor(gender)
gneder_fac[16] = 'male'
summary(gneder_fac)

d = matrix(seq(5,60,5), 3,4)
d_t = matrix(d, 3,4, byrow=T)

b1 = c(4,5,6,2)
b2 = c(19,15,12,17)
b3 = c(20,24,28,23)
m1 = cbind(b1,b2,b3)

rich_state.x77 = subset(data.frame(state.x77)[c('Population','Income','Illiteracy','Life.Exp')], Income>=5000)
#rich_state.x77[c('Population','Income','Illiteracy','Life.Exp')]
#rich_state.x77[ ,1:4]
rich_state.x77

x = c(1,2,3)
y = c('white','blue','yellow')
z = c(T,F,T)
df = data.frame(x,y,z)

class(airquality)
airquality_m = as.matrix(airquality)
class(airquality_m)

nrow(subset(airquality, Ozone>120))
subset(airquality, Temp==max(Temp))

airquality['Wind']   #데이터프레임 형식
airquality[c('Wind')]

airquality[['Wind']]   #벡터 형식
airquality[, 'Wind']
airquality$Wind

setwd('D:/동덕/R')
air_6 = subset(airquality, Month==6)
write.table(air_6, 'air_6.txt', quote=F)   #따옴표 제거

swiss_F = subset(swiss, Fertility>=90)
swiss_F
write.csv(swiss_F, 'swiss_F.csv')

swd_F = read.csv('swiss_F.csv')

sum(swd_F$Education)
mean(swd_F$Examination)
sort(swd_F$Agriculture)

swd_F1 = subset(swiss, Infant.Mortality>20)
length(swd_F1[,1])
nrow(swd_F1)
View(swd_F1)

num = c(1,2,3,4,5)
type = c('vector','list','factor','matrix','dataframe')
dt = data.frame(num, type)
write.table(dt, 'data_type.txt', quote=F, row.names=F, eol='*')

print('안녕하세요')
a=1;b=3
sink('dist.txt',append=T)
cat('저는','\n')
sink()
cat('데이터')
sink('dist.txt',append=F)
cat(a+b, b-a, '언스전공생\n')
sink()
print('입니다.')

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

num=0; sum=0;
for(i in 1:100){
  if(i%%3==0){
    num = num+1
    sum = sum+i
  }
}
cat(num, sum)

i=1; k=1
while(i<=5){
  k = k*i
  i = i+1
}
print(k)

i=1
while(i<=9){
  cat(i, 'x 7 =', i*7, '\n')
  i = i+1
}

i=1
while(i<=100){
  if(i%%4==0){
    print('*')
  } else{ print(i) }
  i = i+1
}

n = nrow(airquality)
m = 0
for(i in 1:n){
  if(airquality[i,'Temp']>=90){
    cat(airquality[i,'Month'], airquality[i,'Day'], '\n')
    m = m+1
  }
}
print(m)
