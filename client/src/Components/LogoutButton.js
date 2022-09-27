import React from "react";
import { useAuth0 } from "@auth0/auth0-react";

const LogoutButton = () => {
  const { logout, isAuthenticated } = useAuth0();

  return (
    isAuthenticated && (
    <p onClick={() => logout()}>
      Log Out
    </p>
    )
  );
};

export default LogoutButton;