class DeleteUnusedColumnsFromUsers < ActiveRecord::Migration
  def change
    ## Recoverable
    remove_column :users, :reset_password_token  , :string
    remove_column :users, :reset_password_sent_at, :datetime
    ## Rememberable
    remove_column :users, :remember_created_at   , :datetime
  end
end
