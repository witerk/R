rm(list=ls())

#트리맵 패키지 설치
#install.packages('treemap')
library(treemap)   # 패키지 불러오기

data(GNI2014)   #데이터 불러오기
head(GNI2014)

treemap(GNI2014, 
        index=c('continent', 'iso3'),   #박스 분류 기준(2개 칼럼)
        vSize='population',   #박스 크기를 무슨 기준으로 그릴 것이냐
        vColor='GNI',   #색상 기준으로 삼을 칼럼
        type='value',   #GNI값의 대소에 따라 색상을 칠하겠다
        title='GNI')

?treemap   #트리맵에는 데이터프레임 형식만 들어감
x = as.data.frame(state.x77)
x = data.frame(x, iso=rownames(x))   #도시명(인덱스)을 칼럼으로 추가
head(x)

#트리맵
treemap(x, index=c('iso'),   #박스 위에 주 이름 쓰고 싶어서
        vSize='Area',
        vColor='Income', type='value',
        title='USA')

#버블 차트 (symbols랑 text랑 함께 실행)
symbols(x$Illiteracy, x$Murder,   #x,y값
        circles=x$Population,   #원 크기 기준
### 3가지 옵션은 필수, 이 아래는 선택 ###
        inches=0.3,   #원 크기 조절(높을수록 원 커짐)
        bg='pink', fg='blue',   #원 색상(bg내부,fg테두리)
        lwd=1.5,   #테두리 선 두께
        xlab='rate of Illiteracy', ylab='Crime(Murder) rate',
        main='Illiteracy and Crime' )
text(x$Illiteracy, x$Murder,   #좌표(x,y 원 위에 적을 거임)
     rownames(x),   #넣을 글씨
     cex=0.6,   #글씨 크기
     col='red')   #글씨 색상

# 모자이크 플롯
mosaicplot(~mtcars$gear+mtcars$vs)   #물결 x값 + y값 순으로 넣어주기
mosaicplot(~gear+vs, data=mtcars)   #data를 따로 지정해 줘도 됨

mosaicplot(~gear+vs, data=mtcars,
           color=T,   #y값에 따라 색상 다르게 칠해줌
           main='Gear and Vs')

mosaicplot(~gear+vs, data=mtcars,
           color=c('blue', 'skyblue'),   #색상 지정도 가능(위에부터 순서대로 색칠)
           main='Gear and Vs')

#ggplot 패키지 설치
#install.packages('ggplot')
library(ggplot2)

#옵션이 +로 이어짐
ggplot(mtcars, aes(x=wt, y=mpg))+
  geom_point()+   #점 찍기
  labs(x='WT', y='MPG')   #xy축 라벨

month=c(1,2,3,4,5,6)
rain=c(55,50,48,40,60,90)
df = data.frame(month, rain)

ggplot(df, aes(x=month, y=rain))+
  geom_bar(stat='identity', width=0.5, fill='blue')+
  #막대그래프/ rain값(수치) 자체를 이용하겠다/ 막대 두께/ 색상
  labs(x='월', y='강수량')+   #여기에 title로 제목 줘도 됨
  ggtitle('월별 강수량')+   #제목
  theme(plot.title=element_text(size=25, face='bold',color='steelblue'))+   #제목에 대한 옵션 추가
  coord_flip()   #막대그래프가 가로로 그려짐

ggplot(iris, aes(x=Petal.Length, fill=Species, color=Species))+
  #히스토그램은 y값 지정x/ 종별로 색 다르게 칠함(fill내부, color윤곽선)
  geom_histogram(binwidth=0.5, position='dodge')+
  #히스토그램/ 간격설정, 겹치지 않게
  theme(legend.position='top')
  #범례 상단에 달겠다(기본값은 우측) -> 시험에 안냄

ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width, color=Species))+
  geom_point(size=3)+   #산점도(점 크기)
  ggtitle('꽃잎의 길이와 폭')+theme(plot.title=element_text(size=25, face='bold',color='steelblue'))

ggplot(data=iris, aes(y=Petal.Length, fill=Species))+   #박스플랏은 x값 필요x
  geom_boxplot()   #종별로 색칠하고 싶으면 여기에는 fill옵션 주면 안됨

year = 1937:1960
cnt = as.vector(airmiles)
df = data.frame(year, cnt)
head(df)

ggplot(data=df, aes(x=year, y=cnt))+
  geom_line(col='red')   #선 그래프(선 색상)

#------------------------강의안 연습문제-------------------------

symbols(swiss$Fertility, swiss$Agriculture, 
        circles=swiss$Education,
        bg='lightgreen', fg='blue',
        inches=0.5,
        xlab='Fertility', ylab='Agriculture',
        main='R_Example2')
text(swiss$Fertility, swiss$Agriculture, 
     rownames(swiss),
     cex=0.5, col='darkblue')

ggplot(mtcars, aes(x=gear))+   #y값 없이 빈도수로 사용
  geom_bar()+   #y값이 없으므로 stat='identity' 없어도 됨
  labs(x='기어의 수', y='빈도수')

ggplot(mtcars, aes(x=mpg, y=wt, fill=gear, color=gear))+
  geom_point(size=2)
