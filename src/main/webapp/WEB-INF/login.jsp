<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 3/18/21
  Time: 10:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String error = request.getParameter("error");
%>
<html>
<jsp:include page="../header.jsp"/>
<body>
<div class="container-welcome">
  <div class="welcome">
    <h4>Achieve Inbox Zero</h4>
    <span>Use one keystroke... from <b>anywhere</b>.
      This simple timer for will keep restarting to
      help you clarify your inbox. Especially effective for
      followers of <i>Getting Things Done</i>.
    </span>
  </div>
  <div class="card-login card">
    <div id="formContent">
      <main class="form-login">
        <form action="Login">
          <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
          <label for="username" class="visually-hidden">
            Username
          </label>
          <input
            type="text"
            id="username"
            name="username"
            class="form-control"
            placeholder="Email address"
            required
            autofocus
          >
          <label
            for="password"
            class="visually-hidden"
          >
            Password
          </label>
          <input
            type="password"
            id="password"
            name="password"
            class="form-control"
            placeholder="Password"
            required
          >
          <% if (!error.isEmpty()) {%>
          <span class="error text-danger">
            *<%=error%>...
          </span>
          <%}%>
          <button
            class="w-100 btn btn-lg button-primary"
            type="submit"
          >
            Sign in
          </button>
        </form>
      </main>
    </div>
  </div>
</div>
</body>
</html>
<style>
  .container-welcome {
    display: flex;
    flex-direction: row;
    justify-content: center;
    margin-top: 16px;
  }

  .welcome {
    max-width: 336px;
  }

  .card-login {
    margin-left: 8px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: center;
    min-width: 240px;
    max-width: 336px;
  }

  .form-login {
    width: 100%;
    max-width: 330px;
    padding: 16px;
    margin: auto;
  }

  label {
    margin-top: 16px;
    margin-bottom: 4px;
  }

  .form-login input[type="email"] {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }

  .form-login input[type="password"] {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }

  .button-primary {
    margin-top: 8px;
  }
</style>