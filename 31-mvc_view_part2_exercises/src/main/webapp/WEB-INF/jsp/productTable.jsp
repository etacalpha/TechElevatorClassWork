<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Product Table View</title>
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
	<div class="productTable">
    <table>
        <tr>
            <c:forEach var="product" items="${productList}">
            <c:url var ="productImgUrl" value ="/img/${product.imageName}"/>
            <td class="productTableImage"> <img src="${productImgUrl}"/></td>  
            </c:forEach>
        </tr>

        <tr class="grey">
            <th class="white">Name</th>
            <c:forEach var="product" items="${productList}">
            <td>${product.name}</td>
            </c:forEach>    
        </tr>
        
        <tr class="white">
            <th class="white">Rating</th>
            <c:forEach var="product" items="${productList}">
            <c:url var ="productRatingUrl" value ="/img/${Math.round(product.rating)}-star.png"/>
            <td class="productRating"><img src="${productRatingUrl}"/></td> 
            </c:forEach>
        </tr>
        
        <tr class="grey">
        <th class="white">Mfr</th>
        <c:forEach var="product" items="${productList}">
        <td>${product.manufacturer}</td>
        </c:forEach>    
        </tr>
        
        <tr class="white">
            <th class="white">Price</th>
            <c:forEach var="product" items="${productList}">
            <td>$ ${product.price}</td>
        </c:forEach>    
        </tr>
        
        <tr class="grey">
            <th class="white">Weight(in Lbs.)</th>
            <c:forEach var="product" items="${productList}">
            <td>$ ${product.weightInLbs}</td>
            </c:forEach>    
        </tr> 
    </table>
 </div> 
	
       

    </section>
</body>
</html>