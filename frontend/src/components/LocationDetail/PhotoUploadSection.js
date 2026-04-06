import PropTypes from "prop-types";
import ImageUploading from "react-images-uploading";

const PhotoUploadSection = ({ images, setImages, maxNumber }) => {
  return (
    <section id="photo-upload" className="photo-upload mb-8">
      <h2 className="text-2xl font-semibold mb-4">Chia sẻ hình ảnh của bạn</h2>

      <ImageUploading
        multiple
        value={images}
        onChange={(imageList) => setImages(imageList)}
        maxNumber={maxNumber}
        dataURLKey="data_url"
      >
        {({
          imageList,
          onImageUpload,
          onImageRemoveAll,
          onImageUpdate,
          onImageRemove,
          isDragging,
          dragProps,
        }) => (
          <div className="upload-wrapper">
            <div className="upload-actions mb-4">
              <button
                className={`btn-upload ${isDragging ? "dragging" : ""}`}
                onClick={onImageUpload}
                {...dragProps}
              >
                Nhấn hoặc thả ảnh tại đây
              </button>
              <button className="btn-remove-all" onClick={onImageRemoveAll}>
                Xóa tất cả ảnh
              </button>
            </div>

            <div className="image-grid grid grid-cols-1 md:grid-cols-3 gap-4">
              {imageList.map((image, index) => (
                <div key={index} className="image-item relative">
                  <img
                    src={image.data_url}
                    alt={`Uploaded ${index + 1}`}
                    className="w-full h-48 object-cover rounded-lg"
                  />
                  <div className="image-item-btns flex justify-between mt-2">
                    <button
                      className="btn-update"
                      onClick={() => onImageUpdate(index)}
                    >
                      Cập nhật
                    </button>
                    <button
                      className="btn-remove"
                      onClick={() => onImageRemove(index)}
                    >
                      Xóa
                    </button>
                  </div>
                </div>
              ))}
            </div>
          </div>
        )}
      </ImageUploading>
    </section>
  );
};

PhotoUploadSection.propTypes = {
  images: PropTypes.array.isRequired,
  setImages: PropTypes.func.isRequired,
  maxNumber: PropTypes.number.isRequired,
};

export default PhotoUploadSection;