# 参考　https://zenn.dev/yukihaga/articles/789d0c6c736335

crumb :root do
  link "Home", admin_dashboard_path
end

crumb :admin_articles do
  link "記事", admin_authors_path
end

# :todo objectを渡さないといけない
crumb :new_admin_article do
  link "記事新規作成", new_admin_article_path
  parent :admin_articles
end

# :todo objectを渡さないといけない
crumb :edit_admin_article do |article|
  link "記事編集", edit_admin_article_path(article)
  parent :admin_articles
end

crumb :admin_categories do
  link "カテゴリー", admin_categories_path
end

# :todo objectを渡さないといけない
crumb :edit_admin_category do
  link "カテゴリー編集", edit_admin_category_path
  parent :admin_categories
end

crumb :admin_tags do
  link "タグ", admin_tags_path
end

# :todo objectを渡さないといけない
crumb :edit_admin_tag do |tag|
  link "タグ編集", edit_admin_tag_path(tag)
  parent :admin_tags
end

crumb :admin_authors do
  link "著者", admin_authors_path
end

# :todo objectを渡さないといけない
crumb :edit_admin_author do
  link "著者編集", edit_admin_author_path
  parent :admin_authors
end

crumb :admin_users do
  link "ユーザー", admin_users_path
end

# :todo objectを渡さないといけない
crumb :new_admin_user do
  link "ユーザー新規作成", new_admin_user_path
  parent :admin_users
end

# :todo objectを渡さないといけない
crumb :admin_user do
  link "ユーザープロフィール", admin_user_path
  parent :admin_users
end

crumb :admin_invitations do
  link "招待", admin_invitations_path
end

# :todo objectを渡さないといけない
crumb :new_admin_invitation do
  link "招待新規作成", new_admin_invitation_path
  parent :admin_invitations
end

crumb :edit_admin_site do
  link "設定", edit_admin_site_path
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
