import React from "react";

export const ReactDashboard = () => {
  return (
    <div>
    <h1>Dashboard</h1>

    <h2>Number of responses from Abraham Lincoln: </h2>

    <h2>Number of responses containing the word "banana" in them: </h2>

    <div className="grid">
      <div className="column">
        <h2>10 most recent responses</h2>
        <div className="response-card">
          <h3>Question Label</h3>
          <p><strong>Responder: </strong></p>
          <p><strong>Response: </strong></p>
          
        </div>
      </div>

    </div>
    </div>
  )
};
