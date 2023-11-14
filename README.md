# R

## **<chapter 1>**
**1. 연산자** <br>
덧셈(+) 뺄셈(-) 나눗셈(/) 곱셈(*) <br>
제곱(^, **) 나머지(%%) <br>
자연로그( log(n) ) 밑이10인로그( log10(n) ) <br>
루트( sqrt(n) ) <br>
절대값( abs(n) ) <br>
팩토리얼( factorial(n) ) <br>
싸인( sin(pi/6) =sin30도) 코싸인( cos(pi/6) ) 탄젠트( tan(pi/4) ) <br>

**2. 수 나열** <br>
sample(n): 1 ~ n사이, n개, 중복x (셔플이랑 비슷) <br>
sample(n:m, c): n ~ m사이, c개, 중복x (범위 내에서 샘플 생성) <br>
n:m : n~m까지 숫자나열 <br>

**3. 변수명** <br>
숫자로 시작x <br>
한글로 시작 -> 생성은 가능하나 오류 위험 많음 <br>
.으로 시작 -> 이론적으론 가능하나 오류 자주남 <br>
영어로 시작 -> good <br>
대소문자 구분o <br>
이름은 의미있게 <br>

**4. 변수 클리어** <br>
rm(list=ls()): 모든 변수 삭제 <br>
remove(n): 해당 변수 삭제 <br>

**5. 자료형** <br>
문자는 연산x <br>
class(i): 해당 변수의 자료형을 알려줌 <br>
is.character(i): 해당 변수가 캐릭터형인지 여부(T/F) <br>

character: 문자 <br>
numeric: 숫자(정수+실수) <br>
logical: 논리 <br>

NULL: 정의되어 있지 않음 <br>
NA: 결측값(누락값, 응답x) <br>
NaN: 수학적으로 정의가 불가 (ex. 루트-3) <br>
inf, -inf: 양/음의 무한대 <br>

**6. 벡터** <br>
c(i, j, k): 여러 값을 하나로 묶어줌 <br>
같은 자료형만 넣을 수 있음 <br>
여러 자료형 넣으면 하나로 통일되어 바뀜(문자가 들어가면 무조건  character) <br>

**7. seq** <br>
seq(from=n, to=m, by=i): n부터 m까지, i씩 건너뛰며 <br>
seq(n, m, length.out=5): n부터 m까지 균등하게 5개로 나눔 <br>

**8. rep** <br>
rep(x, times=num): x를 num번 반복 <br>
x자리에 벡터를 넣으면 통째로 n번 반복 <br>
each=5 옵션을 주면, 벡터 각각의 요소가 차례대로 5번씩 반복(통째로x) <br>
length.out=10 옵션을 주면 반복하다가 10번째 요소가 출력되는 순간 중단 <br>
rep(c(1,5), c(3,2)): 1은 3번, 5는 2번 반복(각각의 요소 횟수 지정) <br>

**9. names** <br>
names(x) = c('nayoung','taewan','tom'): 만들어진 벡터 x에 이름 지정 <br>
score = c('nayoung'=100,'taewan'=90,'tom'=80): 처음부터 이름 지정해서 벡터 생성할 수도 있음 <br>
원소 개수랑 지정하려는 이름 개수가 불일치하면 에러남(부족한 자리에 NA값 들어감) <br>
score['nayoung']: 이렇게 값 접근이 가능 <br>

**10. 인덱싱** <br>
없는 자리에 접근하려고 하면 NA출력됨 <br>
d[c(1,5,7)]: 이런식으로 여러 인덱스에 접근 가능 <br>
d[-1]: 첫번째 인덱스 빼고 <br>
d[-1:-4]: 1~4번 인덱스 빼고(-(1:4)와 같음) <br>

**11. 정렬** <br>
sort(a): 오름차순 정렬 <br>
sort(a, decreasing=T): 내림차순 정렬(옵션명 없이 T만 써도 됨) <br>

**12. 연산 함수** <br>
합계 sum(d), 평균 mean(d), 중앙값median(d) <br>
같다== 같지않다 != <br>
이상 이하 >= <= <br>
또는 | 그리고 & <br>

**13. 논리연산과 값** <br>
d>=5: 조건식에 맞는 자리에는 TRUE가, 틀린 자리에는 FASLE가 옴 <br>
sum(d>=5): 조건식에 맞는 TRUE값의 개수 <br>
sum(d[d>=5]): 조건식에 맞는 값들의 합 <br>
(★sum 연산의 결과는 반드시 1개 -> 결과가 여러개 나온 선지는 틀린 답★) <br>

