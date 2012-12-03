<%@page import="tweeter.Post" %>

<jsp:include page="includes/header.jsp" />
<div class="content">
    <div class="left-panel">
        <div class="left-panel-in">
            <h2 class="title">Welcome to our site.</h2>
            <p>&nbsp;</p>
            <p> Tweeter seeks to make messaging simple. Here, registered users may:</p>
			<ul>
				<li>Create a profile</li><br />
				<li>Post and view messages</li><br />
				<li>Subscribe to other user's messages</li><br />
				<li>Other functionalities forthcoming</li><br />
			</ul>
			<p> Unregistered users may only browse and view public tweets. </p>
<!--			<li></li><br />
				<li></li><br />
				<li></li><br />
-->
			<p>&nbsp;</p>
            <% Post post = new Post();
		post.print();
		%>
	    <p>&nbsp;</p>
            <p>&nbsp;</p>
            <h2 class="title">Recent Tweets<br>
            </h2>
            <p>&nbsp;</p>

            <p>Public Tweets displayed here when not logged in.</p>
        </div>
    </div>
    <div class="right-panel">
        <div class="right-panel-in">
            <p><img src="images/rightimg.jpg" alt="" height="85" width="250"></p>

            <!-- List the six most recent Topics from the database here -->
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
<!--
	    <h3>Blogroll</h3>
            <ul>
              <li><a href="#">Blogroll link 1<br>
                    </a></li>
              <li><a href="index.html#">Blogroll link 2<br>
                    </a></li>
              <li><a href="index.html#">Blogroll link 3<br>
                    </a></li>
              <li><a href="index.html#">Blogroll link 4<br>
                    </a></li>
              <li><a href="index.html#">Blogroll link 5<br>
                    </a></li>
              <li><a href="index.html#">Blogroll link 6<br>
                    </a></li>
            </ul>
-->							
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
