namespace :update_article do
  desc "公開日が個になっている時はステータスを公開に変更するタスク"
  task change_status: :environment do
    articles = Article.all
    articles.each do |article|
      if !article.publish_future?
        article.state = :published
        article.save
      end
    end
  end
end
