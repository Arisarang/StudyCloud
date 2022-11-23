<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.star-rating { display: flex; flex-direction: row-reverse; font-size: 2.25rem; line-height: 2.5rem;
  			   justify-content: space-around; padding: 0 0.2em; text-align: center; width: 5em; }
 
.star-rating input { display: none; }
 
.star-rating label { -webkit-text-fill-color: transparent; -webkit-text-stroke-width: 2.3px;
  					 -webkit-text-stroke-color: #2b2a29; cursor: pointer; }
 
.star-rating :checked ~ label { -webkit-text-fill-color: gold; }
 
.star-rating label:hover,
.star-rating label:hover ~ label { -webkit-text-fill-color: #fff58c; }

</style>


</head>
<body>

<div class="star-rating space-x-4 mx-auto">
	<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
	<label for="5-stars" class="star pr-4">★</label>
	<input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
	<label for="4-stars" class="star">★</label>
	<input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
	<label for="3-stars" class="star">★</label>
	<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
	<label for="2-stars" class="star">★</label>
	<input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
	<label for="1-star" class="star">★</label>
</div>
</body>
</html>