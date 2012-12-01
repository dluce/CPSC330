<jsp:include page="includes/header.jsp" />

<div class="content">
    <div class="left-panel">
        <div class="left-panel-in">
			<hs class="title">Registration</h2>
			<p>&nbsp;</p>
			<form id="reg" method="post" action="registerScript.jsp">
				<p>
				Username: <input type="text" name="username" maxlength="50" /><br /><br />
				Password: <input type="password" name="pass1" maxlength="40" /><br /><br />
				Re-type Password: <input type="password" name="pass2" maxlength="40" /><br /><br />
				</p>
			</form>			
		</div>
	</div>
	<div class="right-panel">
		<div class="right-panel-in">
			<p><img src="images/rightimg.jpg" alt="" height="85" width="250"></p>
				<!-- List the five or six most recent Topics from the database here -->
			<h3>Recent Topics</h3>
			<ul>
			  <li><a href="#">Link item 1<br>
					</a></li>
			  <li><a href="index.html#">Link item 2<br>
					</a></li>
			  <li><a href="index.html#">Link item 3<br>
					</a></li>
			  <li><a href="index.html#">Link item 4<br>
					</a></li>
			  <li><a href="index.html#">Link item 5<br>
					</a></li>
			  <li><a href="index.html#">Link item 6<br>
					</a></li>
			</ul>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
		</div>
	</div>
</div>

<jsp:include page="includes/footer.jsp" />