## **<chapter 2>** <br>
length(n): 해당 벡터의 길이 (★len과 헷갈리지 않도록 주의★) <br>
b = 30:90; length(b): b는 60개가 아니라 61개(30부터 90까지) <br>

**1. 리스트** <br>
list(2, 6, 32.2, '안녕', TRUE) <br>
다양한 자료형 입력 가능 <br>
인덱싱은 lista[1]이 아니라 lista[[1]] 이중괄호 이용 (그냥 [ ]만 하면 이름+값 함께 나옴) <br>
리스트 출력해서 보면 [[1]] [[2]] 이런식으로 값에 번호가 매겨져 있음 <br>

names(lista) = c('name1', 'name2') 로 이름 붙이기 가능 <br>
[[1]] [[2]] 이런 번호 대신 $이름이 붙음 <br>
lista['nayoung']: 이름, 값 2줄 출력 <br>
lista[['nayoung']]: 값만 출력 <br>
lista$nayoung: 값만 출력 <br>

listb = list(j=3, k='a', l=T): 처음부터 이름 붙여서 생성 <br>
리스트 안에 배열이나 리스트 넣을 수 있음 <br>

**2. 팩터** <br>
factor( c(0,3,1,0,0,1,1) ): 값과 함께 levels이 같이 나옴 <br>
levels(x): 값들의 종류 <br>
summary(x): 값 종류별 개수 카운트 <br>

팩터로 지정한 후, 기존에 없던 새로운 값을 넣으면 NA's값이 들어감 <br>
기존에 있던 값은 추가 가능. summary 카운트 올라감 <br>

**3. View 뷰 함수** <br>
View(df): 데이터프레임, 매트릭스 등 표 형식으로 보여줌

**4. 매트릭스** <br>
x = matrix(1:20, nrow=4, ncol=5): 데이터, 행, 열 <br>
입력 순서만 맞추면 nrow, ncol은 생략 가능 <br>

matrix(1:20, nrow=4): 나누어 떨어지기만 하면 행, 열 중 하나만 크기를 정해줘도 ok <br>
만약 개수가 맞지 않으면 경고메세지 + 부족한 자리에 기존 데이터를 순서대로 다시 채워넣음(데이터 중복) <br>

데이터 입력 순서는 Down(↓), Right(→) <br>
단, Right(→), Down(↓)으로 채우고 싶다면 byrow=T 옵션을 줄 것 <br>

matrix(0,3,4): 모든 데이터 자리에 0입력 <br>
matrix(nrow=3, ncol=4): 데이터를 넣어주지 않으면 전부 NA <br>
matrix(NA, 3, 4): 직접적으로 NA를 입력해줄 수도 있음 <br>

**5. 길이** <br>
nrow(n): 행 길이 <br>
ncol(n): 열 길이 <br>
dim(n): 행,열 길이 -> dim[1] 행, dim[2] 열 <br>
length(n): 전체 행x열 길이(데이터 칸 개수) <br>

**6. 병합** <br>
cbind(x, y): 칼럼 방향(→)으로 병함 <br>
rbind(x, y): 로우 방향(↓)으로 병합 <br>

cbind(x, y, z): 꼭 2개씩 합칠 필요x (그 이상도 가능) <br>

**7. 이차원 인덱싱** <br>
x[3, ]: 3행 전부 다 출력 <br>
x[ ,3]: 3열 전부 다 출력 <br>
꼭 '콤마+빈칸'으로 써줘야 함(콤마 없이 행만 쓰는 거x) <br>

**8. 매트릭스: 행열 이름 지정** <br>
colnames(x) = c('나이','몸무게','월'): 칼럼 이름 지정 <br>
rownames(x) = c('영수','수연','연희','희수'): 행 이름 지정(각 인덱스명 지정) <br>

colnames(x): 칼럼명 리스트 <br>
rownames(x): 인덱스명 리스트 <br>

x['수연', ]: 한 행을 전부 뽑고 싶다면 인덱스 번호 대신 이렇게도 가능 <br>
x['수연', '나이']: 인덱스 번호 대신 값 접근 가능 <br>
단, 여기서도 콤마+공백이 없다면 NA출력 (칼럼명으로 출력할 때도 마찬가지) <br>

x$'나이'  : 나이 열 전부 출력(따옴표 없어도 실행됨) <br>

