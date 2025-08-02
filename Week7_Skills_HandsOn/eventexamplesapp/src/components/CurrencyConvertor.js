import React, { useState } from 'react';

function CurrencyConvertor() {
  const [rupees, setRupees] = useState('');
  const [euro, setEuro] = useState('');

  const handleSubmit = () => {
    const converted = parseFloat(rupees) / 90; // Example conversion rate
    setEuro(converted.toFixed(2));
  };

  return (
    <div>
      <h2>Currency Convertor</h2>
      <input
        type="number"
        placeholder="Amount in INR"
        value={rupees}
        onChange={(e) => setRupees(e.target.value)}
      />
      <button onClick={handleSubmit}>Convert</button>
      <p>Converted Euro: {euro}</p>
    </div>
  );
}

export default CurrencyConvertor;
