# R

## **<1주차>**
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
sort(a, deceasing=T): 내림차순 정렬(옵션명 없이 T만 써도 됨) <br>

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

## **<2주차>** <br>
length(n): 해당 벡터의 길이 (★len과 헷갈리지 않도록 주의★) <br>
b = 30:90; length(b): b는 60개가 아니라 61개(30부터 90까지) <br>

**1. 리스트** <br>
list(2, 6, 32.2, '안녕', TRUE) <br>
다양한 자료형 입력 가능 <br>
인덱싱은 lista[1]이 아니라 lista[[1]] 이중괄호 이용 <br>
출력해보면 [[1]] [[2]] 이런식으로 값에 번호가 매겨져 있음 <br>

names(lista)로 이름 붙이기 가능 <br>
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

팩터로 지정한 후, 기존에 없던 새로운 값을 넣으면 에러남 <br>
기존에 있던 값은 추가 가능. summary 카운트 올라감 <br>
