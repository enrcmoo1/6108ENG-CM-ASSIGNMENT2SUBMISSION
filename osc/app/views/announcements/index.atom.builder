atom_feed do |feed|
  feed.title("The Blogger Super-Duper News Feed")
  feed.updated(@announcements.first.created_at)
  @announcements.each do |announcement|
    feed.entry(announcement) do |entry|
    	entry.author do |author|
    		author.name "Callum"
      end
    		entry.title(announcement.title)
    		entry.content(announcement.body, :type => 'html')
    	end
    end
  end
  