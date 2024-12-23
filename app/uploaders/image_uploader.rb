class ImageUploader < CarrierWave::Uploader::Base
    storage :cloudinary
end
