<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>RESTAURANTAPP</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
            .welcome_container{

                width: 80%;
                height: 400px;
                margin-left: 2%;
                margin-top: 10px;                
                font-weight: bold;
                font-size: 1.6em;
                color: white;
                font-family: Arial; 
                background-image: url({{ asset('images/restaurant_banner_img.jpeg') }});               
                
            }

            .welcome_container h3{
                line-height: 300px;
                text-align: center;                
            }
            .footer
            {
                background-color: black;
                color:white;
                height: 60px;
                text-align: center;
                margin-top: 10px;
            }
        </style>
    </head>
    <body>
        <div class="flex-center" style="padding-top: 100px;">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif
                <div class="welcome_container">
                          <h3>RESTAURANT POS SYSTEM</h3>
                </div>
            </div>
            <div style="padding-bottom: 150px;"></div>
            <div class="footer">
                <br>
                Copyright@Virulant Technologies-2021
            </div>

           <!-- <div class="content">
                <div class="title m-b-md">
                    Restaurant App
                </div>

                <div class="links">
                    <a href="https://laravel.com/docs">Docs</a>
                    <a href="https://laracasts.com">Laracasts</a>
                    <a href="https://laravel-news.com">News</a>
                    <a href="https://blog.laravel.com">Blog</a>
                    <a href="https://nova.laravel.com">Nova</a>
                    <a href="https://forge.laravel.com">Forge</a>
                    <a href="https://vapor.laravel.com">Vapor</a>
                    <a href="https://github.com/laravel/laravel">GitHub</a>
                </div>
            </div>-->
        </div>
    </body>
</html>
