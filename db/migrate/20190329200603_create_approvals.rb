class CreateApprovals < ActiveRecord::Migration[6.0]
  def change
    create_table :approvals do |t|
      t.string :state
      t.references :approvable, polymorphic: true

      t.timestamps
    end
  end
end
