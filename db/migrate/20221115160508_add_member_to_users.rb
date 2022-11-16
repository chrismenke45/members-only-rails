class AddMemberToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :member, :boolean, default: false
  end
end
