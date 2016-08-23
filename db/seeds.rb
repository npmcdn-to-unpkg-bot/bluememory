# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
require 'csv'  

CSV.foreach("spot01.csv", :headers => true, encoding: "euc-kr") do |row|
  Spot.create!(row.to_hash)
end


Checklist.create(title: '우리 딸램')
Additive.create(name: '니코틴산아미드', english: 'Nicotinesanmide', information: '니코틴산마이드는 주로 서부 유럽에서 발견되며 습한 환경에서 알레르기를 유발하는 주요한 물질입니다')

Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:1,address:'경기도 화성시',description:'♬유재하-지난날 / 39번국도에서 제네시스와 함께',song:1,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:1,address:'서울특별시 노원구',description:"",song:0,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:1,address:'경기도 구리시',description:"",song:0,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:1,address:'강원도 홍천군',description:'♬윤도현-너를보내고 / 44번국도에서 제네시스와 함께',song:1,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:1,address:'강원도 인제군',description:'<iframe title="YouTube video player" type="text/html" width="100%" height="100%" src="https://www.youtube.com/embed/RMwNqWtH34g" frameborder="0"></iframe>',song:0,movie:1)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:1,address:'강원도 속초시',description:'♬여자친구-시간을달려서 / 56번국도에서 제네시스와 함께',song:1,movie:0)

Article.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:1,name:'현대씽씽이',period:'7/17-7/30',image:"",visited:'#경기#서울#강원',content:'재미있었다재미있었다재미있었다재미있었다',like_num:30, rating:8)

Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'경기도',description:'<iframe title="YouTube video player" type="text/html" width="100%" height="100%" src="https://www.youtube.com/embed/RMwNqWtH34g" frameborder="0"></iframe>',song:0,movie:1)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'충청북도',description:"",song:0,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'경상북도',description:"",song:1,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'대구광역시',description:"",song:0,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'경상북도',description:"",song:0,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'대구광역시',description:'<iframe title="YouTube video player" type="text/html" width="100%" height="100%" src="https://www.youtube.com/embed/RMwNqWtH34g" frameborder="0"></iframe>',song:0,movie:1)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'경상북도',description:"",song:1,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'대구광역시',description:"",song:0,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'경상북도',description:"",song:0,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'대구광역시',description:"",song:0,movie:1)        
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'경상북도',description:"",song:0,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'충청북도',description:"",song:1,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'충청남도',description:'<iframe title="YouTube video player" type="text/html" width="100%" height="100%" src="https://www.youtube.com/embed/RMwNqWtH34g" frameborder="0"></iframe>',song:0,movie:1)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'경기도',description:"",song:1,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'인천광역시',description:"",song:0,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'경기도',description:"",song:1,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,address:'인천광역시',description:"",song:0,movie:0)

Article.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:2,name:'현대씽씽이',period:'8/21-8/23',image:"",visited:'#경기#대구#경북',content:'재미있었다재미있었다재미있었다재미있었다',like_num:22, rating:0)
Article.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:3,name:'현대씽씽이',period:'5/11-5/13',image:"",visited:'#경기#서울#충남',content:'재미있었다재미있었다재미있었다재미있었다',like_num:37, rating:0)

Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:3,address:'경기도',description:"",song:0,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:3,address:'서울특별시',description:"",song:1,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:3,address:'경기도',description:"",song:0,movie:1)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:3,address:'충청남도',description:"",song:1,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:3,address:'서울특별시',description:"",song:0,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:3,address:'경기도',description:"",song:1,movie:0)
Location.create(car_id:'ac67748cdfb42803da872962f9e5209e',trip_num:3,address:'인천광역시',description:"",song:0,movie:0)


Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'경기도',description:"",song:1,movie:0)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'충청남도',description:"",song:0,movie:0)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'충청북도',description:"",song:1,movie:0)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'경상북도',description:"",song:0,movie:0)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'대구광역시',description:"",song:0,movie:1)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'경상북도',description:"",song:1,movie:0)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'대구광역시',description:"",song:0,movie:0)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'경상북도',description:"",song:0,movie:1)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'대구광역시',description:"",song:1,movie:0)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'경상북도',description:"",song:0,movie:0)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'경상남도',description:"",song:1,movie:0)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'대구광역시',description:"",song:0,movie:0)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'경상북도',description:"",song:0,movie:0)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'충청북도',description:"",song:1,movie:0)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'충청남도',description:"",song:0,movie:1)
Location.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,address:'경기도',description:"",song:0,movie:0)

Article.create(car_id:'b5607f88acb5fcff52eac82f860a3c12',trip_num:1,name:'이종석',period:'7/7-7/13',image:"",visited:'#경북#충북#대구',content:'재미있었다재미있었다재미있었다재미있었다',like_num:37, rating:8)

