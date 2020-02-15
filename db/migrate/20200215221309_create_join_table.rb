class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :projects, :staffs do |t|
      t.index [:project_id, :staff_id]
      t.index [:staff_id, :project_id]
    end
  end
end
