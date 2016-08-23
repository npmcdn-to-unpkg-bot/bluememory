class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      
      t.string :si_do       #시도
      t.string :gu_gun      #구군
      t.string :name        #여행지명
      t.string :address     #주소
      
      t.float :latitude     #위도
      t.float :longitude    #경도
      
      t.string :phone       #전화번호
      t.string :homepage    #홈페이지주소
      
      t.text   :content01   #내용01
      t.text   :content02   #내용02
      t.text   :content03   #내용03
      
      t.timestamps null: false
    end
  end
end
