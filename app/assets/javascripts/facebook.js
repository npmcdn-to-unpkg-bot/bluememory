    $.fn.snsFacebook = function (options){
                
                var settings = $.extend({
                        init                : true,
                        width                : 690,
                        count                : 3,
                        dataHref        : ''
                }, options);


                this.faceBook = {
                                settings:                settings,
                                
                                init: function(){
                                        this.removeComment();
                                        this.addComment();
                                },
                                
                                addComment : function(){
                                        var html = '';
                                        html +=        '        <div id="fb-root"></div>';
                                        html +=        '        <script>(function(d, s, id) {';
                                        html +=        '          var js, fjs = d.getElementsByTagName(s)[0];';
                                        html +=        '         if (d.getElementById(id)) {';
                                        html +=        '                return;';                
                                        html +=         '          }';
                                        html +=        '          js = d.createElement(s); js.id = id;';
                                        html +=        '          js.src = "//connect.facebook.net/ko_KR/all.js#xfbml=1";';
                                        html +=        '          fjs.parentNode.insertBefore(js, fjs);';
                                        html +=        '        }(document, "script", "facebook-jssdk"));</script>';
                                        html +=        '        <div class="fb-comments" data-href="' + this.settings.dataHref + '"';
                                        html +=        '                data-num-posts="' + this.settings.count + '"';
                                        html +=        '                data-width="' + this.settings.width + '"></div>';
                                        $("#facebook").append(html);
                                },
                                
                                removeComment: function(){
                                        $("#facebook-jssdk").remove();
                                        $("#facebook").html("");
                                }
                };
                
                this.faceBook.init();
                
                return this.faceBook;
        };
        
        
        $.fn.snsFacebookLikeBtn = function (options){
                var settings = $.extend({
                                init                                        : true,
                                dataSend                        : false,
                                dataWidth                        : 55,
                                dataShowFaces        : false,
                                dataHref                                : 'http://culturestat.mcst.go.kr',
                                dataFont                        : 'arial',
                                dataLayout                        : 'button_count'
                }, options);
                
                this.snsFacebookLikeBtn = {
                                settings:                settings,
                                
                                init: function(){
                                        this.removeComment();
                                        this.addComment();
                                },
                                
                                addComment : function(){
                                        var html = '';
                                        html +=        '        <div id="fb-root"></div>';
                                        html +=        '        <script>(function(d, s, id) {';
                                        html +=        '          var js, fjs = d.getElementsByTagName(s)[0];';
                                        html +=        '         if (d.getElementById(id)) {';
                                        html +=        '                return;';                
                                        html +=         '          }';
                                        html +=        '          js = d.createElement(s); js.id = id;';
                                        html +=        '          js.src = "//connect.facebook.net/ko_KR/all.js#xfbml=1";';
                                        html +=        '          fjs.parentNode.insertBefore(js, fjs);';
                                        html +=        '        }(document, "script", "facebook-jssdk"));</script>';
                                        html +=        '        <div class="fb-like" data-href="' + this.settings.dataHref + '"';
                                        html +=        '                data-send="' + this.settings.dataSend + '"';
                                        html +=        '                data-layout="' + this.settings.dataLayout + '"';
                                        html +=        '                data-show-faces="' + this.settings.dataShowFaces + '"';
                                        html +=        '                data-font="' + this.settings.dataFont + '"';
                                        html +=        '                data-width="' + this.settings.width + '"></div>';
                                        
                                        $("#facebookLike").append(html);
                                },
                                
                                removeComment: function(){
                                        $("#facebookLike").empty();
                                        $("#facebook-jssdk").remove();
                                }
                };
                
                
                
                this.snsFacebookLikeBtn.init();
                
                return this.snsFacebookLikeBtn;
        };
        
        
})(jQuery);