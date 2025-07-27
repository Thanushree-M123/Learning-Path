import React from 'react';
import '../Stylesheets/mystyle.css';

function CalculateScore() {
  const name = "Steeve";
  const school = "DNV Public School";
  const total = 284;
  const goal = 300;
  const percentage = ((total / goal) * 100).toFixed(2);

  return (
    <div className="box">
      <h1 className="heading">Student Details:</h1>
      <p><b className="blue">Name:</b> <span className="lightblue">{name}</span></p>
      <p><b className="red">School:</b> <span className="pink">{school}</span></p>
      <p><b className="brown">Total:</b> {total}Marks</p>
      <p><b className="green">Score:</b><span className="lightgreen">{percentage}%</span></p>
    </div>
  );
}

export default CalculateScore;
