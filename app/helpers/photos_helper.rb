module PhotosHelper
  def small_image_version image_name
    image_name.partition('.').insert(1, "_small").join
  end
end
