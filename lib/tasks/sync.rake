namespace :sync do
  task articles: [:environment] do
    url = "https://www.theoutbound.com/journal.rss"
    content = Feedjira::Feed.fetch_and_parse url
    content.entries.each do |entry|
      local_entry = Article.where(title: entry.title).first_or_initialize
      local_entry.update_attributes(
        content: entry.content,
        author: entry.author,
        url: entry.url,
        published: entry.published,
        summary: entry.summary
      )
    end
  end
end
