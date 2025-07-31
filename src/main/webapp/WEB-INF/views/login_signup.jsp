<div id="auth-modal" class="modal hidden">
	<div class="modal-content">
		<span class="close" onclick="document.getElementById('auth-modal').style.display='none'">&times;</span>
		<div class="auth-form">
			<h2>Login</h2>
			<form action="${pageContext.request.contextPath}/login" method="post">
				<label>Email</label>
				<input type="email" name="email" required/>
				<label>Password</label>
				<input type="password" name="password" required/>
				<button type="submit" class="btn btn-primary">Login</button>
			</form>
		</div>
		<div class="auth-form">
			<h2>Sign Up</h2>
			<form action="${pageContext.request.contextPath}/signup" method="post">
				<label>Full Name</label>
				<input type="text" name="name" required/>
				<label>Email</label>
				<input type="email" name="email" required/>
				<label>Password</label>
				<input type="password" name="password" required/>
				<button type="submit" class="btn btn-primary">Sign Up</button>
			</form>
		</div>
	</div>
</div>