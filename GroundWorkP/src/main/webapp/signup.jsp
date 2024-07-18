<%@ include file="header.jsp" %>
  <div class="container ">
  <div class="form-box">
    <div class="card-header">
        <h1>SignUp</h1>
        </div>
        <form action="signup" method="post">
            <div class="form-group">
               
                <input type="text" class="form-control" id="username" name="username" placeholder="Name" required>
            </div>
            
            <div class="form-group">
                
                <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
            </div>
            <div class="form-group">
                
                <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
            </div>
            <button type="submit" class="btn btn-primary w-50">SignUp</button>
        </form>
        </div>
    </div>
<%@ include file="footer.jsp" %>
