class PostsIndex < Chewy::Index
   define_type Post do
     field :title, :content
   end
end
