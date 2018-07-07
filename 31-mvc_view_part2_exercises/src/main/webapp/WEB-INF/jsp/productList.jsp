<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Product List View</title>
    <c:url value="/css/site.css" var="cssUrl" />
    <link rel="stylesheet" href="${cssUrl}" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="#">Link 1</a></li>
            <li><a href="#">Link 2</a></li>
        </ul>
        
    </nav>
    <section id="main-content">

	<c:forEach var="product" items="${productList}">
		<div class="productDiv">
			<div class="productImage">
				<c:url var="productImgUrl" value="/img/${product.imageName}"/> 
				<img src="${productImgUrl}"/>
			</div> 
			<div class="productTxt">
				<h3>toys</h3>
				<h4>cost</h4>
				<h4>99.99</h4>
			</div>
		</div>
		
	</c:forEach>
       

    </section>
</body>
</html>