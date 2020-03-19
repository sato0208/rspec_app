require 'rails_helper'

# ポストコントローラーをテスト対象にすることを示している
RSpec.describe PostsController, type: :controller do
	# 新規投稿ページに関するテストであることを示している
    describe '新規投稿ページ' do
      context "新規投稿ページが正しく表示される" do
      	# get:newで新規投稿ページを表示する処理をitの前に行う
        before do
          get :new
        end
        it 'リクエストは200 OKとなること' do
          expect(response.status).to eq 200
 			# viewで表示されるデータ取得に必要
 		end
          render_views
        it 'タイトルが正しく表示されていること' do
        	# render_viewsで取得したhtmlのデータが入っている。
        	# include(中身)中身のデータが入っているか検証する
        	expect(response.body).to include("新規投稿")
        end
      end
    end

        describe '新規投稿ページ' do
      context "新規投稿ページが正しく表示される" do
      	# get:newで新規投稿ページを表示する処理をitの前に行う
        before do
          get :show
        end
        it 'リクエストは200 OKとなること' do
          expect(response.status).to eq 200
 			# viewで表示されるデータ取得に必要
 		end
      end
    end

    # descride 'showページ' do
    # 	context "showページが正しく表示される" do
    # 		# itの前にshowページを表示する処理
    # 		before do
    # 			get :show
    # 		end
    # 		it 'リクエストは200 OKとなること' do
    # 			expect(response.status).to eq 200
    # 			# viewで表示されるデータ取得に必要
    # 		end
    # 	end
    # end
end

