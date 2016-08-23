class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

      t.string  :car_id       #차량 고유 아이디
      t.integer :trip_num     #해당 차량의 몇번째 기록인지?

      t.string  :name, default:""         #작성자
      t.string  :period, default:""       #기간
      t.string  :image, default:""        #썸네일용 이미지
      t.string  :visited, default:""      #방문한 여행지들 
      t.integer :rating,      default: 0    #여행만족도
      t.text    :content, default:""      #여행소감?
      
      t.integer :like_num,    default: 0   #좋아요 수
      
      t.timestamps null: false
    end
  end
end
