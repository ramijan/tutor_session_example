class CreateTutorSessionUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :tutor_session_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tutor_session, null: false, foreign_key: true
      t.string :kind

      t.timestamps
    end
  end
end
