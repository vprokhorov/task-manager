<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Jobs Plainer</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>
<header class="page_header" id="page_header">
    <h1>Jobs Plainer</h1>
    <nav class="page_nav" id="page_nav">
        <a class="button" href="${pageContext.request.contextPath}/manager/team">My team</a>
        <a class="button" href="">Technical tasks</a>
        <a class="button" href="${pageContext.request.contextPath}/manager/projects">Projects</a>
        <a class="button" href="${pageContext.request.contextPath}/manager/singout">SingOut</a>
    </nav>
</header>
<section class="main_section" id="main_section">
    <article>
        <header id="section_header">
        </header>
        <section class="workspace">
            <h2 class="workspace-header">Technical tasks</h2>
            <c:forEach var="progect" items="${technicalTasks}">
                <form method="post"
                      action="${pageContext.request.contextPath}/manager/newproject">
                    <p>Id :
                        <input readonly name="id" type="text" value="<c:out value="${progect.id}"/>"></p>
                    <p>Name :
                        <input readonly name="textfield" type="text" value="<c:out value="${progect.name}"/>"></p>
                    <p>Description :
                        <input readonly name="textfield" type="text" value="<c:out value="${progect.description}"/>">
                    </p>
                    <c:forEach var="projectJob" items="${progect.technicalTaskJobList}">
                        <p>Tasks job</p>
                        <p>Name :
                            <input name="textfield" type="text" value="<c:out value="${projectJob.name}"/>" disabled>
                        </p>
                        <p>Description :
                            <input name="textfield" type="text" value="<c:out value="${projectJob.description}"/>"
                                   disabled></p>
                        <p>Developer level :
                            <input name="textfield" type="text" value="<c:out value="${projectJob.developerLevel}"/>"
                                   disabled></p>
                    </c:forEach>
                    <p><input type="submit" value="Perform"></p>
            </form>
            </c:forEach>
        </section>
    </article>
</section>

<footer id="page_footer">
    <p>2016 by D.Perestoronin</p>
</footer>
</body>
</html>
