class ChangeCommentIntoCommentable < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :commentable, polymorphic: true
    Comment.update_all ['commentable_id = link_id, commentable_type = ?', 'Link']
    remove_reference :comments, :link, foreign_key: true
  end
end
