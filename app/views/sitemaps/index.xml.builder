xml.instruct! :xml, version: '1.0'
xml.tag! 'sitemapindex', 'xmlns' => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  xml.tag! 'url' do
    xml.tag! 'loc', root_url
  end

  xml.tag! 'url' do
    xml.tag! 'loc', contact_url
  end

  @rooms.each do |room|
    xml.tag! 'url' do
      xml.tag! 'loc', room_url(room)
      xml.lastmod room.updated_at.strftime("%F")
    end
  end

  @activities.each do |activity|
    xml.tag! 'url' do
      xml.tag! 'loc', activity_url(activity)
      xml.lastmod activity.updated_at.strftime("%F")
    end
  end
end
