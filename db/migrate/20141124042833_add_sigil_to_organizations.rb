class AddSigilToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :sigil, :string
    add_index :organizations, :sigil
  end
end
