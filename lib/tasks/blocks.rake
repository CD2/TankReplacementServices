task create_blocks: :environment do

  3.times do
    b = Block.create!(title: "Home Block", body: "Edit this block at the link below")
    b.update_attributes(link_path: "admin/blocks/#{b.id}/edit")
  end


end