rm(list=ls())

#출력: 화면에 출력/ 파일에 출력
age = c(10,114,12,106,20,5,21)
age

young = min(age)
old = max(age)
young
old

print(old)
cat('가장 젊은 사람의 나이는 ', young, '이고, \n가장 늙은 사람의 나이는', old,'이다.')

print(old, young)   #한 번에 여러개 출력x 앞에거 하나만 출력o
print('가장 젊은 사람의 나이는 ', young)   #마찬가지로 앞에 문자열만 출력

#install.packages('svDialogs')   #패키지 설치
library(svDialogs)   #활성화

answer = dlgInput('숫자를 입력해주세요: ')$res  #입력 받기(전부 string형태)
answer

answer_num = as.numeric(answer)   #입력받을 때부터 as.numeric해도 됨
x = answer_num+40
cat('당신이 지불할 금액은',x,'원 입니다.')

print('hello')
print('hi')   #두 줄을 동시에 실행해도 따로(줄 바꿈) 실행됨
#한번에 쓰려면 cat으로

cm = as.numeric(dlgInput('키를 입력해주세요: ')$res)
kg = as.numeric(dlgInput('몸무게를 입력해주세요: ')$res)
cat('당신의 키는',cm,'cm 이고, 당신의 몸무게는',kg,'kg 입니다. 키와 몸무게의 합계는 ',cm+kg,'입니다.')

getwd()   #현재 작업 폴더
setwd("D:/동덕/R")   #경로 변경하고 싶으면 이렇게

x = read.csv('airquality.csv', header=T)   #첫 번째 줄을 헤더(칼럼)로 사용할 것인가
#경로 지정할 때 \안 먹으니까 그냥 슬래쉬/ 사용하기
class(x)   #데이터프레임으로 저장
View(x)

age
write.csv(age, 'D:/동덕/R/nayoung.csv')   #nayung.csv 저장, 칼럼명/인덱스명 자동 설정
write.csv(age, 'D:/동덕/R/nayoung.csv', row.names=F)   #인덱스명 삭제

y = subset(iris, Species=='setosa')
write.csv(y, 'D:/동덕/R/setosa.csv')
read.csv('D:/동덕/R/setosa.csv')   #파일 열려 있는 상태에서 read하면 오류남

#install.packages('xlsx')
library(xlsx)
#install.packages('rJava')
library(rJava)

read.xlsx('setosa.xlsx', header=T, sheetIndex=1)

x = read.table('read_tab.txt', sep='\t')   #메모장 읽기/ 각 데이터 구분이 tab으로 되어있음
z = read.delim('read_tab.txt')   #tab을 자동으로 인식함

num = c(3,6,9)
char = c('a','b','c')
log = c(T,F,T)
data = data.frame(num, char, log)

write.table(data, 'nayoung.txt', row.names=F, col.names=F)
read.table('nayoung.txt')

age = c('qsd','asf','egq')
write.table(age, 'D:/동덕/R/nayoung.txt', append=T)
#append: 파일 이어쓰기(새 df를 아래쪽에 써넣음/ 병합x 별도의 df 2개를 아래로 나란히 쓴 것)

write.table(data, 'nayoung.txt', quoto=F)   #글자에 쌍따옴표 삭제
write.table(data, 'nayoung.txt', row.names=F, col.names=F, eol="////")
#기본은 행마다 줄바꿈인데 eol옵션으로 줄바꿈 대신 넣을 수 있음(각 행이 ////으로 한줄로 이어짐)

data = read.csv('airquality.csv', header=T)
a = subset(data, Temp>=90)
write.table(a, 'nayoung.txt', append=F, quoto=F, row.names=F, col.names=T)
#이어쓰기x 기존 인덱스 지우기, 기존 칼럼명은 놔두기, 쌍따옴표 없애기
read.table('nayoung.txt')

age = c(30,201,50,21,53,86,21,12)
young = min(age)

sink('nayoung.txt', append=F)   #append: 파일 이어쓰기 옵션
cat('가장 젊은 사람의 나이는', young, '이다.\n')   #줄바꿈 기본X 넣어줘야 함
print('안냥안냥')
sink()
# sink~sink줄 동시실행(세트임) -> 해당 내용이 파일에 쓰여짐

#------------------------강의안 연습문제-------------------------
View(airquality)
air_6 = subset(airquality, Month==6)
write.table(air_6, 'air_6.txt', quote=F, row.names=F)

swiss_F = subset(swiss, Fertility>=90)
write.csv(swiss_F, 'swiss_F.csv')

swd_F = read.csv('swiss_F.csv', header=T)
swd_F

sum(swd_F[ , 'Education'])
colSums(swd_F['Education'])
mean(swd_F[ , 'Examination'])
sort(swd_F$Agriculture)

swd_F1 = subset(swd_F, Infant.Mortality>20)
nrow(swd_F1)
View(swd_F1)

num = c(1,2,3,4,5)
type = c('vector', 'list', 'factor', 'matirx','dataframe')
dt = data.frame(num, type)
write.table(dt, 'data_type.txt', quote=F, eol='*', row.names=F)
dt
a = 1
b = 3
sink('dtsc.txt', append=F)
cat(a+b, b-a, '언스전공생\n')
sink( ) 