Location.create(car_id:'3c7959088ef21a7c2948d6e294d47c89',trip_num:1,address:'경기도',description:"",song:0,movie:0)
Location.create(car_id:'3c7959088ef21a7c2948d6e294d47c89',trip_num:1,address:'서울특별시',description:"",song:1,movie:0)
Location.create(car_id:'3c7959088ef21a7c2948d6e294d47c89',trip_num:1,address:'경기도',description:"",song:0,movie:0)
Location.create(car_id:'3c7959088ef21a7c2948d6e294d47c89',trip_num:1,address:'서울특별시',description:"",song:0,movie:1)
Location.create(car_id:'3c7959088ef21a7c2948d6e294d47c89',trip_num:1,address:'경기도',description:"",song:0,movie:0)
Location.create(car_id:'3c7959088ef21a7c2948d6e294d47c89',trip_num:1,address:'서울특별시',description:"",song:0,movie:0)
Location.create(car_id:'3c7959088ef21a7c2948d6e294d47c89',trip_num:1,address:'경기도',description:"",song:0,movie:0)
Location.create(car_id:'3c7959088ef21a7c2948d6e294d47c89',trip_num:1,address:'서울특별시',description:"",song:0,movie:0)
Location.create(car_id:'3c7959088ef21a7c2948d6e294d47c89',trip_num:1,address:'경기도',description:"",song:0,movie:1)
Location.create(car_id:'3c7959088ef21a7c2948d6e294d47c89',trip_num:1,address:'서울특별시',description:"",song:0,movie:0)
Location.create(car_id:'3c7959088ef21a7c2948d6e294d47c89',trip_num:1,address:'경기도',description:"",song:1,movie:0)

Article.create(car_id:'3c7959088ef21a7c2948d6e294d47c89',trip_num:1,name:'김준현',period:'2/26-3/13',image:"",visited:'#경기#서울',content:'재미있었다재미있었다재미있었다재미있었다',like_num:11, rating:6)

Location.create(car_id:'926b34f4d951772b5c57700491e4a380',trip_num:1,address:'인천광역시',description:"",song:0,movie:1)
Location.create(car_id:'926b34f4d951772b5c57700491e4a380',trip_num:1,address:'경기도',description:"",song:1,movie:0)
Location.create(car_id:'926b34f4d951772b5c57700491e4a380',trip_num:1,address:'서울특별시',description:"",song:0,movie:0)
Location.create(car_id:'926b34f4d951772b5c57700491e4a380',trip_num:1,address:'경기도',description:"",song:0,movie:1)
Location.create(car_id:'926b34f4d951772b5c57700491e4a380',trip_num:1,address:'인천광역시',description:"",song:0,movie:0)

Article.create(car_id:'926b34f4d951772b5c57700491e4a380',trip_num:1,name:'이나영',period:'11/16-11/23',image:"",visited:'#인천#경기#서울',content:'재미있었다재미있었다재미있었다재미있었다',like_num:23, rating:8)

Location.create(car_id:'ec95408226ffe38fb0c7125469019f11',trip_num:1,address:'경기도',description:"",song:1,movie:0)
Location.create(car_id:'ec95408226ffe38fb0c7125469019f11',trip_num:1,address:'충청남도',description:"",song:0,movie:0)
Location.create(car_id:'ec95408226ffe38fb0c7125469019f11',trip_num:1,address:'경기도',description:"",song:1,movie:0)
Location.create(car_id:'ec95408226ffe38fb0c7125469019f11',trip_num:1,address:'충청남도',description:"",song:0,movie:0)
Location.create(car_id:'ec95408226ffe38fb0c7125469019f11',trip_num:1,address:'경기도',description:"",song:0,movie:1)

Location.create(car_id:'ec95408226ffe38fb0c7125469019f11',trip_num:2,address:'경기도',description:"",song:1,movie:0)
Location.create(car_id:'ec95408226ffe38fb0c7125469019f11',trip_num:2,address:'충청남도',description:"",song:0,movie:1)
Location.create(car_id:'ec95408226ffe38fb0c7125469019f11',trip_num:2,address:'대구광역시',description:"",song:0,movie:0)
Location.create(car_id:'ec95408226ffe38fb0c7125469019f11',trip_num:2,address:'경상북도',description:"",song:0,movie:1)

Article.create(car_id:'ec95408226ffe38fb0c7125469019f11',trip_num:1,name:'한효주',period:'08/01-08/05',image:"",visited:'#경기#충남',content:'재미있었다재미있었다재미있었다재미있었다',like_num:30, rating:6)
Article.create(car_id:'ec95408226ffe38fb0c7125469019f11',trip_num:1,name:'한효주',period:'08/17-08/25',image:"",visited:'#경기#충남#경북',content:'재미있었다재미있었다재미있었다재미있었다',like_num:24, rating:6)


Location.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:1,address:'대구광역시',description:"",song:0,movie:0)
Location.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:1,address:'경상북도',description:"",song:0,movie:0)
Location.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:1,address:'충청북도',description:"",song:1,movie:0)
Location.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:1,address:'충청남도',description:"",song:0,movie:1)
Location.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:1,address:'경기도',description:"",song:0,movie:0)
Location.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:1,address:'경기도',description:"",song:0,movie:0)
Location.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:1,address:'서울특별시',description:"",song:1,movie:0)
Location.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:1,address:'경기도',description:"",song:0,movie:0)

Location.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:2,address:'경기도',description:"",song:1,movie:0)
Location.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:2,address:'서울특별시',description:"",song:0,movie:0)
Location.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:2,address:'경기도',description:"",song:0,movie:0)
Location.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:2,address:'충청북도',description:"",song:1,movie:0)
Location.create(car_id:'ec95408226ffe38fb0c7125469019f11',trip_num:2,address:'충청남도',description:"",song:0,movie:1)

Article.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:1,name:'신민아',period:'1/23-2/08',image:"",visited:'#대구#경기#충남',content:'재미있었다재미있었다재미있었다재미있었다',like_num:3, rating:4)
Article.create(car_id:'307630b566962e19b4387f9cb757b9ac',trip_num:2,name:'신민아',period:'1/23-2/08',image:"",visited:'#경기#충북#충남',content:'재미있었다재미있었다재미있었다재미있었다',like_num:5, rating:8)
