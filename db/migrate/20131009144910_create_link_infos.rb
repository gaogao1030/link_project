class CreateLinkInfos < ActiveRecord::Migration
  def change
    create_table :link_infos do |t|
      t.string :title
      t.string :des
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
