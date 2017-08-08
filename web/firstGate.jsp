<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="views/css/firstGate.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript">
            $(function() {
                $('body').on('click', function() {
                    location.replace('/Floracion/main.jsp');
                });
            });

        </script>
        <title>Floración</title>
    </head>

    <body>
        <video id="videobcg" preload="auto" autoplay="true" loop="loop" muted="muted">
    <source src="img/roadtrip.mp4">
</video>
        <div id="bg">
        </div>
        <div id="text">
            <h1>Floración</h1>
            <h3>Buen Camino</h3>
        </div>

    </body>

    </html>
