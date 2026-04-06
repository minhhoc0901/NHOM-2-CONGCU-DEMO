import PropTypes from "prop-types";

const TipsSection = ({ location }) => {
  const tipsList = location?.tips || [];

  return (
    <section id="tips" className="tips mb-8">
      <h2 className="text-2xl font-semibold mb-2">Lưu ý khi tham quan</h2>
      {tipsList.length === 0 ? (
        <p>Không có thông tin</p>
      ) : (
        <ul className="list-disc pl-5">
          {tipsList.map((tip, index) => (
            <li key={index}>{tip}</li>
          ))}
        </ul>
      )}
    </section>
  );
};

TipsSection.propTypes = {
  location: PropTypes.shape({
    tips: PropTypes.arrayOf(PropTypes.string),
  }).isRequired,
};

export default TipsSection;