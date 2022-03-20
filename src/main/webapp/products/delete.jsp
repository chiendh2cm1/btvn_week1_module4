
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
<body>
<div class="container">
    <h1 style="text-align:center">Delete product</h1>
    <form action="/products/delete/${product.id}" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">Product ID</label>
            <input name="id" type="text" class="form-control" id="id" value="${product.id}"
                   disabled>
        </div>
        <div class="mb-3">
            <label for="name" class="form-label">Product name</label>
            <input name="name" type="text" class="form-control" id="name" value="${product.name}"
                   disabled>
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Product price</label>
            <input name="price" type="text" class="form-control" id="price" value="${product.price}"
                   disabled>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Product description</label>
            <input name="description" type="text" class="form-control" id="description" value="${product.description}"
                   disabled>
        </div>
        <div class="mb-3">
            <label for="image" class="form-label">Image</label>
            <input name="image" type="text" class="form-control" id="image" value="${product.image}"
                   disabled>
        </div>
        <button type="submit" class="btn btn-success">Delete</button>
        <a href="/products">
            <button type="button" value="back" class="btn btn-secondary">Back</button>
        </a>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>
</html>
