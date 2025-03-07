<!doctype html>
<html>
<head>
    <title>File Manager</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script type="text/javascript" src="/scripts/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="/scripts/sc.js"></script>
    <script type="text/javascript" src="/scripts/bootstrap.bundle.js"></script>
    <script type="text/javascript" src="/scripts/bootstrap.js"></script>
    <style>
        .noselect {
            -moz-user-select: none;
            -webkit-user-select: none;
            -ms-user-select: none;
            -o-user-select: none;
            user-select: none;
            cursor: default;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row bg-white p-3 border-bottom">
        <div class="col">
            <strong>Name</strong>
        </div>
        <div class="col-6 row">
            <div class="col-8"><strong>Date of change</strong></div>
            <div class="col-4"><strong>Size</strong></div>
        </div>
    </div>
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <button type="button" id="search_action" class="btn btn-outline-secondary">Search Here</button>
            <button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="sr-only">Toggle Dropdown</span>
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" onclick="changeSearch(this)">Search Here</a>
                <a class="dropdown-item" onclick="changeSearch(this)">Search in children</a>
            </div>
        </div>
        <input type="text" id="search" placeholder="File name" class="form-control"
               aria-label="Text input with segmented dropdown button">
    </div>
    <div id="files_container">
        <#import "filesView.ftl" as macro>
        <@macro.show_all directory/>
    </div>
</div>
</body>
</html>
