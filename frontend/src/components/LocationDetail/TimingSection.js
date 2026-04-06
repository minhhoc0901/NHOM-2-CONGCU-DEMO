import PropTypes from "prop-types";

const TimingSection = ({ location }) => {
  const bestTimeList = location?.bestTime || [];

  return (
    <section id="timing" className="timing mb-8">
      <h2 className="text-2xl font-semibold mb-2">Thời điểm lý tưởng</h2>
      {bestTimeList.length === 0 ? (
        <p>Không có thông tin</p>
      ) : (
        <ul className="list-disc pl-5">
          {bestTimeList.map((time, index) => {
            const [key, value] = time.split(":");
            return (
              <li key={index}>
                <strong>{key}:</strong> {value}
              </li>
            );
          })}
        </ul>
      )}
    </section>
  );
};

TimingSection.propTypes = {
  location: PropTypes.shape({
    bestTime: PropTypes.arrayOf(PropTypes.string),
  }).isRequired,
};

export default TimingSection;