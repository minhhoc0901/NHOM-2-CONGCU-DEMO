import PropTypes from "prop-types";

const TravelSection = ({ location }) => {
  const travel = location?.travel || {};
  const fromTuyHoa = travel.fromTuyHoa || [];
  const fromElsewhere = travel.fromElsewhere || [];
  const ticketPrice = travel.ticketPrice || "Không có thông tin";
  const tip = travel.tip || "Không có thông tin";

  return (
    <section id="travel" className="travel-location mb-8">
      <h2 className="text-2xl font-semibold mb-4">Hành trình đến địa điểm</h2>

      <h3 className="text-xl font-medium mb-2">Cách di chuyển</h3>
      <div className="travel-details-location space-y-4">
        <div>
          <h4 className="font-semibold">Từ trung tâm TP Tuy Hòa:</h4>
          {fromTuyHoa.length === 0 ? (
            <p>Không có thông tin</p>
          ) : (
            <ul className="list-disc pl-5">
              {fromTuyHoa.map((method, index) => {
                const [title, desc] = method.split(":");
                return <li key={index}><strong>{title}:</strong> {desc}</li>;
              })}
            </ul>
          )}
        </div>

        <div>
          <h4 className="font-semibold">Từ nơi khác:</h4>
          {fromElsewhere.length === 0 ? (
            <p>Không có thông tin</p>
          ) : (
            <ul className="list-disc pl-5">
              {fromElsewhere.map((method, index) => {
                const [title, desc] = method.split(":");
                return <li key={index}><strong>{title}:</strong> {desc}</li>;
              })}
            </ul>
          )}
        </div>

        <p>
          <strong>Giá vé tham quan:</strong>{" "}
          <span className="highlight-location">{ticketPrice}</span>
        </p>

        <div className="tip">
          <h4 className="font-semibold">Mẹo nhỏ:</h4>
          <p>{tip}</p>
        </div>
      </div>
    </section>
  );
};

TravelSection.propTypes = {
  location: PropTypes.shape({
    travel: PropTypes.shape({
      fromTuyHoa: PropTypes.arrayOf(PropTypes.string),
      fromElsewhere: PropTypes.arrayOf(PropTypes.string),
      ticketPrice: PropTypes.string,
      tip: PropTypes.string,
    }),
  }).isRequired,
};

export default TravelSection;