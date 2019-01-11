class AddUserIdToTrick < ActiveRecord::Migration[5.2]
  def change
    add_reference :tricks, :user, foreign_key: true
  end
end
