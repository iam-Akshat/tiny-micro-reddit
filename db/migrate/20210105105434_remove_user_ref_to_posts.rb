class RemoveUserRefToPosts < ActiveRecord::Migration[6.1]
  def change
    remove_reference(:users,:post)
  end
end
