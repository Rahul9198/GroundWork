<%@ include file="header.jsp" %>
  <div class="container mt-3">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="form-box">
                <div class="card-header">
                    <h1>Login</h1>
                    </div>
                    <form action="login" method="post">
                        <div class="mb-3">
                            
                            <input type="email" class="form-control" id="email" name="email" placeholder="Email"required>
                        </div>
                        <div class="mb-3">
                            
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                        </div>
                        <button type="submit" class="btn btn-primary w-50">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
<%@ include file="footer.jsp" %>
