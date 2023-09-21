<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link rel="stylesheet" href="./assets/CSS/index-1.css" />
    <link rel="stylesheet" href="./assets/CSS/head.css" />
  </head>
  <body>
    <header>
      <div>
        <img src="./assets/image/RISHIMARKET (1).png" alt="logo" width="50%" />
      </div>
      <div class="head">
        <p>Home</p>
        <p onclick="about()">About us</p>
        <div class="dropdown">
          <p class="dropbtn">Register</p>
          <div class="dropdown-content">
            <a onclick="buy_sign()">as Buyer</a>
            <a onclick="sell_sign()">as Seller</a>
          </div>
        </div>
        <div class="dropdown">
          <p onclick="buy_login()">Log in</p>
        </div>
        <!-- <p onclick="customer()">Log In</p> -->
      </div>
      <div>
        <img src="./assets/image/logo.png" alt="profile" width="100px" />
      </div>
    </header>

    <section class="content_sec">
      <img src="./assets/image/left.jpg" alt="left" width="500px" />
      <p class="content_sec_p">
        If you are busy <br />
        Buy products in RISHI
      </p>
      <img src="./assets/image/right.png" alt="right" width="570px" />
    </section>

    <section class="detail_para">
      <p>Buy and Sell your Agricultural Products online</p>
    </section>

    <main class="card_main">
      <div class="card_div">
        <img src="./assets/image/card_fruits.jpg" alt="Fruits" width="275px" />

        <b>Fruits</b>
        <button onclick="buy_login()">Buy Now</button>
        <button onclick="sell_login()">Sell Now</button>
      </div>
      <div class="card_div">
        <img
          src="./assets/image/card_vegetables.jpg"
          alt="vegetable"
          width="275px"
        />
        <b>Vegetables</b>
        <button onclick="buy_login()">Buy Now</button>
        <button onclick="sell_login()">Sell Now</button>
      </div>
      <div class="card_div">
        <img src="./assets/image/card_tea.jpg" alt="tea" width="275px" />
        <b>Tea and Coffee</b>
        <button onclick="buy_login()">Buy Now</button>
        <button onclick="sell_login()">Sell Now</button>
      </div>
      <div class="card_div">
        <img src="./assets/image/card_grain.jpg" alt="grain" width="275px" />
        <b>Cereals and Grains</b>
        <button onclick="buy_login()">Buy Now</button>
        <button onclick="sell_login()">Sell Now</button>
      </div>
    </main>

    <main class="delivery_main">
      <div class="delivery_div">
        <img src="./assets/image/delivery_truck.jpg" alt="truck" />
        <p>We have a Fast and Free delivery System</p>
      </div>
      <div class="delivery_div">
        <img src="./assets/image/delivery_fresh_eatables.jpg" alt="fresh_eat" />
        <p>We have a Fresh and Organic Products</p>
      </div>
    </main>

    <main class="discount_main">
      <div class="discount_full_div">
        <div class="discount_div">
          <img src="./assets/image/barcode.png" alt="barcode" width="85px" />
        </div>
        <div class="discount_div">
          <nav class="discount_day">
            <h5>UPTO 40% off</h5>
            <h2>FARMER'S DAY</h2>
            <p></p>
          </nav>
          <nav class="discount_date">
            <h5>EXPIRATION DATE</h5>
            <p>30/02/2023</p>
          </nav>
        </div>
      </div>
      <div class="discount_full_div">
        <div class="discount_div">
          <img src="./assets/image/barcode.png" alt="barcode" width="85px" />
        </div>
        <div class="discount_div">
          <nav class="discount_day">
            <h5>UPTO 30% off</h5>
            <h2>STUDENT'S DAY</h2>
            <p></p>
          </nav>
          <nav class="discount_date">
            <h5>EXPIRATION DATE</h5>
            <p>30/02/2023</p>
          </nav>
        </div>
      </div>
    </main>

    <section class="img_slide">
      <h1>Our Products</h1>
      <div>
        <img src="./assets/image/home-fruit.jpg" alt="fruit_img" />
        <img src="./assets/image/home-vegetable.jpg" alt="vegetable_img" />
        <img src="./assets/image/home-tea.jpg" alt="tea_img" />
        <img src="./assets/image/home-grain.jpg" alt="grain_img" />
      </div>
    </section>

    <main class="buy_sell_main">
      <div class="buy_sell_div">
        <img
          src="./assets/image/buy_online.png"
          alt="buy_online"
          width="350px"
        />
        <p>
          You can buy Eatables in your home or office, whenever and wherever you
          want
        </p>
      </div>
      <div class="buy_sell_div">
        <img src="./assets/image/sell_online.png" alt="sell_online" />
        <p>You can sell your Agricultural products in your home</p>
      </div>
    </main>

    <section class="img_slide">
      <h1>Our Future Products</h1>
      <div>
        <img src="./assets/image/honey.jpg" alt="honey_img" />
        <img src="./assets/image/juice.jpg" alt="juice_img" />
        <img src="./assets/image/milk_products.jpg" alt="milk_img" />
        <img src="./assets/image/nuts.jpg" alt="nuts_img" />
      </div>
    </section>

    <section>
      <form class="chat-history" action="comment"></form>
    </section>

    <footer id="foot">
      <div class="foot-img">
        <img src="./assets/image/logo (2).png" alt="logo" width="130px" />
      </div>
      <div class="foot-1">
        <h4>Contact us</h4>
        <ul>
          <i
            class="fa fa-phone"
            style="font-size: 24px; color: rgb(49, 49, 176)"
          ></i>
          9876543210
        </ul>
        <ul>
          <i
            class="fa fa-envelope"
            style="font-size: 24px; color: rgb(245, 11, 11)"
          ></i>
          Rishi-market@agri.com
        </ul>
        <ul>
          <i class="fa fa-whatsapp" style="font-size: 24px; color: green"></i>
          8967452301
        </ul>
        <ul>
          <i class="fa fa-home" style="font-size: 24px; color: green"></i>
          Rishi office, Global Infocity,<br />
          Perungudi, Chennai 600096
        </ul>
      </div>
      <div class="foot-2">
        <h4>Follow us on</h4>
        <div class="follow">
          <ul>
            <i
              class="fa fa-youtube-play"
              style="font-size: 24px; color: rgb(254, 4, 4)"
            ></i>
            You Tube
          </ul>
          <ul class="fb">
            <i
              class="fa fa-facebook-f"
              style="font-size: 24px; color: blue"
            ></i>
            Face book
          </ul>
          <ul>
            <i
              class="fa fa-twitter"
              style="font-size: 24px; color: skyblue"
            ></i>
            Twitter
          </ul>
          <ul>
            <i class="fa fa-instagram" style="font-size: 24px; color: red"></i>
            Instagram
          </ul>
        </div>
      </div>
      <div class="foot-3">
        <h4>Help & Info</h4>
        <ul>
          Customer service
        </ul>
        <ul></ul>
        <ul>
          Privacy Policy
        </ul>
        <ul>
          Terms and Conditions
        </ul>
        <ul onclick="review()">
          Reviews
        </ul>
      </div>
    </footer>
    <div class="own">
      <p onclick="admin()">Admin</p>
      <p onclick="worker()">Worker</p>
      <!-- <p onclick="leader_board()">Leader Board</p> -->
    </div>
    <nav class="copyright">
      @ copyright 2022 RISHI AGRI MARKET | All rights reserved
    </nav>

    <script type="module">
      // Import the functions you need from the SDKs you need
      import { initializeApp } from "https://www.gstatic.com/firebasejs/9.21.0/firebase-app.js";
      // import { getDatabase } from "https://www.gstatic.com/firebasejs/9.21.0/firebase-database.js";

      // import { initializeApp }

      // TODO: Add SDKs for Firebase products that you want to use
      // https://firebase.google.com/docs/web/setup#available-libraries

      import {
        getDatabase,
        ref,
        onValue,
      } from "https://www.gstatic.com/firebasejs/9.21.0/firebase-database.js";
      // Your web app's Firebase configuration
      const firebaseConfig = {
        apiKey: "AIzaSyC-FWOIV2irTWli3IBg2kcM9UCqgND13VQ",
        authDomain: "rishi-agri-organic-market.firebaseapp.com",
        projectId: "rishi-agri-organic-market",
        storageBucket: "rishi-agri-organic-market.appspot.com",
        messagingSenderId: "46817418325",
        appId: "1:46817418325:web:10b5571b8c78ec64a0c8dc",
      };

      // Initialize Firebase
      const app = initializeApp(firebaseConfig);

      // get complete information about the database and console log it
      let database = getDatabase();
      console.log(database);

      // get the current value
      const starCountRef = ref(database, "name/");
      onValue(starCountRef, (snapshot) => {
        // get the update value
        const data = snapshot.val();
        console.log(data);
      });
    </script>

    <script>
      function sell_sign() {
        window.location.href = "./pages/1.signin.jsp";
      }
      function sell_login() {
        window.location.href = "./pages/2.Login.jsp";
      }
      function buy_sign() {
        window.location.href = "./pages/1.buy-signin.jsp";
      }
      function buy_login() {
        window.location.href = "./pages/2.buy-login.jsp";
      }
      function admin() {
        window.location.href = "./pages/16.admin.login.html";
      }
      function about() {
        window.location.href = "./pages/Aboutus.html";
      }
      function sell() {
        window.location.href = "./pages/10.upload.html";
      }
      function fruitbuy() {
        window.location.href = "./pages/5a-fruits.html";
      }
      function vegbuy() {
        window.location.href = "./pages/5b-vegetables.html";
      }
      function grainbuy() {
        window.location.href = "./pages/5d-grain.html";
      }
      function teabuy() {
        window.location.href = "./pages/5c-tea.html";
      }
      function review() {
        window.location.href = "./pages/review.html";
      }
      function worker() {
        window.location.href = "./pages/worker_login.html";
      }
      function leader_board() {
        window.location.href = "./pages/leaderboard_seller.html";
      }
    </script>
    <!-- <a href="./pages/review.html"></a> -->
  </body>
</html>
