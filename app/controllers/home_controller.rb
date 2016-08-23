class HomeController < ApplicationController
    def index
        if user_signed_in?
            redirect_to "/home/main" 
        end
    end
    
    def main
        @article = Article.all
    end
    
    def checklist
    @checklists=Checklist.all
    end
    
    def checklist_create
    @checklist= Checklist.new(title: params[:title])
    @checklist.save
    redirect_to "/home/checklist"
    end
    
    def checklist1
    @checklists_selected=Checklist.find_by(:id => params[:id])
    @additives=Additive.where(checklist_id: params[:id])
    end
    
    def additive_create
    @additive=Additive.new(name: params[:name], checklist_id: params[:id])
    @additive.save
    redirect_to :back
    end
    
    def delete_list
        @one_check = Checklist.find(params[:id])
        @one_check.destroy
        redirect_to "/home/checklist"
    end
    
    def delete_additive
        @one_add = Additive.find(params[:id])
        @one_add.destroy
        redirect_to :back
    end
    
    def dic_main
        @spot = Spot.all 
    end
    
    def dic_id
        @trip_id = params[:id]
        @spot = Spot.find(@trip_id)
    end
    
    def myfood
        @location = Location.all
        @article = Article.all
    end
    
    def trip_eval_process
        @article_id = params[:eval_id]
        @score = params[:score_overall]

        update_score = Article.find(@article_id)
        update_score.update_attribute(:rating, @score)
        path = '/locations/index/' + @article_id.to_s
        
        redirect_to path
    end
    
    def article_reply
        @my_reply = Reply.new
     
        @my_reply.article_id = params[:article_id]  
        @my_reply.writer = params[:username]   
        @my_reply.writer_email = params[:email]
        #리플에 글쓴이 이름, 이메일 모두 받는다. 리플에 이름 출력 + 수정 삭제시 이중체크
        
        @my_reply.contents = params[:myreply]
        @my_reply.save
        
        redirect_to :back      
    end

    def like_process
        id = params[:id].to_i
        liked_article = Article.find(id)
        unless current_user.articles.where(statuses: {liked: true}).include? liked_article
            if current_user.statuses.where(article_id: id).empty?
                Status.create(user_id: current_user.id, article_id: liked_article.id, liked: true, selected: true)
            else
                stat = current_user.statuses.where(article_id: id).take
                stat.liked = true
                stat.selected = true
                stat.save
            end
            liked_article.like_num += 1
            liked_article.save
        end  
        num = id.to_s
        @like_str = current_user.article_like + num
        current_user.update_attribute(:article_like, @like_str)
        redirect_to :back
    end
  
  #좋아요취소 
    def like_delete
        id = params[:id].to_i
        canceled_article = Article.find(id)
        stat = current_user.statuses.where(article_id: id).take
        stat.liked = false
        stat.selected = false
        stat.save
        canceled_article.like_num -= 1
        canceled_article.save
        
#        num = id.to_s
#        like_array = current_user.article_like.split(//)
#        
#        0.upto(like_array.length - 1) do |x|
#            if like_array[x] == num
#                like_array[x] = "0"
#                complete_array = complete_array + like_array[x]
#            else
#                complete_array = complete_array + like_array[x]
#            end
#        end
#        current_user.update_attribute(:article_like, complete_array)
        redirect_to :back
    end
    
    def profile_modify
        @email = params[:email]
        @name = params[:name]
        @car_id = params[:car_id]
        
        current_user.update_attribute(:email, @email)
        current_user.update_attribute(:name, @name)
        current_user.update_attribute(:car_id, @car_id)
        
        redirect_to :back
    end
  
end
