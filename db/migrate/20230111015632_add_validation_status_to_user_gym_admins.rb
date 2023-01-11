class AddValidationStatusToUserGymAdmins < ActiveRecord::Migration[7.0]
  def change
    add_column :user_gym_admins, :validation_status, :string
  end
end
