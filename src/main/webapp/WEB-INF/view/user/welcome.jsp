<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
</head>

<body>
	<table>
		<tr>
			<td>Welcome ${firstname}</td>
		</tr>
		<tr>
		</tr>
		<tr>
		</tr>
		<tr>
			<td><a href="/CUUDUONGTHANCONG/home">Home</a></td>
		</tr>
	</table>
</body>

</html> --%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
</head>

<body>
    <div class="container">



    
        <div class="row mt-2">
            <div class="col-12 mb-3 col-md-6">
                <select class="form-select" id="filterByColor" onchange="searchFilter()">
                    <option value="" selected>Filter by Color</option>
                    <option value="green">Green</option>
                    <option value="blue">Blue</option>
                    <option value="yellow">Yellow</option>
                </select>
            </div>
            <div class="col-12 col-md-6 mb-3">
                <input type="text" class="form-control" placeholder="Search cards" aria-label="Search cards"
                    onkeyup="searchFilter()">
        
            </div>
        </div>
    
        <div class="row row-cols-1 row-cols-md-3 g-4 gridCards">
            <div class="col green">
                <div class="card h-100">
                    <img src="https://images.unsplash.com/photo-1573952106639-694daec2b88a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80" class="card-img-top"
                        style="width:100% ; height:15vw ; object-fit:cover;" alt="...">
                    <div class="card-body  d-flex flex-column">
                        <h5 class="card-title">Random Card One</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet.</p>
                        <a href="#" class="btn btn-primary btn-dark align-self-end mt-auto stretched-link">Details</a>
                    </div>
                </div>
            </div>
            <div class="col blue">
                <div class="card h-100">
                    <img src="https://images.unsplash.com/photo-1601436155198-2ebfea8117b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80" class="card-img-top"
                        style="width:100% ; height:15vw ; object-fit:cover;" alt="...">
                    <div class="card-body  d-flex flex-column">
                        <h5 class="card-title">Random Card Two</h5>
                        <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Architecto, maxime.
                        </p>
                        <a href="#" class="btn btn-primary btn-dark align-self-end mt-auto stretched-link">Details</a>
                    </div>
                </div>
            </div>
            <div class="col yellow">
                <div class="card h-100">
                    <img src="https://images.unsplash.com/photo-1521913626209-0fbf68f4c4b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80" class="card-img-top"
                        style="width:100% ; height:15vw ; object-fit:cover;" alt="...">
                    <div class="card-body  d-flex flex-column">
                        <h5 class="card-title">Random Card Three</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia molestiae
                            suscipit nesciunt. Error, quas nihil.</p>
                        <a href="#" class="btn btn-primary btn-dark align-self-end mt-auto stretched-link">Details</a>
                    </div>
                </div>
            </div>
            <div class="col green">
                <div class="card h-100">
                    <img src="https://images.unsplash.com/photo-1574750851163-cabd9458f3b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80" class="card-img-top"
                        style="width:100% ; height:15vw ; object-fit:cover;" alt="...">
                    <div class="card-body  d-flex flex-column">
                        <h5 class="card-title">Random Card Four</h5>
                        <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam tenetur
                            quas
                            blanditiis recusandae cumque quidem ex voluptas officiis? Nesciunt, expedita.</p>
                        <a href="#" class="btn btn-primary btn-dark align-self-end mt-auto stretched-link">Details</a>
                    </div>
                </div>
            </div>
            <div class="col yellow">
                <div class="card h-100">
                    <img src="https://images.unsplash.com/photo-1602108987428-4768d7c7ecbe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" class="card-img-top"
                        style="width:100% ; height:15vw ; object-fit:cover;" alt="...">
                    <div class="card-body  d-flex flex-column">
                        <h5 class="card-title">Random Card Five Double</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad natus voluptate
                            vero,
                            rem dolor praesentium aspernatur, odio, eveniet eligendi nostrum esse repellendus earum ipsum
                            totam.
                        </p>
                        <a href="#" class="btn btn-primary btn-dark align-self-end mt-auto stretched-link">Details</a>
                    </div>
                </div>
            </div>
            <div class="col green">
                <div class="card h-100">
                    <img src="https://images.unsplash.com/photo-1601370690183-1c7796ecec61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80" class="card-img-top"
                        style="width:100% ; height:15vw ; object-fit:cover;" alt="...">
                    <div class="card-body  d-flex flex-column">
                        <h5 class="card-title">Random Card Six double</h5>
                        <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tempora consequuntur
                            corrupti repellendus cum ea laborum, dolores perspiciatis numquam atque culpa. A facere, qui
                            provident laudantium rem temporibus aspernatur cumque ratione.</p>
                        <a href="#" class="btn btn-primary btn-dark align-self-end mt-auto stretched-link">Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- This is Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
    </script>


    <!-- this is javascript-->
    <script>
        var searchFilter = () => {
            let selectedColor = document.getElementById("filterByColor").value;
            console.log(selectedColor);
            const input = document.querySelector(".form-control");
            const cards = document.getElementsByClassName("col");
            let textBox = input.value;
            for (let i = 0; i < cards.length; i++) {
                let title = cards[i].querySelector(".card-body");	
                if ((cards[i].classList.contains(selectedColor) || selectedColor=="") && title.innerText.toLowerCase().indexOf(textBox.toLowerCase()) > -1) {
                    cards[i].classList.remove("d-none");
                } else {
                    cards[i].classList.add("d-none");
                }
            }
        }
    </script>

</body>

</html>