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