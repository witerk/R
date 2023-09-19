rm(list=ls())   #clear~~~

View(state.x77)   #데이터프레임 볼 수 있음(미국 50개 주 관련 데이터셋)
View(iris)   #붓꽃 데이터셋

x = matrix(1:20, nrow=4, ncol=5)   #데이터, 행, 렬
x
View(x)
x[4,5]   #인덱스는 1부터 시작

xz = matrix(1:20, nrow=4)   #나눠 떨어지기만 하면 ncol 생략가능
xz = matrix(1:20, nrow=3)   #안 나눠 떨어지면 경고메세지 + 데이터 개수 오버해서 채움(첫 번째 부터 다시)
xz

z = matrix(1:18, 3)   #행,열 순서로 넣을거면 nrow, ncol 생략 가능
z = matrix(1:18, ncol=3)   #행 생략할거면 ncol=nn 로 써줘야 함
z = matrix(1:18, ncol=3, byrow=T)   #원래 데이터는 아래로 먼저 들어가는데, 옵션으로 옆으로 순서대로 들어가게 할 수 있음
z
View(z)

c = matrix(0,3,4)   #데이터값 전부 0, 3x4행렬
c = matrix(nrow=3, ncol=4)   #데이터값 전부 NA
c = matrix(NA, nrow=3, ncol=4)  #데이터값 자리에 NA 써줘도 동일
c

x = matrix(c(3,2,6,734,2,24,1,75,3,2), 2, 5)   #데이터, 행, 열
x

nrow(x)   #행 길이
ncol(x)   #열 길이
dim(x)[1]   #행 길이
dim(x)[2]   #열 길이
dim(x)   #행, 열
length(x)   #전체 행x열 길이, 즉 데이터값 셀의 개수

x = 1:3
y = 4:6
z = cbind(x,y)   #칼럼 방향으로 병합(붙이기)
a = rbind(x,y)   #로우 방향으로 병합

cbind(1:3, 4:6, matrix(7:12, 3,2))   #가로로 붙이는데, 1~3 한줄 + 4~6 한줄 + 7~12 두줄(3x2행렬)
x = rbind(matrix(1:6, 2,3), matrix(7:12, 2,3))   #아래로 붙임. 2x3행렬 2개

x[3,]   #3행 전부 다 출력
x[,1]   #1열 전부 다 출력

colnames(x) = c('나이','몸무게','월')   #칼럼 이름 지정
rownames(x) = c('영수','수연','연희','희수')   #행 이름 지정(인덱스 설정)
x['수연', ]   #해당 행 전부 뽑고 싶으면, 열 자리 비워두기
x['수연']   #이렇게 하면 NA나옴

colnames(x)   #칼럼명 리스트
rownames(x)   #인덱스명 리스트
x['수연','나이']    # x[2,1]과 같음
