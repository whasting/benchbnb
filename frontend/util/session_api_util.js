
export const signup = (uesrname, password) => (
  $.ajax({
    method: "POST",
    url: "/api/users",
    data: {username: , password: password}
  })
);
