import React from "react";
import ReactDOM from "react-dom";

import { ReactDashboard } from "../components/ReactDashboard";

const reactDashboard = document.getElementById("react_dashboard");

if (reactDashboard) {
  ReactDOM.render(
    <ReactDashboard />,
    reactDashboard
  );
}
