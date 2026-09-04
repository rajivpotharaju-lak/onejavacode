<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop — Premium Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
    --ink:#111318;
    --muted:#727782;
    --line:#e8e9ed;
    --soft:#f5f6f8;
    --white:#fff;
    --orange:#ff5a36;
    --orange-dark:#df4321;
    --green:#18a673;
    --radius:22px;
    --max:1320px;
    --shadow:0 15px 50px rgba(17,19,24,.08);
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{
    font-family:"DM Sans",sans-serif;
    color:var(--ink);
    background:#fff;
    line-height:1.5;
}
button,input{font:inherit}
button{border:0;cursor:pointer}
a{text-decoration:none;color:inherit}
img{display:block;max-width:100%}
.container{width:min(var(--max),calc(100% - 40px));margin:auto}

/* TOP BAR */
.topbar{
    background:var(--ink);
    color:#fff;
    font-size:12px;
    padding:9px 0;
}
.topbar-inner{display:flex;justify-content:space-between;align-items:center;gap:20px}
.topbar span{opacity:.8}
.top-links{display:flex;gap:22px}

/* HEADER */
header{
    position:sticky;
    top:0;
    z-index:100;
    background:rgba(255,255,255,.94);
    backdrop-filter:blur(18px);
    border-bottom:1px solid var(--line);
}
.navbar{
    min-height:78px;
    display:grid;
    grid-template-columns:auto 1fr auto;
    align-items:center;
    gap:40px;
}
.logo{
    display:flex;
    align-items:center;
    gap:10px;
    font-family:"Space Grotesk",sans-serif;
    font-size:24px;
    font-weight:700;
    letter-spacing:-1px;
}
.logo-mark{
    width:38px;height:38px;
    border-radius:12px;
    display:grid;place-items:center;
    color:#fff;
    background:var(--ink);
}
.logo em{color:var(--orange);font-style:normal}
.nav-links{display:flex;justify-content:center;gap:30px;list-style:none}
.nav-links a{font-size:14px;font-weight:600;color:#5f636c;transition:.2s}
.nav-links a:hover,.nav-links a.active{color:var(--ink)}
.nav-actions{display:flex;align-items:center;gap:8px}
.icon{
    width:42px;height:42px;border-radius:50%;
    display:grid;place-items:center;
    background:transparent;color:#4d5159;
    position:relative;transition:.2s;
}
.icon:hover{background:var(--soft);color:var(--ink)}
.badge-count{
    position:absolute;right:-1px;top:-1px;
    width:18px;height:18px;border-radius:50%;
    display:grid;place-items:center;
    font-size:10px;font-weight:700;
    color:#fff;background:var(--orange);
    border:2px solid #fff;
}
.menu-btn{display:none}

/* SEARCH */
.search{
    display:flex;
    align-items:center;
    background:var(--soft);
    border-radius:14px;
    padding:0 15px;
    height:44px;
    max-width:330px;
    width:100%;
}
.search i{color:#8a8f98;font-size:14px}
.search input{
    width:100%;border:0;outline:0;background:transparent;
    padding:0 10px;font-size:13px;color:var(--ink);
}

/* HERO */
.hero{padding:28px 0 0}
.hero-grid{
    min-height:570px;
    display:grid;
    grid-template-columns:1.05fr .95fr;
    overflow:hidden;
    border-radius:30px;
    background:#f0f1f3;
}
.hero-copy{
    padding:70px 70px 60px;
    display:flex;
    flex-direction:column;
    justify-content:center;
}
.eyebrow{
    width:max-content;
    display:flex;align-items:center;gap:8px;
    padding:7px 13px;
    border:1px solid #dfe1e5;
    border-radius:999px;
    font-size:12px;font-weight:700;
    margin-bottom:24px;
    background:#fff;
}
.eyebrow i{color:var(--orange)}
.hero h1{
    font-family:"Space Grotesk",sans-serif;
    font-size:clamp(45px,5.2vw,78px);
    line-height:.98;
    letter-spacing:-4px;
    max-width:700px;
}
.hero h1 span{color:var(--orange)}
.hero-copy p{
    color:var(--muted);
    max-width:530px;
    margin:25px 0 30px;
    font-size:16px;
}
.hero-buttons{display:flex;gap:12px;flex-wrap:wrap}
.btn{
    display:inline-flex;align-items:center;justify-content:center;gap:9px;
    min-height:48px;padding:0 23px;border-radius:12px;
    font-size:14px;font-weight:700;transition:.2s;
}
.btn-primary{background:var(--ink);color:#fff}
.btn-primary:hover{background:#2b2e35;transform:translateY(-2px)}
.btn-orange{background:var(--orange);color:#fff}
.btn-orange:hover{background:var(--orange-dark);transform:translateY(-2px)}
.btn-light{background:#fff;border:1px solid var(--line)}
.btn-light:hover{border-color:#c9cbd0;transform:translateY(-2px)}
.hero-note{
    display:flex;align-items:center;gap:18px;
    margin-top:35px;color:#656a73;font-size:12px;
}
.hero-note strong{color:var(--ink)}
.hero-image{
    position:relative;
    min-height:500px;
    background:url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1200&q=85") center/cover;
}
.hero-image:after{
    content:"";
    position:absolute;inset:0;
    background:linear-gradient(90deg,rgba(0,0,0,.18),transparent 60%);
}
.floating-card{
    position:absolute;z-index:2;
    right:24px;bottom:24px;
    width:250px;
    background:rgba(255,255,255,.94);
    backdrop-filter:blur(10px);
    padding:18px;border-radius:18px;
    box-shadow:var(--shadow);
}
.floating-card small{color:var(--muted);font-size:11px}
.floating-card strong{display:block;font-size:20px;margin:5px 0}
.stars{color:#f3a323;font-size:12px}

/* TRUST */
.trust{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    border-bottom:1px solid var(--line);
    padding:24px 0;
}
.trust-item{display:flex;align-items:center;gap:13px;justify-content:center;border-right:1px solid var(--line)}
.trust-item:last-child{border:0}
.trust-icon{
    width:42px;height:42px;border-radius:12px;
    background:#fff3ef;color:var(--orange);
    display:grid;place-items:center;
}
.trust-item strong{display:block;font-size:13px}
.trust-item span{display:block;font-size:11px;color:var(--muted)}

/* SECTION */
.section{padding:85px 0}
.section-head{
    display:flex;align-items:end;justify-content:space-between;
    gap:20px;margin-bottom:30px;
}
.kicker{font-size:11px;font-weight:800;letter-spacing:1.5px;color:var(--orange);text-transform:uppercase}
.section-head h2{
    font-family:"Space Grotesk",sans-serif;
    font-size:36px;letter-spacing:-1.5px;margin-top:5px;
}
.section-head p{color:var(--muted);font-size:14px;margin-top:5px}
.link{font-size:13px;font-weight:700;border-bottom:1px solid var(--ink);padding-bottom:3px}

/* CATEGORIES */
.category-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:12px}
.category{
    padding:25px 18px;
    border:1px solid var(--line);
    border-radius:18px;
    background:#fff;
    transition:.25s;
    cursor:pointer;
}
.category:hover{background:var(--ink);color:#fff;transform:translateY(-5px);box-shadow:var(--shadow)}
.category-icon{
    width:48px;height:48px;border-radius:14px;
    background:var(--soft);display:grid;place-items:center;
    font-size:19px;margin-bottom:25px;
}
.category:hover .category-icon{background:#292c33;color:#fff}
.category h3{font-size:14px}
.category span{display:block;font-size:11px;color:var(--muted);margin-top:3px}
.category:hover span{color:#b9bdc4}

/* PRODUCTS */
.product-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.product{
    position:relative;
    border:1px solid var(--line);
    border-radius:20px;
    overflow:hidden;
    background:#fff;
    transition:.25s;
}
.product:hover{transform:translateY(-5px);box-shadow:var(--shadow)}
.product-img{aspect-ratio:1/1;background:var(--soft);position:relative;overflow:hidden}
.product-img img{width:100%;height:100%;object-fit:cover;transition:.4s}
.product:hover .product-img img{transform:scale(1.05)}
.product-label{
    position:absolute;left:13px;top:13px;
    background:var(--ink);color:#fff;
    padding:5px 10px;border-radius:999px;
    font-size:10px;font-weight:800;text-transform:uppercase;
}
.product-label.sale{background:var(--orange)}
.heart{
    position:absolute;right:13px;top:13px;
    width:36px;height:36px;border-radius:50%;
    background:rgba(255,255,255,.9);
    display:grid;place-items:center;color:#686c74;
}
.heart.active{color:var(--orange)}
.product-body{padding:17px}
.product-cat{font-size:10px;color:#969aa2;text-transform:uppercase;letter-spacing:1px;font-weight:700}
.product h3{font-size:15px;margin:7px 0 10px;min-height:45px}
.price-line{display:flex;align-items:center;gap:9px}
.price{font-size:18px;font-weight:800}
.old{text-decoration:line-through;color:#a5a8ae;font-size:12px}
.rating-line{display:flex;align-items:center;gap:7px;margin-top:9px;font-size:11px}
.rating-line .stars{font-size:11px}
.rating-line span{color:var(--muted)}
.add{
    width:100%;height:42px;border-radius:11px;
    background:var(--soft);font-weight:700;font-size:12px;
    margin-top:15px;transition:.2s;
}
.add:hover,.add.added{background:var(--ink);color:#fff}

/* FEATURE */
.feature{
    background:var(--ink);color:#fff;border-radius:28px;
    overflow:hidden;display:grid;grid-template-columns:1fr 1fr;
}
.feature-img{
    min-height:440px;
    background:url("https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1000&q=85") center/cover;
}
.feature-copy{padding:65px;display:flex;flex-direction:column;justify-content:center}
.feature-copy .kicker{color:#ff8a70}
.feature-copy h2{font-family:"Space Grotesk";font-size:45px;line-height:1.05;letter-spacing:-2px;margin:10px 0 15px}
.feature-copy p{color:#aeb2ba;max-width:480px;font-size:14px}
.deal-price{font-size:31px;font-weight:800;margin:20px 0}
.deal-price del{font-size:15px;color:#777d87;margin-left:8px}
.timer{display:flex;gap:8px;margin:5px 0 24px}
.time{
    min-width:65px;text-align:center;padding:10px 7px;
    border:1px solid #353941;border-radius:12px;background:#1a1d22;
}
.time b{display:block;font-size:21px}
.time span{font-size:9px;color:#9297a0;text-transform:uppercase}

/* TESTIMONIALS */
.reviews{display:grid;grid-template-columns:repeat(3,1fr);gap:18px}
.review{border:1px solid var(--line);border-radius:20px;padding:25px;background:#fff}
.review .stars{margin-bottom:15px}
.review p{font-size:14px;line-height:1.7;color:#454952;min-height:95px}
.reviewer{display:flex;align-items:center;gap:11px;margin-top:18px}
.avatar{width:42px;height:42px;border-radius:50%;object-fit:cover}
.reviewer strong{display:block;font-size:12px}
.reviewer span{font-size:11px;color:var(--muted)}

/* NEWSLETTER */
.newsletter{
    background:#f3f4f5;border-radius:25px;
    padding:50px;display:flex;align-items:center;justify-content:space-between;gap:35px;
}
.newsletter h2{font-family:"Space Grotesk";font-size:34px;letter-spacing:-1px}
.newsletter p{color:var(--muted);font-size:13px;margin-top:5px}
.news-form{display:flex;gap:8px;width:min(470px,100%)}
.news-form input{
    flex:1;border:1px solid var(--line);outline:0;
    background:#fff;border-radius:12px;padding:0 15px;height:48px;
}
.news-msg{font-size:11px;margin-top:7px}

/* FOOTER */
footer{background:#111318;color:#fff;padding:60px 0 25px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:40px;padding-bottom:45px}
.footer-brand p{color:#898e97;font-size:13px;max-width:330px;margin-top:15px}
.footer-col h4{font-size:12px;margin-bottom:15px}
.footer-col a{display:block;color:#898e97;font-size:12px;margin:9px 0}
.footer-col a:hover{color:#fff}
.socials{display:flex;gap:8px;margin-top:20px}
.socials a{width:36px;height:36px;border-radius:50%;background:#202329;display:grid;place-items:center;color:#aaa}
.copyright{border-top:1px solid #292c32;padding-top:20px;color:#70757e;font-size:11px;text-align:center}

/* CART DRAWER */
.overlay{
    position:fixed;inset:0;background:rgba(0,0,0,.4);
    opacity:0;visibility:hidden;transition:.25s;z-index:300;
}
.overlay.open{opacity:1;visibility:visible}
.drawer{
    position:fixed;right:0;top:0;height:100vh;width:min(430px,92vw);
    background:#fff;z-index:301;transform:translateX(100%);
    transition:.3s;display:flex;flex-direction:column;
}
.drawer.open{transform:translateX(0)}
.drawer-head{display:flex;align-items:center;justify-content:space-between;padding:23px;border-bottom:1px solid var(--line)}
.drawer-head h3{font-family:"Space Grotesk";font-size:21px}
.close{width:38px;height:38px;border-radius:50%;background:var(--soft)}
.cart-list{flex:1;overflow:auto;padding:15px 23px}
.cart-row{display:flex;align-items:center;gap:12px;padding:13px 0;border-bottom:1px solid var(--line)}
.cart-row img{width:60px;height:60px;object-fit:cover;border-radius:12px}
.cart-info{flex:1}
.cart-info strong{font-size:12px;display:block}
.cart-info span{font-size:11px;color:var(--muted)}
.remove{background:transparent;color:#999;padding:8px}
.drawer-foot{padding:20px 23px;border-top:1px solid var(--line)}
.total{display:flex;justify-content:space-between;font-size:18px;font-weight:800;margin-bottom:14px}
.empty{text-align:center;padding:70px 10px;color:var(--muted);font-size:13px}

/* MOBILE */
@media(max-width:1100px){
    .navbar{grid-template-columns:auto auto;justify-content:space-between}
    .nav-links{display:none}
    .search{max-width:none;grid-column:1/-1;grid-row:2;margin-bottom:15px}
    .navbar{padding:15px 0}
    .category-grid{grid-template-columns:repeat(3,1fr)}
    .product-grid{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:800px){
    .top-links{display:none}
    .container{width:min(var(--max),calc(100% - 28px))}
    .hero-grid{grid-template-columns:1fr}
    .hero-copy{padding:45px 30px}
    .hero-image{min-height:330px}
    .hero h1{letter-spacing:-2px}
    .trust{grid-template-columns:repeat(2,1fr);gap:20px}
    .trust-item:nth-child(2){border:0}
    .trust-item{justify-content:flex-start}
    .section{padding:60px 0}
    .section-head h2{font-size:29px}
    .feature{grid-template-columns:1fr}
    .feature-img{min-height:300px}
    .feature-copy{padding:40px 30px}
    .reviews{grid-template-columns:1fr}
    .newsletter{padding:35px 25px;display:block}
    .news-form{margin-top:22px}
    .footer-grid{grid-template-columns:1fr 1fr}
}
@media(max-width:520px){
    .hero{padding-top:14px}
    .hero-grid{border-radius:20px}
    .hero h1{font-size:43px}
    .hero-note{flex-direction:column;align-items:flex-start;gap:6px}
    .category-grid{grid-template-columns:1fr 1fr}
    .product-grid{gap:10px}
    .product{border-radius:15px}
    .product-body{padding:13px}
    .product h3{font-size:13px}
    .price{font-size:16px}
    .add{font-size:11px}
    .floating-card{right:12px;bottom:12px}
    .footer-grid{grid-template-columns:1fr}
    .newsletter h2{font-size:28px}
    .news-form{flex-direction:column}
}
</style>
</head>

<body>

<div class="topbar">
    <div class="container topbar-inner">
        <span><i class="fa-solid fa-truck-fast"></i> Free shipping on orders over $75</span>
        <div class="top-links">
            <span>Track Order</span>
            <span>Help Center</span>
            <span>USD / EN</span>
        </div>
    </div>
</div>

<header>
    <div class="container navbar">
        <a href="#" class="logo">
            <span class="logo-mark"><i class="fa-solid fa-bolt"></i></span>
            Nexus<em>Shop</em>
        </a>

        <nav>
            <ul class="nav-links">
                <li><a class="active" href="#">Home</a></li>
                <li><a href="#categories">Categories</a></li>
                <li><a href="#products">New Arrivals</a></li>
                <li><a href="#deals">Deals</a></li>
                <li><a href="#reviews">Reviews</a></li>
            </ul>
        </nav>

        <div class="nav-actions">
            <button class="icon" aria-label="Account" onclick="accountMessage()"><i class="fa-regular fa-user"></i></button>
            <button class="icon" aria-label="Wishlist" onclick="wishlistMessage()"><i class="fa-regular fa-heart"></i></button>
            <button class="icon" aria-label="Cart" id="cartBtn">
                <i class="fa-solid fa-bag-shopping"></i>
                <span class="badge-count" id="cartCount">0</span>
            </button>
        </div>

        <div class="search">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input id="searchInput" type="search" placeholder="Search products, brands or categories...">
        </div>
    </div>
</header>

<main>

<section class="hero">
    <div class="container">
        <div class="hero-grid">
            <div class="hero-copy">
                <div class="eyebrow"><i class="fa-solid fa-sparkles"></i> NEW SEASON • 2026</div>
                <h1>Shop better.<br><span>Live better.</span></h1>
                <p>
                    Discover carefully selected tech, fashion and everyday essentials.
                    Premium products, simple prices and a shopping experience built around you.
                </p>
                <div class="hero-buttons">
                    <button class="btn btn-orange" onclick="scrollToProducts()">
                        Explore Collection <i class="fa-solid fa-arrow-right"></i>
                    </button>
                    <button class="btn btn-light" onclick="scrollToDeals()">
                        View Today's Deal
                    </button>
                </div>
                <div class="hero-note">
                    <span><strong>4.9/5</strong> customer rating</span>
                    <span>•</span>
                    <span><strong>50K+</strong> happy shoppers</span>
                    <span>•</span>
                    <span><strong>24/7</strong> support</span>
                </div>
            </div>

            <div class="hero-image">
                <div class="floating-card">
                    <small>THIS WEEK'S PICK</small>
                    <strong>Premium essentials</strong>
                    <div class="stars">★★★★★ <span style="color:#777">4.9</span></div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="container">
    <div class="trust">
        <div class="trust-item">
            <div class="trust-icon"><i class="fa-solid fa-truck-fast"></i></div>
            <div><strong>Fast Delivery</strong><span>2–5 business days</span></div>
        </div>
        <div class="trust-item">
            <div class="trust-icon"><i class="fa-solid fa-shield-halved"></i></div>
            <div><strong>Secure Payment</strong><span>100% protected checkout</span></div>
        </div>
        <div class="trust-item">
            <div class="trust-icon"><i class="fa-solid fa-rotate-left"></i></div>
            <div><strong>Easy Returns</strong><span>30-day return policy</span></div>
        </div>
        <div class="trust-item">
            <div class="trust-icon"><i class="fa-solid fa-headset"></i></div>
            <div><strong>Friendly Support</strong><span>We're here to help</span></div>
        </div>
    </div>
</section>

<section class="section" id="categories">
    <div class="container">
        <div class="section-head">
            <div>
                <div class="kicker">Explore</div>
                <h2>Shop by category</h2>
                <p>Everything you need, organized your way.</p>
            </div>
            <a class="link" href="#products">View all</a>
        </div>
        <div class="category-grid" id="categoryGrid"></div>
    </div>
</section>

<section class="section" id="products" style="background:#f8f8f7">
    <div class="container">
        <div class="section-head">
            <div>
                <div class="kicker">Trending now</div>
                <h2>Customer favorites</h2>
                <p>Popular picks chosen by our community.</p>
            </div>
            <span id="resultText" class="link">8 products</span>
        </div>
        <div class="product-grid" id="productGrid"></div>
    </div>
</section>

<section class="section" id="deals">
    <div class="container">
        <div class="feature">
            <div class="feature-img"></div>
            <div class="feature-copy">
                <div class="kicker">Limited time</div>
                <h2>Smart style.<br>Smarter price.</h2>
                <p>Meet the watch that keeps up with your day. Sleek design, health tracking and everyday convenience.</p>
                <div class="deal-price">$249 <del>$329</del></div>
                <div class="timer">
                    <div class="time"><b id="days">00</b><span>Days</span></div>
                    <div class="time"><b id="hours">00</b><span>Hours</span></div>
                    <div class="time"><b id="mins">00</b><span>Minutes</span></div>
                    <div class="time"><b id="secs">00</b><span>Seconds</span></div>
                </div>
                <button class="btn btn-orange" onclick="addDeal()">Add Deal to Cart <i class="fa-solid fa-bag-shopping"></i></button>
            </div>
        </div>
    </div>
</section>

<section class="section" id="reviews">
    <div class="container">
        <div class="section-head">
            <div>
                <div class="kicker">Real people</div>
                <h2>Loved by shoppers</h2>
                <p>A few words from our customers.</p>
            </div>
        </div>
        <div class="reviews">
            <article class="review">
                <div class="stars">★★★★★</div>
                <p>“The new design is so easy to browse. My order arrived earlier than expected and everything was packed beautifully.”</p>
                <div class="reviewer">
                    <img class="avatar" src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80" alt="Customer">
                    <div><strong>Sophia Chen</strong><span>Verified Buyer</span></div>
                </div>
            </article>
            <article class="review">
                <div class="stars">★★★★★</div>
                <p>“Excellent selection and very smooth checkout. I found exactly what I wanted in less than five minutes.”</p>
                <div class="reviewer">
                    <img class="avatar" src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80" alt="Customer">
                    <div><strong>James Wilson</strong><span>Tech Enthusiast</span></div>
                </div>
            </article>
            <article class="review">
                <div class="stars">★★★★☆</div>
                <p>“Great prices, quick delivery and helpful support. NexusShop has become one of my go-to online stores.”</p>
                <div class="reviewer">
                    <img class="avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80" alt="Customer">
                    <div><strong>Ava Martin</strong><span>Frequent Shopper</span></div>
                </div>
            </article>
        </div>
    </div>
</section>

<section class="section" style="padding-top:20px">
    <div class="container">
        <div class="newsletter">
            <div>
                <div class="kicker">Stay connected</div>
                <h2>Get the good stuff first.</h2>
                <p>New arrivals, private offers and useful product drops. No spam.</p>
            </div>
            <div style="width:min(470px,100%)">
                <form class="news-form" id="newsForm">
                    <input id="email" type="email" placeholder="Your email address" required>
                    <button class="btn btn-orange" type="submit">Subscribe</button>
                </form>
                <div id="newsMsg" class="news-msg"></div>
            </div>
        </div>
    </div>
</section>

</main>

<footer>
    <div class="container">
        <div class="footer-grid">
            <div class="footer-brand">
                <a href="#" class="logo"><span class="logo-mark"><i class="fa-solid fa-bolt"></i></span>Nexus<em>Shop</em></a>
                <p>A modern shopping destination for products worth bringing into your everyday life.</p>
                <div class="socials">
                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
                    <a href="#"><i class="fa-brands fa-youtube"></i></a>
                </div>
            </div>
            <div class="footer-col"><h4>SHOP</h4><a href="#products">New Arrivals</a><a href="#products">Best Sellers</a><a href="#deals">Deals</a><a href="#categories">Categories</a></div>
            <div class="footer-col"><h4>HELP</h4><a href="#">Shipping</a><a href="#">Returns</a><a href="#">Order Tracking</a><a href="#">Contact</a></div>
            <div class="footer-col"><h4>COMPANY</h4><a href="#">About Us</a><a href="#">Careers</a><a href="#">Privacy</a><a href="#">Terms</a></div>
        </div>
        <div class="copyright">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </div>
</footer>

<div class="overlay" id="overlay"></div>
<aside class="drawer" id="drawer" aria-hidden="true">
    <div class="drawer-head">
        <h3>Your Cart</h3>
        <button class="close" id="closeCart"><i class="fa-solid fa-xmark"></i></button>
    </div>
    <div class="cart-list" id="cartList"></div>
    <div class="drawer-foot">
        <div class="total"><span>Total</span><span id="total">$0</span></div>
        <button class="btn btn-orange" style="width:100%" onclick="checkout()">Secure Checkout <i class="fa-solid fa-lock"></i></button>
    </div>
</aside>

<script>
const CATEGORIES = [
    {id:"phones",name:"Smartphones",icon:"fa-mobile-screen-button",count:24},
    {id:"laptops",name:"Laptops",icon:"fa-laptop",count:18},
    {id:"clothing",name:"Clothing",icon:"fa-shirt",count:42},
    {id:"audio",name:"Audio",icon:"fa-headphones",count:31},
    {id:"footwear",name:"Footwear",icon:"fa-shoe-prints",count:27},
    {id:"accessories",name:"Accessories",icon:"fa-watch",count:39}
];

const PRODUCTS = [
 {id:1,title:"iPhone 14 Pro Max",price:1099,old:1199,rating:5,reviews:128,badge:"New",category:"Smartphones",img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"},
 {id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,badge:"",category:"Laptops",img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"},
 {id:3,title:"Apple Watch Series 8",price:349,old:399,rating:5,reviews:214,badge:"Sale",category:"Accessories",img:"https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=85"},
 {id:4,title:"Nike Air Max 270",price:150,rating:4,reviews:53,badge:"",category:"Footwear",img:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"},
 {id:5,title:"Sony A7 IV Camera",price:2499,rating:5,reviews:42,badge:"New",category:"Audio",img:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"},
 {id:6,title:"Premium Fragrance",price:120,rating:5,reviews:189,badge:"",category:"Accessories",img:"https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=85"},
 {id:7,title:"Travel Backpack",price:79,old:99,rating:4,reviews:67,badge:"Sale",category:"Accessories",img:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"},
 {id:8,title:"Sony WH-1000XM5",price:399,rating:5,reviews:156,badge:"",category:"Audio",img:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"}
];

let cart = JSON.parse(localStorage.getItem("nexusCartV2") || "[]");
let wishlist = JSON.parse(localStorage.getItem("nexusWishlistV2") || "[]");

const $ = id => document.getElementById(id);
const money = n => "$" + Number(n).toLocaleString();

function escapeHTML(value){
    return String(value).replace(/[&<>"']/g, x => ({
        "&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#039;"
    }[x]));
}

function save(){
    localStorage.setItem("nexusCartV2",JSON.stringify(cart));
    localStorage.setItem("nexusWishlistV2",JSON.stringify(wishlist));
}

function renderCategories(){
    $("categoryGrid").innerHTML = CATEGORIES.map(c => `
        <div class="category" onclick="filterByCategory('${c.name}')">
            <div class="category-icon"><i class="fa-solid ${c.icon}"></i></div>
            <h3>${c.name}</h3>
            <span>${c.count} products</span>
        </div>
    `).join("");
}

function renderProducts(list=PRODUCTS){
    $("resultText").textContent = `${list.length} product${list.length===1?"":"s"}`;
    if(!list.length){
        $("productGrid").innerHTML = `<div style="grid-column:1/-1;text-align:center;padding:60px;color:#777">No products found. Try another search.</div>`;
        return;
    }

    $("productGrid").innerHTML = list.map(p => {
        const wished = wishlist.includes(p.id);
        const stars = "★".repeat(p.rating) + "☆".repeat(5-p.rating);
        return `
        <article class="product">
            <div class="product-img">
                <img src="${p.img}" alt="${escapeHTML(p.title)}" loading="lazy">
                ${p.badge ? `<span class="product-label ${p.badge==="Sale"?"sale":""}">${p.badge}</span>` : ""}
                <button class="heart ${wished?"active":""}" onclick="toggleWishlist(${p.id})" aria-label="Wishlist">
                    <i class="${wished?"fa-solid":"fa-regular"} fa-heart"></i>
                </button>
            </div>
            <div class="product-body">
                <div class="product-cat">${p.category}</div>
                <h3>${escapeHTML(p.title)}</h3>
                <div class="price-line">
                    <span class="price">${money(p.price)}</span>
                    ${p.old ? `<span class="old">${money(p.old)}</span>` : ""}
                </div>
                <div class="rating-line">
                    <span class="stars">${stars}</span>
                    <span>${p.rating}.0 (${p.reviews})</span>
                </div>
                <button class="add" onclick="addToCart(${p.id},this)">
                    <i class="fa-solid fa-plus"></i> Add to cart
                </button>
            </div>
        </article>`;
    }).join("");
}

function addToCart(id,button){
    const item = cart.find(x=>x.id===id);
    if(item) item.qty++;
    else cart.push({id,qty:1});
    save();
    updateCart();

    if(button){
        const old = button.innerHTML;
        button.classList.add("added");
        button.innerHTML = '<i class="fa-solid fa-check"></i> Added';
        setTimeout(()=>{button.classList.remove("added");button.innerHTML=old},1000);
    }
}

function addDeal(){
    const item = cart.find(x=>x.id===999);
    if(item) item.qty++;
    else cart.push({id:999,qty:1});
    save();
    updateCart();
    openCart();
}

function toggleWishlist(id){
    if(wishlist.includes(id)) wishlist=wishlist.filter(x=>x!==id);
    else wishlist.push(id);
    save();
    renderProducts(getFilteredProducts());
}

function getFilteredProducts(){
    const q=$("searchInput").value.trim().toLowerCase();
    if(!q) return PRODUCTS;
    return PRODUCTS.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
    );
}

function filterByCategory(category){
    $("searchInput").value=category;
    renderProducts(getFilteredProducts());
    scrollToProducts();
}

function updateCart(){
    const count=cart.reduce((s,x)=>s+x.qty,0);
    $("cartCount").textContent=count;
    renderCart();
}

function getCartProduct(item){
    if(item.id===999){
        return {
            id:999,title:"Smart Watch — Flash Deal",price:249,
            img:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=300&q=80"
        };
    }
    return PRODUCTS.find(p=>p.id===item.id);
}

function renderCart(){
    if(!cart.length){
        $("cartList").innerHTML='<div class="empty"><i class="fa-solid fa-bag-shopping" style="font-size:35px;margin-bottom:12px"></i><br>Your cart is empty.</div>';
        $("total").textContent="$0";
        return;
    }

    let total=0;
    $("cartList").innerHTML=cart.map(item=>{
        const p=getCartProduct(item);
        if(!p)return "";
        total+=p.price*item.qty;
        return `
        <div class="cart-row">
            <img src="${p.img}" alt="${escapeHTML(p.title)}">
            <div class="cart-info">
                <strong>${escapeHTML(p.title)}</strong>
                <span>${money(p.price)} × ${item.qty}</span>
            </div>
            <button class="remove" onclick="removeFromCart(${item.id})"><i class="fa-solid fa-trash"></i></button>
        </div>`;
    }).join("");
    $("total").textContent=money(total);
}

function removeFromCart(id){
    cart=cart.filter(x=>x.id!==id);
    save();
    updateCart();
}

function openCart(){
    $("drawer").classList.add("open");
    $("overlay").classList.add("open");
    $("drawer").setAttribute("aria-hidden","false");
}

function closeCart(){
    $("drawer").classList.remove("open");
    $("overlay").classList.remove("open");
    $("drawer").setAttribute("aria-hidden","true");
}

function checkout(){
    if(!cart.length){alert("Your cart is empty.");return}
    alert("Checkout demo is ready to connect to your payment backend.");
}

function accountMessage(){
    alert("Account login can be connected to your authentication system.");
}

function wishlistMessage(){
    alert(`You have ${wishlist.length} item${wishlist.length===1?"":"s"} in your wishlist.`);
}

function scrollToProducts(){
    $("products").scrollIntoView({behavior:"smooth"});
}

function scrollToDeals(){
    $("deals").scrollIntoView({behavior:"smooth"});
}

$("searchInput").addEventListener("input",()=>renderProducts(getFilteredProducts()));
$("cartBtn").addEventListener("click",openCart);
$("closeCart").addEventListener("click",closeCart);
$("overlay").addEventListener("click",closeCart);
document.addEventListener("keydown",e=>{if(e.key==="Escape")closeCart()});

$("newsForm").addEventListener("submit",e=>{
    e.preventDefault();
    const email=$("email").value.trim();
    $("newsMsg").textContent="✓ Thanks for subscribing! Watch your inbox for the latest drops.";
    $("newsMsg").style.color="var(--green)";
    $("email").value="";
});

const deadlineKey="nexusDealDeadlineV2";
let deadline=Number(localStorage.getItem(deadlineKey));
if(!deadline || deadline<Date.now()){
    deadline=Date.now()+36*60*60*1000;
    localStorage.setItem(deadlineKey,deadline);
}
function timer(){
    const d=Math.max(0,deadline-Date.now());
    const days=Math.floor(d/86400000);
    const hours=Math.floor(d%86400000/3600000);
    const mins=Math.floor(d%3600000/60000);
    const secs=Math.floor(d%60000/1000);
    $("days").textContent=String(days).padStart(2,"0");
    $("hours").textContent=String(hours).padStart(2,"0");
    $("mins").textContent=String(mins).padStart(2,"0");
    $("secs").textContent=String(secs).padStart(2,"0");
}
setInterval(timer,1000);
timer();

$("year").textContent=new Date().getFullYear();
renderCategories();
renderProducts();
updateCart();
</script>

</body>
</html>
