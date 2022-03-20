
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
    <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
<body>
<div class="container-fluid">
    <h1 style="text-align:center">List Product</h1>
    <div class="row">
        <div class="col">
            <div class="d-grid gap-2 d-md-flex justify-content-md-start">
                <a href="/products/create">
                    <button class="btn btn-primary me-md-2" type="button"><i class="fas fa-plus"></i> Create product
                    </button>
                </a>
            </div>
        </div>
    </div>
    <div>
        <table class="table table-bordered">
            <thead>
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Price</td>
                <td>Description</td>
                <td>Image</td>
                <td colspan="2">Action</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="product" items="${products}" varStatus="loop">
                <tr>
                    <th>${product.id}</th>
                    <td>${product.name}</td>
                    <td>${product.price}₫</td>
                    <td>${product.description}</td>
                    <td><img src="${product.image}" alt="" width="50" height="50"></td>
                    <td>
                        <a class="btn btn-info" href="/products/edit/${product.id}">
                            <i
                                    class="fas fa-edit">
                            </i>
                        </a>
                    </td>
                    <td>
                        <a class="btn btn-danger" href="/products/delete/${product.id}">
                            <i
                                    class="fas fa-trash">
                            </i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>
</html>
