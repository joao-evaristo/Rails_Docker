class RemoveIdadeFromUsuarios < ActiveRecord::Migration[7.0]
  def change
    remove_column :usuarios, :idade, :integer
  end
end
