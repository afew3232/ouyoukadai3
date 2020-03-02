module BooksHelper

  def liked?(like_user_id,like_book_id)
 	  likes = Like.all
 	  likes.each do |l|
 	  if like_user_id == l.user_id && like_book_id == l.book_id
 			return true
     	end
  	end
    return false
  end

  def liked_count(liked_book_id)
    like = Like.all
    count = 0
    like.each do |l|
      if l.book_id == liked_book_id
        count = count + 1
      end
    end
    return count
  end

  def discover_comment(look_book_id,comment_book_id)
      if look_book_id == comment_book_id
        return true
      end
    return false
  end

  def comment_count(look_book_id)
    comments = Comment.all
    count = 0
    comments.each do |c|
      if look_book_id == c.book_id
        count += 1
      end
    end
    return count
  end

end
