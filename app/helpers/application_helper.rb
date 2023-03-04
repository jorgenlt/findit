module ApplicationHelper

  def attached_photo(model, width)
    if model.photo.present?
      cl_image_tag model.photo.key, width: width, crop: :fill
    elsif model.image_url.present?
      image_tag model.image_url, alt: 'Post photo'
    else
      image_tag 'https://exploretryon.com/wp-content/uploads/2018/08/ET-IMAGE-COMING-SOON-1000.jpg', alt: 'Photo coming soon'
    end
  end

end

