<%-- 
    Document   : addNew
    Created on : 25 thg 11, 2020, 11:24:17
    Author     : HP
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
    <!--<![endif]-->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Fashion Hub</title>
        <meta name="description" content="Sufee Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="../admin/apple-icon.png">
        <link rel="shortcut icon" href="../admin/favicon.ico">


        <link rel="stylesheet" href="../admin/vendors/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../admin/vendors/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="../admin/vendors/themify-icons/css/themify-icons.css">
        <link rel="stylesheet" href="../admin/vendors/flag-icon-css/css/flag-icon.min.css">
        <link rel="stylesheet" href="../admin/vendors/selectFX/css/cs-skin-elastic.css">

        <link rel="stylesheet" href="../admin/assets/css/style.css">

        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>



    </head>

    <body>
        <!-- Left Panel -->

        <jsp:include page="homeAdminMenu.jsp" />
        <div id="right-panel" class="right-panel">
            <jsp:include page="homeAdminHeader.jsp" />
            <div class="breadcrumbs">
                <div class="col-sm-4">
                    <div class="page-header float-left">
                        <div class="page-title">
                            <h1>Dashboard</h1>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="page-header float-right">
                        <div class="page-title">
                            <ol class="breadcrumb text-right">
                                <li><a href="#">Table</a></li>
                                <li class="active">Edit</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <div class="content mt-3">
                <div class="animated fadeIn">


                    <div class="row">

                        <!--/.col-->

                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header"><strong>Edit</strong></div>
                                <div class="card-body card-block">
                                    <mvc:form modelAttribute="product" action="${pageContext.request.contextPath}/updatePro" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered">
                                        <div class="row form-group">
                                            <label class="col-md-3 control-label" for="inputReadOnly">Id</label>
                                            <div class="col-md-6">
                                                <mvc:input path="productId" readonly="true" class="form-control" id="inputDefault" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-3 control-label" for="inputReadOnly">Name</label>
                                            <div class="col-md-6">
                                                <mvc:input path="productName" required="true" class="form-control" id="inputDefault" />
                                            </div>
                                        </div>
                                            <div class="row form-group">
                                            <label class="col-md-3 control-label" for="inputReadOnly">Code</label>
                                            <div class="col-md-6">
                                                <mvc:input path="productCode" required="true" class="form-control" id="inputDefault" />
                                            </div>
                                        </div>
                                            <div class="row form-group">
                                            <label class="col-md-3 control-label" for="inputReadOnly">Material</label>
                                            <div class="col-md-6">
                                                <mvc:input path="productMaterial" required="true" class="form-control" id="inputDefault" />
                                            </div>
                                        </div>
                                            <div class="row form-group">
                                            <label class="col-md-3 control-label" for="inputReadOnly">Brand</label>
                                            <div class="col-md-6">
                                                <mvc:input path="productBrand" required="true" class="form-control" id="inputDefault" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-3 control-label"></label>
                                            <div class="col-md-6 col-xs-11">                                    
                                                <input type="submit" class="btn btn-sm btn-primary" data-plugin-colorpicker data-color-format="hex" data-color="rgb(255, 255, 255)" value="Save" />
                                            </div>
                                        </div>
                                    </mvc:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="../admin/vendors/jquery/dist/jquery.min.js"></script>
        <script src="../admin/vendors/popper.js/dist/umd/popper.min.js"></script>

        <script src="../admin/vendors/jquery-validation/dist/jquery.validate.min.js"></script>
        <script src="../admin/vendors/jquery-validation-unobtrusive/dist/jquery.validate.unobtrusive.min.js"></script>

        <script src="../admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../admin/assets/js/main.js"></script>
    </body>
</html>