iris[ , c(1:3)]: 1~3열 전부 출력 <br>
iris[ , c(2,7)]: 2열, 7열 전부 출력 <br>
*숫자대신 칼럼명으로 접근해도 마찬가지. 따옴표 써줄 것 <br>

## **<chapter 3>** <br>
**1. 데이터프레임** <br>
df = data.frame(c('seoul', 'dokyo', 'washington'), c(1,3,2)) <br>
: 데이터프레임 생성 (이름 지정을 안 해줘서 칼럼명 자리에 c...seoul...dokyo... 이런식으로 더럽게 나옴) <br>

city = c('seoul', 'dokyo', 'washington') <br>
rank =  c(1,3,2) <br>
df = data.frame(city, rank) <br>
: city와 rank가 칼럼명으로 자동 설정 <br>

df = data.frame(city=c('seoul', 'dokyo', 'washington'), rank=c(1,3,2)) <br>
: 이렇게 바로 이름을 지정해 줄 수도 있음 <br>

**2. 매트릭스 <-> 데이터프레임 변환** <br>
as.matrix(df): 매트릭스로 변환 <br>
as.data.frame(df): 데이터프레임으로 변환 <br>
*as 없어도 잘 돌아감 <br>

**3. 매트릭스의 덧셈** <br>
같은 위치에 있는 수끼리 연산 <br>
두 매트릭스의 형태가 같아야 함 <br>
데이터프레임은 모든 데이터가 숫자일 경우만 연산 가능 <br>

**4. 길이(사이즈) 확인 함수** <br>
dim(a) : 형태(n x m) <br>
nrow(a), ncol(a) : 행/열 개수 <br>
rownames(a), colnames(a) : 행/열 이름 출력 (=부호로 정의하면 행/열 이름 설정도 가능) <br>
head(iris, 5), tail(iris, 5): 맨앞/맨뒤 5개 행 출력(기본값은 6행) <br>

**5. 테이블 정보** <br>
str(iris) : 해당 변수의 정보 출력(자료형, 행렬 사이즈, 칼럼별 데이터&자료형, factor, levels 등) <br>
unique(iris[ , 5]) : 5열에 있는 값 종류들을 보여줌 <br>
table(iris[ , 5]) : 5열의 각 값 종류별 개수 카운트 <br>

**6. 산술연산자** 대소문자 주의 <br>
colSums(a) : 각 칼럼별 합(문자열 칼럼은 빼줘야 제대로 연산됨) <br>
colMeans(a) : 칼럼별 평균 <br>
rowSums(a) : 각 행별 합 <br>
rowMeans(a) : 행별 평균 <br>

**7. 전치함수 t** <br>
t(a) : 전치행렬(행과 열을 뒤바꿔 줌) <br>

**8. 데이터프레임 조건 함수** <br>
subset(iris, Length>5) : 조건을 걸어 특정 행만 추출 <br>
*매트릭스의 경우 칼럼 이름에 따옴표를 쳐줘야 함 (그래도 오류 많이 남) <br>
  - 방법1) subset(a, a[ , 3]>5)숫자 인덱스로 접근 <br>
  - 방법2) subset(as.data.frame(a), col>5) 잠시 데이터프레임으로 바꿔서 조건 걸어줌 <br>
*데이터프레임은 칼럼명에 따옴표x <br>

## **<chapter 4>** <br>
**1. 입출력 함수** <br>
print(a) : 출력함수 (문자열이나 변수를 '1개'만 출력 가능/ 여러개 넣을 경우 첫 번째 것만 출력) <br>
cat('나의 이름은', name, '입니다.') : 변수 및 문자열을 혼합해 사용 가능 (개수 제한x 출력 후 자동 줄바꿈x) <br>

**2. 입력 함수** <br>
install.packages('svDialogs') :  패키지 설치 <br>
library(svDialogs) : 활성화 <br>

dlgInput('내용을 입력해주세요: ')$res : 입력함수 (모두 string형태로 받음/ $res가 없으면 nan값으로 받음) <br>
as.numeric(dlgInput('숫자로 입력: ')$res) : 이런 식으로 입력받은 문자를 숫자형으로 바꿀 수 있음 (as 안 적어주면 0벡터 배열로 받음) <br>

**3. 작업 파일** <br>
getwd() : 현재 작업 폴더 알려줌 <br>
setwd('경로') : 작업 폴더 변경 <br>

