class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      
      t.string  :car_id,   default:""       #차량고유아이디
      t.integer :trip_num, default:0     #해당 차량의 몇번째 기록인가?
      
      t.float   :latitude,  defalut:0.0     #위도
      t.float   :longitude, defalut:0.0   #경도
      
      t.string  :address,   defalut:""      #주소
      t.string  :title,     defalut:""      #여행 제목
      
      t.text    :description,  defalut:""  #내용
      t.integer :song,         defalut:0  #음악기록신호
      t.integer :movie,        defalut:0 #영상녹화신호

      t.timestamps null: false
    end
  end
end
