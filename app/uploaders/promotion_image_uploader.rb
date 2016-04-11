# encoding: utf-8

class PromotionImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  if Rails.env.development?
    storage :file
  else
    storage :fog
  end
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process resize_to_fit(120, 120)

end