**4. 파일 읽고 쓰기** <br>
read.csv('파일 경로') : csv파일 읽어오기(현재작업 폴더 내에 있으면 파일명만 써도ok) <br>
  - header=F : 첫 번째 줄을 헤더(칼럼)로 받지 않음 (일반 데이터로 들어감) <br>

write.csv(data, '파일 경로') : 파일 저장 (칼럼명, 인덱스명 자동 설정됨) <br>
  - row.names=F : 인덱스명 삭제 <br>
  - col.names=F : 칼럼명 삭제 <br>

read.table('텍스트파일 경로', sep='\t') : txt파일 읽기(각 데이터 구분이 tab으로 되어 있음) <br>
read.delim('텍스트파일 경로') : tab을 자동으로 인식함 <br>

write.table(data, '텍스트파일 경로') : 파일 저장 <br>
  - quote=F : 쌍따옴표 삭제 <br>
  - append=T : 파일 이어쓰기 (아래에 새로운 정보를 붙여서 씀) <br>
  - eol='\\\\' : 각 행 구분 문자 지정(기본은 줄바꿈으로 구분) <br>

sink('파일 경로', append=T) <br>
cat('가장 젋은 사람의 나이는', young, '이다.\n') <br>
sink() <br>
*sink~sink줄 동시실행(세트임) -> 그 사이의 내용이 파일에 쓰여짐 <br>

## **<chapter 5>** <br>
**1. 조건문 if** <br>
if(score >= 90){ <br>
print('학점은 A입니다.') <br>
} else if(score >=80){ <br>
print('학점은 B입니다.') <br>
} else{ <br>
print('학점은 C입니다.') <br>
} <br>
*if elseif else 할 때 {}괄호 바로 옆에 써야 함 <br>

ifelse(a>b, a, b) <br>
: 조건이 참이면 a를, 거짓이면 b를 반환 <br>
반환 형식이기 때문에 a, b자리에 a=6이런 식으로 대입x <br>
a = ifelse(a>b, 6, -1) 이렇게는 가능 <br>

**2. 반복문 for** <br>
for(i in 1:10){ <br>
print(i)  } <br>

i=1 <br>
while(i<=10){ <br>
print(i) <br>
i = i+1  } <br>

*for문 <-> while문 자유롭게 변환 가능해야 함 <br>

## **<chapter 6>** <br>
**1. apply(df, n, function)** <br>
데이터셋에 행 혹은 열 방향으로 함수 적용<br>
n 자리가 1이면 행, 2면 열 (파이썬과 혼동하지 말 것: 0행,1열)<br>
ex) apply(a, 1, mean) -> a의 각 행별로 평균값<br>

데이터셋이 반드시 숫자일 필요는 없음<br>
단, 적용할 함수가 숫자에만 가능한 함수인지 확인 필요<br>
ex) apply(a, 2, length) -> 각 열 별 데이터 개수<br>

**2. 사용자 정의 함수** <br>
nayoung = function(x, y=0){<br>
z1 = x+y<br>
z2 = x*y<br>
return ( list(sum=z1, mul= z2) )<br>
}<br>
a = nayoung(x=2, y=10)<br>
print(a$sum)<br>

리턴값은 필수x 필요한 경우 사용. 괄호 필수 return( )<br>
리턴값이 2개 이상이면 반드시 리스트로 묶어줘야 함 (c벡터로도 묶임)<br>
리턴 리스트에 이름을 지정해주면 나중에 활용이 편함<br>

인자는 받지 않거나, 여러개 받아도ok 단, 전달값과 입력받는 값의 개수가 일치해야 함<br>
인자를 받을 때 초기값을 설정했으면 해당 변수는 입력하지 않아도ok<br>

**3. 다른 파일의 사용자정의 함수 사용** <br>
setwd('D:/동덕/R')<br>
source("file_name.R")<br>
myfun(5,10)<br>
-> file_name.R파일에서 정의한 myfun 함수를 새 파일에서도 사용할 수 있음 (source함수를 사용하는 순간 해당 파일 내의 함수들 전부 로드해옴)<br>

**4. 위치(인덱스) 반환 함수** <br>
idx = which(조건): 조건에 맞는 값들의 인덱스 반환<br>
ex) which(a>5): 3 5 이런 식으로 숫자배열 리턴<br>
df[idx, ]와 같이 쓸 수 있음 (idx에 해당하는 모든 행 반환)<br>

which.max(a): a의 최댓값의 인덱스 (which(a==max(a))와 같음)<br>
which.min(a): a의 최솟값의 인덱스<br>
a[ [which.max(a)] ]: a의 최댓값의 인덱스로 해당 값에 접근<br>

