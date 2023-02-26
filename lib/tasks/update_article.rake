namespace :update_article do
  desc '公開待ちの中で、公開日時が過去になっているものがあれば、ステータスを「公開」に変更されるようにする'
  task change_status: :environment do
    # Article.publish_waitこれはenumの機能で呼び出せる
    # Article.first.publish_wait! これで保存できるみたい
    # xxx(&b)
    # Proc オブジェクトをブロックとして使う。
    # ブロックをコンテキスト(ローカル変数のスコープやスタックフレーム)とともにオブジェクト化した手続きオブジェクトです。
    # プロックはfind_eachできたブロックそれぞれを変数にしてそれに処理をするイメージ
    # つまり呼び出した一つ一つに対してpublished!


    Article.publish_wait.past_published.find_each(&:published!)
  end
end
