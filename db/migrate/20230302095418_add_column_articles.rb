class AddColumnArticles < ActiveRecord::Migration[5.2]
  def up
    add_column :articles, :eyecatch_width, :integer
    add_column :articles, :eye_catch_aligned, :integer
  end
  def down
    remove_column :articles, :eyecatch_width, :integer
    remove_column :articles, :eye_catch_aligned, :integer
  end
end
