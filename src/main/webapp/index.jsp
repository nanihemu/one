<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Nexus · blue horizon</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Instrument+Serif:ital@0;1&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #f0f4fa;
      --card: #ffffff;
      --primary: #0b1a33;
      --primary-light: #1a2d4a;
      --accent: #2a6f97;
      --accent-light: #c9ddec;
      --accent-dark: #1d4f6e;
      --muted: #4a5d72;
      --muted-light: #8a9bae;
      --surface: #e5ecf3;
      --success: #2a9d8f;
      --warning: #e9c46a;
      --radius: 24px;
      --radius-sm: 12px;
      --shadow: 0 8px 30px rgba(10, 30, 60, 0.06);
      --shadow-hover: 0 20px 50px rgba(10, 30, 60, 0.10);
      --transition: 0.25s cubic-bezier(0.22, 1, 0.36, 1);
      --container: 1280px;
    }

    html { scroll-behavior: smooth; }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    button { cursor: pointer; font: inherit; border: none; background: none; color: inherit; }
    input { font: inherit; }

    .container {
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 32px;
    }

    /* ---- header : blue-tinted glass ---- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(240, 244, 250, 0.78);
      backdrop-filter: blur(18px);
      -webkit-backdrop-filter: blur(18px);
      border-bottom: 1px solid rgba(10, 30, 60, 0.04);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 14px 0;
      min-height: 72px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.3px;
      color: var(--primary);
    }
    .brand .accent {
      color: var(--accent);
      font-weight: 700;
    }
    .brand i {
      font-size: 26px;
      color: var(--accent);
    }

    nav.main-nav ul {
      display: flex;
      gap: 2px;
      list-style: none;
    }
    nav.main-nav ul li a {
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 8px 20px;
      border-radius: 60px;
      font-weight: 500;
      font-size: 14px;
      color: var(--muted);
      transition: var(--transition);
    }
    nav.main-nav ul li a:hover,
    nav.main-nav ul li a.active {
      background: var(--accent-light);
      color: var(--primary);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .header-actions .icon-btn {
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 18px;
      color: var(--muted);
      transition: var(--transition);
    }
    .header-actions .icon-btn:hover {
      background: var(--accent-light);
      color: var(--primary);
    }

    .cart-wrap { position: relative; }
    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--accent);
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #f0f4fa;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 60px;
      padding: 0 16px 0 22px;
      border: 2px solid transparent;
      transition: var(--transition);
      min-width: 200px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 6px rgba(42, 111, 151, 0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 10px 0;
      font-size: 14px;
      color: var(--primary);
    }
    .search-wrap input::placeholder { color: var(--muted-light); }
    .search-wrap button {
      padding: 8px 0 8px 10px;
      color: var(--muted);
      font-size: 16px;
    }
    .search-wrap button:hover { color: var(--accent); }

    .mobile-toggle {
      display: none;
      width: 44px;
      height: 44px;
      border-radius: 50%;
      font-size: 20px;
      background: var(--surface);
      color: var(--primary);
    }
    #mobileMenu {
      display: none;
      background: #fff;
      border-top: 1px solid rgba(10,30,60,0.04);
      padding: 12px 0 20px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 2px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 14px;
      padding: 12px 24px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--primary);
    }
    #mobileMenu ul li a:hover { background: var(--accent-light); }
    #mobileMenu ul li a i { width: 24px; color: var(--muted); }

    /* ---- buttons : blue accent ---- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 34px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      transition: var(--transition);
      border: 2px solid transparent;
    }
    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-3px);
      box-shadow: 0 16px 32px rgba(42, 111, 151, 0.25);
    }
    .btn-secondary {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }
    .btn-secondary:hover {
      background: var(--primary-light);
      transform: translateY(-3px);
      box-shadow: 0 16px 32px rgba(11, 26, 51, 0.15);
    }
    .btn-outline {
      background: transparent;
      color: var(--primary);
      border-color: rgba(11,26,51,0.12);
    }
    .btn-outline:hover {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }
    .btn-ghost {
      background: rgba(255,255,255,0.10);
      color: #fff;
      border-color: rgba(255,255,255,0.18);
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.22);
    }
    .btn-sm { padding: 10px 24px; font-size: 13px; }

    /* ---- hero : deep blue gradient ---- */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 480px;
      padding: 60px 0;
      border-radius: var(--radius);
      overflow: hidden;
      margin: 20px 32px 0;
      background: linear-gradient(160deg, #0b1a33 0%, #1a3a5c 100%);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.20;
      z-index: 0;
    }
    .hero .container { position: relative; z-index: 1; }
    .hero .badge {
      display: inline-block;
      background: rgba(42,111,151,0.20);
      color: #b6d6ea;
      padding: 6px 22px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 13px;
      letter-spacing: 0.2px;
      margin-bottom: 18px;
      backdrop-filter: blur(6px);
    }
    .hero h1 {
      font-family: 'Instrument Serif', serif;
      font-size: 56px;
      font-weight: 400;
      color: #fff;
      line-height: 1.08;
      max-width: 640px;
      margin-bottom: 14px;
    }
    .hero p {
      color: rgba(255,255,255,0.78);
      font-size: 18px;
      max-width: 460px;
      margin-bottom: 30px;
      line-height: 1.6;
      font-weight: 400;
    }
    .hero .actions { display: flex; gap: 14px; flex-wrap: wrap; }

    /* ---- sections ---- */
    .section { padding: 56px 0; }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 34px;
      flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-size: 28px;
      font-weight: 700;
      letter-spacing: -0.3px;
      color: var(--primary);
    }
    .section-header .title-group p {
      color: var(--muted);
      margin-top: 4px;
      font-size: 15px;
    }
    .section-header .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 14px;
      transition: var(--transition);
      border-bottom: 2px solid transparent;
      padding-bottom: 2px;
    }
    .section-header .view-all:hover {
      gap: 14px;
      border-bottom-color: var(--accent);
    }

    /* categories : blue-tinted tiles */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }
    .cat-card {
      background: var(--card);
      border-radius: var(--radius);
      padding: 28px 16px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border: 2px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .cat-card .icon-wrap {
      width: 64px;
      height: 64px;
      border-radius: 50%;
      background: var(--accent-light);
      display: grid;
      place-items: center;
      margin: 0 auto 14px;
      font-size: 28px;
      color: var(--accent);
      transition: var(--transition);
    }
    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: #fff;
    }
    .cat-card h4 { font-size: 15px; font-weight: 600; }
    .cat-card .count { font-size: 13px; color: var(--muted); margin-top: 4px; }

    /* products : clean with blue accents */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product-card {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 2px solid transparent;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface);
      aspect-ratio: 1/1;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img { transform: scale(1.04); }
    .product-card .badge {
      position: absolute;
      top: 16px;
      left: 16px;
      background: var(--accent);
      color: #fff;
      padding: 4px 16px;
      border-radius: 60px;
      font-size: 11px;
      font-weight: 700;
    }
    .product-card .badge.sale {
      background: var(--warning);
      color: var(--primary);
    }
    .product-card .wish-btn {
      position: absolute;
      top: 16px;
      right: 16px;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: rgba(255,255,255,0.88);
      backdrop-filter: blur(4px);
      display: grid;
      place-items: center;
      font-size: 16px;
      color: var(--muted);
      transition: var(--transition);
    }
    .product-card .wish-btn:hover {
      background: #fff;
      color: var(--accent);
      transform: scale(1.08);
    }
    .product-card .body {
      padding: 18px 20px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    .product-card .body .category-tag {
      font-size: 12px;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.4px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 16px;
      font-weight: 600;
      line-height: 1.3;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 4px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 18px;
      color: var(--primary);
    }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 14px;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 13px;
      color: #f5a623;
    }
    .product-card .body .rating span { color: var(--muted); }
    .product-card .footer {
      padding: 0 20px 20px;
      display: flex;
      gap: 10px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 12px;
      border-radius: var(--radius-sm);
      background: var(--primary);
      color: #fff;
      font-weight: 600;
      font-size: 14px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent);
      transform: scale(1.02);
    }
    .product-card .footer .add-btn.added { background: var(--success); }

    /* deal : blue-infused */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
    }
    .deal-wrap .deal-img {
      flex: 0 0 48%;
      background: var(--surface);
      min-height: 280px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 44px 48px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      display: inline-block;
      background: var(--warning);
      color: var(--primary);
      padding: 4px 18px;
      border-radius: 60px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      align-self: flex-start;
      margin-bottom: 14px;
    }
    .deal-wrap .deal-content h3 {
      font-family: 'Instrument Serif', serif;
      font-size: 34px;
      font-weight: 400;
      margin-bottom: 6px;
      color: var(--primary);
    }
    .deal-wrap .deal-content .desc {
      color: var(--muted);
      margin-bottom: 16px;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 36px;
      font-weight: 800;
      color: var(--accent);
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 20px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 12px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 14px;
      color: var(--muted);
      margin: 4px 0 16px;
    }
    .deal-wrap .deal-content .stock strong { color: var(--accent); }
    .timer-grid {
      display: flex;
      gap: 14px;
      margin: 16px 0 22px;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 10px 20px;
      border-radius: var(--radius-sm);
      min-width: 72px;
      text-align: center;
    }
    .timer-box .num {
      font-size: 28px;
      font-weight: 700;
      line-height: 1.2;
    }
    .timer-box .label {
      font-size: 11px;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.4px;
    }

    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent-light);
      border-radius: 60px;
    }
    .testimonial-card {
      flex: 0 0 360px;
      background: var(--card);
      border-radius: var(--radius);
      padding: 28px 32px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      transition: var(--transition);
    }
    .testimonial-card:hover { box-shadow: var(--shadow-hover); }
    .testimonial-card .stars {
      color: #f5a623;
      font-size: 16px;
      letter-spacing: 2px;
      margin-bottom: 12px;
    }
    .testimonial-card blockquote {
      font-size: 15px;
      line-height: 1.6;
      color: var(--primary);
      margin-bottom: 16px;
      font-style: italic;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .author .avatar {
      width: 48px;
      height: 48px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface);
    }
    .testimonial-card .author .name { font-weight: 600; font-size: 14px; }
    .testimonial-card .author .role { font-size: 13px; color: var(--muted); }

    /* newsletter : deep blue */
    .newsletter-wrap {
      background: linear-gradient(160deg, var(--primary) 0%, var(--primary-light) 100%);
      border-radius: var(--radius);
      padding: 52px 64px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 32px;
      flex-wrap: wrap;
    }
    .newsletter-wrap .text h3 {
      font-family: 'Instrument Serif', serif;
      font-size: 30px;
      font-weight: 400;
      margin-bottom: 4px;
    }
    .newsletter-wrap .text p { opacity: 0.7; font-size: 15px; }
    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 480px;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 200px;
      padding: 16px 24px;
      border-radius: 60px;
      border: 0;
      font-size: 15px;
      background: rgba(255,255,255,0.06);
      color: #fff;
      transition: var(--transition);
      outline: 2px solid transparent;
    }
    .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.4); }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255,255,255,0.12);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      padding: 16px 38px;
    }
    .newsletter-wrap form .btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
    }

    /* footer */
    footer {
      margin-top: 16px;
      padding: 48px 0 28px;
      border-top: 1px solid rgba(10,30,60,0.04);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2.2fr 1fr 1fr 1fr;
      gap: 44px;
      margin-bottom: 32px;
    }
    .footer-grid .brand-col .brand {
      font-size: 22px;
      margin-bottom: 10px;
    }
    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 14px;
      max-width: 280px;
      line-height: 1.6;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 12px;
      margin-top: 16px;
    }
    .footer-grid .brand-col .socials a {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      font-size: 16px;
    }
    .footer-grid .brand-col .socials a:hover {
      background: var(--accent);
      color: #fff;
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 14px;
      margin-bottom: 14px;
      color: var(--primary);
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-grid .col ul li a {
      color: var(--muted);
      font-size: 14px;
      transition: var(--transition);
    }
    .footer-grid .col ul li a:hover { color: var(--accent); }
    .footer-bottom {
      text-align: center;
      padding-top: 20px;
      border-top: 1px solid rgba(10,30,60,0.04);
      color: var(--muted-light);
      font-size: 13px;
    }

    /* responsive */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3,1fr); }
      .categories-grid { grid-template-columns: repeat(3,1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 32px; }
    }
    @media (max-width: 992px) {
      .hero h1 { font-size: 42px; }
      .hero { min-height: 380px; margin: 16px 16px 0; padding: 40px 0; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 220px; }
      .deal-wrap .deal-content { padding: 32px 34px; }
      .newsletter-wrap { padding: 36px 32px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .search-wrap { min-width: 140px; }
    }
    @media (max-width: 768px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2,1fr); gap: 16px; }
      .categories-grid { grid-template-columns: repeat(2,1fr); gap: 14px; }
      .hero h1 { font-size: 32px; }
      .hero p { font-size: 15px; }
      .section-header h2 { font-size: 22px; }
      .deal-wrap .deal-content h3 { font-size: 26px; }
      .deal-wrap .deal-content .price-big { font-size: 30px; }
      .timer-box { min-width: 60px; padding: 8px 14px; }
      .timer-box .num { font-size: 22px; }
      .footer-grid { grid-template-columns: 1fr; gap: 24px; }
      .brand { font-size: 20px; }
      .search-wrap { min-width: 110px; padding: 0 8px 0 16px; }
      .search-wrap input { font-size: 13px; padding: 8px 0; }
      .header-actions .icon-btn { width: 38px; height: 38px; font-size: 16px; }
      .cart-count { width: 18px; height: 18px; font-size: 10px; }
      .testimonial-card { flex: 0 0 290px; }
      .hero .actions .btn { padding: 10px 22px; font-size: 14px; }
      .section { padding: 40px 0; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
      .categories-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .hero { margin: 10px 10px 0; min-height: 280px; padding: 24px 0; border-radius: var(--radius-sm); }
      .hero h1 { font-size: 26px; }
      .container { padding: 0 14px; }
      .deal-wrap .deal-content { padding: 20px 18px; }
      .deal-wrap .deal-img { flex: 0 0 150px; }
      .newsletter-wrap { padding: 24px 18px; }
      .newsletter-wrap .text h3 { font-size: 22px; }
      .product-card .body { padding: 12px 12px 8px; }
      .product-card .body h5 { font-size: 13px; }
      .product-card .body .price { font-size: 15px; }
      .product-card .footer { padding: 0 12px 12px; }
      .product-card .footer .add-btn { font-size: 12px; padding: 8px; }
      .timer-box { min-width: 48px; padding: 6px 10px; }
      .timer-box .num { font-size: 16px; }
      .timer-box .label { font-size: 9px; }
      .cat-card { padding: 16px 10px; }
    }
  </style>
