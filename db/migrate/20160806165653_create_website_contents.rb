class CreateWebsiteContents < ActiveRecord::Migration
  def change
    create_table :website_contents do |t|
      t.string :website_url
      t.string :website_content

      t.timestamps
    end
  end
end
