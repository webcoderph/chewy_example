class Post < ApplicationRecord
  update_index('posts#post') { self }
  
  def self.search(keyword)
    keyword.downcase!
    post_ids = ::PostsIndex::Post.query(
      multi_match: {
       query: keyword, 
       fields: ["title", "content"]
      }).map {|result| result.attributes['id']}

    self.find(post_ids)
  end

end