## **<chapter 7>** <br>
**1. 도수분포표 table** <br>
table(data): 각 원소별 개수 카운트 <br>
table(data)/length(data): 전체 중 각 데이터가 차지하는 비율 <br>

table[c(2,3,1,4)] -> 기존 데이터의 순서를 2번째를 1번째로, 3번째를 2번째로... 뒤바꿈 <br>

**2. 막대/원 그래프 barplot pie** <br>
barplot(ds, main='favorite color', col=colors) <br>
pie(ds, main='favorite season', col=colors) <br>

-main: 제목설정 <br>
-col: 색상설정 <br>

**3. 히스트플랏 hist** <br>
hist(dist, main='제동거리 히스토그램', <br>
     xlab='제동거리', ylab='빈도수', <br>
     border='blue', col='green', <br>
     las=2, breaks=5) <br>

-xlab, ylab: xy제목 설정 <br>
-border, col: 테두리 색, 막대 색 <br>
-las: x축 글씨방향 회전(0~3) <br>
-breaks: 막대 개수 조절(개수를 설정해도 R이 더 적절하다고 생각한 구간으로 변할 수 있음) <br>

**4. 박스플랏 boxplot** <br>
boxplot(dist, main='자동차 제동거리') <br>

boxplot.stats(dist): 통계값 조회 <br>
-최솟값, 1분위수, 2분위수(중앙값), 3분위수, 최대값 <br>
-데이터 수 <br>
-중앙값의 신뢰구간 <br>
-극단값(이상치) 데이터 <br>

*그룹이 있는 자료의 박스플랏(그룹별 박스) <br>
boxplot(Petal.Length~Species, data=iris, main='품종별 꽃잎 길이'): 물결 뒤에 구분하고 싶은 그룹(x축) <br>
data=iris없이 iris$Species 이런 식으로 넣어줘도 ok

**5. 산점도 plot** <br>
plot(mtcars$wt, mtcars$mpg, main='중량-연비 그래프', <br>
     xlab='중량', ylab='연비(MPG)',  <br>
     col='red', pch=19) <br>
-pch: 포인터 종류 <br>

*x,y를 콤마로 구분할 때는 xy순서로, 물결로 구분할 때는 yx순서로(mpg\~wt, data=mtcars) <br>

pairs(mtcars[ , c('mpg', 'disp','drat','wt')]): 여러 변수들 간 산점도(각 칼럼별 조합) <br>
-lower/upper.panel=NULL: 대각선 아래/위로 그림 삭제 <br>

plot(iris.2, main='아이리스 plot', <br>
     pch=c(as.numeric(iris$Species)), <br>
     col=c('red','green','blue')[as.numeric(iris$Species)]) <br>
각 종별로 포인터, 색상 다르게 산점도 그리기 <br>

**6. 산점도+회귀식 abline** <br>
plot(bal~beers, data=tbl) <br>
res = lm(bal~beers, data=tbl) : 회귀식(y=ax+b) 도출 <br>
abline(res) <br>
산점도를 먼저 그린 후 abline에 회귀식을 넣으면 회귀선을 그려줌 <br>

cor(beers, bal): 두 칼럼 간 상관계수(파이썬 corr함수) <br>

**7. 선 그래프** <br>
plot(month, late, main='월별 지각생 통계', <br>
     type='l', lty=1, lwd=1, <br>
     xlab='월', ylab='지각 횟수', <br>
     ylim=c(1,15)) <br>
-type: 그래프 종류(l, b, s, o등) <br>
-lty, lwd: 선 종류(1~6), 선 굵기 <br>
-ylim: y축 최대,최소 값 <br>

lines(month, late2, type='b', col='blue') <br>
기존에 그려진 그래프에 선 추가 <br>

**8. 산술연산** <br>
평균: mean(data) <br>
중앙값: median(data) <br>
절사평균(상하위 n% 제외한 평균): mean(data, trim=0.2)   #trim=은 생략해도 됨 <br>

사분위수: quantile(data) <br>
사분위수, 평균, 최대최소: summary(data) <br>

분산(오차제곱합/데이터 수): var(data) <br>
표준편차(분산의 제곱근): sd(data) <br>
범위: range(data) <br>
차분(뒤 요소와의 차이값): diff(data) <br>

**9. 그래프 도화지** <br>
par(mfrow=c(1,2)): 그래프 몇 개 그릴건지(subplots와 유사) <br>
