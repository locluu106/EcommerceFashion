
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Fashion Hub Ecommerce Category Bootstrap Responsive Website Template| Payment :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8" />
        <meta name="keywords" content="Fashion Hub Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>

        <link href="<c:url value='/resources/css/owl.carousel.min.css.css'/>" rel="stylesheet">                               
        <link href="<c:url value='/resources/css/bootstrap.css'/>" rel="stylesheet">        
        <link href="<c:url value='/resources/css/shop.css'/>" rel="stylesheet">

        <link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet" media="all">  
        <link href="<c:url value='/resources/css/fontawesome-all.min.css.css'/>" rel="stylesheet">  
        <link href="<c:url value='/resources/css/chekcout.css'/>" rel="stylesheet">  

        <link href="css/style.css" type="text/css" rel="stylesheet" media="all">    
        <link href="css/fontawesome-all.min.css" rel="stylesheet" media="all">
        <link href="css/chekcout.css" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Elsie+Swash+Caps:400,900" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">

    </head>

    <body>
        <jsp:include page="../homeHeader.jsp" />
        <div class="ibanner_w3 pt-sm-5 pt-3">
            <h4 class="head_agileinfo text-center text-capitalize text-center pt-5">
                <span>f</span>ashion
                <span>h</span>ub</h4>
        </div>

        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="${pageContext.request.contextPath}/home">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Order</li>
            </ol>
        </nav>

        <section class="payment_w3ls py-5">
            <div class="container">
                <div class="privacy about">

                    <div class="responsive_tabs innfpage-tabs">
                        <div id="horizontalTab">

                            <div class="resp-tabs-container">

                                <div class="tab2">
                                    <div class="pay_info">
                                        <div class="row">

                                            <div class="col-xs-12 col-sm-4 col-md-3"  >
                                                <div class="list-group">
                                                    <a href="${pageContext.request.contextPath}/user/infomation" class="list-group-item ">Information</a>
                                                    <a href="${pageContext.request.contextPath}/user/userOrder" class="list-group-item ">Order or You</a>
                                                    <a href="${pageContext.request.contextPath}/logout" class="list-group-item logout active">Logout</a>
                                                </div>
                                            </div>
                                                <div>
                                            <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                                <thead>
                                                    <tr>
                                                        
                                                        <th>Order Date</th>
                                                        <th>Customer Name</th>    
                                                        <th></th>                                                
                                                        
                                                    </tr>
                                                </thead>
                                                <tb ody>
                                                    <c:forEach var="orders" items="${ordersList}">
                                                        <tr>
                                                            
                                                            <td>${orders.orderDate}</td>
                                                            <td>${orders.customer.customerName}</td>     
                                                            
                                                            <td >
                                                                    <a href="${pageContext.request.contextPath}/viewOrder/${orders.orderId}">detail</a>
                                                            </td>                                                       
                                                            
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>

                                                </div>

                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- //payment -->
        <jsp:include page="../homeFooter.jsp" /> 


        <script src="js/jquery-2.2.3.min.js"></script>

        <script>
            $(document).ready(function () {
                $('ul li.dropdown').hover(function () {
                    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(200);
                }, function () {
                    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(200);
                });
            });
        </script>

        <script>
            window.onload = function () {
                document.getElementById("password1").onchange = validatePassword;
                document.getElementById("password2").onchange = validatePassword;
            }
            function validatePassword() {
                var pass2 = document.getElementById("password2").value;
                var pass1 = document.getElementById("password1").value;
                if (pass1 != pass2)
                    document.getElementById("password2").setCustomValidity("Passwords Don't Match");
                else
                    document.getElementById("password2").setCustomValidity('');
            }
        </script>

        <script src="js/minicart.js"></script>
        <script>
            hub.render();
            hub.cart.on('new_checkout', function (evt) {
                var items, len, i;
                if (this.subtotal() > 0) {
                    items = this.items();
                    for (i = 0, len = items.length; i < len; i++) {
                    }
                }
            });
        </script>

        <script src="js/easy-responsive-tabs.js"></script>
        <script>
            $(document).ready(function () {
                $('#horizontalTab').easyResponsiveTabs({
                    type: 'default', //Types: default, vertical, accordion           
                    width: 'auto', //auto or any width like 600px
                    fit: true, // 100% fit in a container
                    closed: 'accordion', // Start closed if in accordion view
                    activate: function (event) { // Callback function if tab is switched
                        var $tab = $(this);
                        var $info = $('#tabInfo');
                        var $name = $('span', $info);
                        $name.text($tab.text());
                        $info.show();
                    }
                });
            });
        </script>

        <script src="js/creditly.js"></script>
        <link rel="stylesheet" href="css/creditly.css" type="text/css" media="all" />

        <script>
            $(function () {
                var creditly = Creditly.initialize(
                        '.creditly-wrapper .expiration-month-and-year',
                        '.creditly-wrapper .credit-card-number',
                        '.creditly-wrapper .security-code',
                        '.creditly-wrapper .card-type');
                $(".creditly-card-form .submit").click(function (e) {
                    e.preventDefault();
                    var output = creditly.validate();
                    if (output) {
                        console.log(output);
                    }
                });
            });
        </script>

        <script src="js/move-top.js"></script>
        <script src="js/easing.js"></script>
        <script>
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({
                        scrollTop: $(this.hash).offset().top
                    }, 1000);
                });
            });
        </script>

        <script>
            $(document).ready(function () {
                $().UItoTop({
                    easingType: 'easeOutQuart'
                });
            });
        </script>
        <script src="js/SmoothScroll.min.js"></script>    
        <script src="js/bootstrap.js"></script>
    </body>

</html>