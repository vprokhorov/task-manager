<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jobs Plainer</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>
<header class="page_header" id="page_header">
    <h1>Jobs Plainer</h1>
    <nav class="page_nav" id="page_nav">
        <a class="button" href="${pageContext.request.contextPath}/customer/newtask">New technical task</a>
        <a class="button" href="${pageContext.request.contextPath}/customer/myscoring">My scoring</a>
        <a class="button" href="${pageContext.request.contextPath}/customer/mytask">My technical task</a>
        <a class="button" href="${pageContext.request.contextPath}/customer/singout">SingOut</a>
    </nav>
</header>

<section class="main_section" id="main_section">
    <article>
        <header id="section_header">
        </header>
        <section class="workspace">
            <h2 class="workspace-header">Create status</h2>
            <p>${createmassage}</p>
        </section>
    </article>
</section>

<footer id="page_footer">
    <p>2016 by D.Perestoronin</p>
</footer>
</body>
</html>
