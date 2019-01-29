class AddMd5DigestToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :MD5_digest, :string
  end
end