</head>
<body>

  <!-- ===== HEADER ===== -->
  <header>
    <div class="container header-inner">
      <div class="brand">
        <i class="fas fa-store-alt"></i>
        <span>Nexus<span class="accent">Browse & Shop</span></span>
      </div>

      <nav class="main-nav">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-compass"></i> Home Page</a></li>
          <li><a href="#"><i class="fas fa-layer-group"></i> Shop Page</a></li>
          <li><a href="#"><i class="fas fa-tag"></i> Offers Page</a></li>
          <li><a href="#"><i class="fas fa-leaf"></i> Journal Page</a></li>
        </ul>
      </nav>

      <div class="header-actions">
        <div class="search-wrap">
          <input type="text" placeholder="Search..." aria-label="Search">
          <button aria-label="submit search"><i class="fas fa-search"></i></button>
        </div>
        <button class="icon-btn" aria-label="account"><i class="far fa-user"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" aria-label="cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">3</span>
        </div>
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      </div>
    </div>
    <!-- mobile menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-compass"></i> Home Page</a></li>
          <li><a href="#"><i class="fas fa-layer-group"></i> Shop Page</a></li>
          <li><a href="#"><i class="fas fa-tag"></i> Offers Page </a></li>
          <li><a href="#"><i class="fas fa-leaf"></i> Journal Page</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account Page</a></li>
        </ul>
      </div>
    </div>
  </header>

  <!-- ===== HERO ===== -->
  <section class="hero">
    <div class="container">
      <span class="badge"><i class="fas fa-star"></i> new arrival</span>
      <h1>Designed for life</h1>
      <p>Essential pieces, crafted with care — for the moments that matter.</p>
      <div class="actions">
        <a href="#" class="btn btn-primary"><i class="fas fa-arrow-right"></i> Discover</a>
        <a href="#" class="btn btn-ghost"><i class="fas fa-play-circle"></i> Story</a>
      </div>
    </div>
  </section>

  <!-- ===== CATEGORIES ===== -->
  <section class="section">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2>Browse</h2>
          <p>Curated collections</p>
        </div>
        <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid">
        <div class="cat-card"><div class="icon-wrap"><i class="fas fa-tshirt"></i></div><h4>Apparel</h4><span class="count">48</span></div>
        <div class="cat-card"><div class="icon-wrap"><i class="fas fa-shoe-prints"></i></div><h4>Footwear</h4><span class="count">32</span></div>
        <div class="cat-card"><div class="icon-wrap"><i class="fas fa-watch"></i></div><h4>Accessories</h4><span class="count">27</span></div>
        <div class="cat-card"><div class="icon-wrap"><i class="fas fa-laptop"></i></div><h4>Tech</h4><span class="count">19</span></div>
        <div class="cat-card"><div class="icon-wrap"><i class="fas fa-couch"></i></div><h4>Living</h4><span class="count">23
