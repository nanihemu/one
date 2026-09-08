display: grid;
                place-items: center;
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 14px;
            }
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }
            .search-wrap {
                display: none;
            }
            .hero h1 {
                font-size: 28px;
            }
            .hero p {
                font-size: 15px;
            }
        }

        @media (max-width: 480px) {
            .products-grid {
                grid-template-columns: 1fr;
            }
            .categories-grid {
                grid-template-columns: 1fr;
            }
            .footer-grid {
                grid-template-columns: 1fr;
            }
            .hero {
                margin: 12px 12px 0;
                border-radius: var(--radius-sm);
            }
        }
    </style>
</head>
<body>

    <!-- HEADER -->
    <header>
        <div class="container">
            <div class="header-inner">
                <a href="#" class="brand">
                    <i class="fa-solid fa-cube"></i>
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>

                <nav class="main-nav">
                    <ul>
                        <li><a href="#" class="active"><i class="fa-solid fa-house"></i> Home</a></li>
                        <li><a href="#categories"><i class="fa-solid fa-grid-2"></i> Categories</a></li>
                        <li><a href="#products"><i class="fa-solid fa-bag-shopping"></i> Products</a></li>
                        <li><a href="#deals"><i class="fa-solid fa-fire"></i> Deals</a></li>
                    </ul>
                </nav>

                <div class="search-wrap">
                    <input type="text" placeholder="Search products..." id="searchInput" />
                    <button type="button" aria-label="Search"><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>

                <div class="header-actions">
                    <button class="icon-btn" aria-label="Wishlist">
                        <i class="fa-regular fa-heart"></i>
                    </button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" aria-label="Shopping Cart">
                            <i class="fa-solid fa-cart-shopping"></i>
                            <span class="cart-count" id="cartCount">0</span>
                        </button>
                    </div>
                    <button class="icon-btn" aria-label="User Account">
                        <i class="fa-regular fa-user"></i>
                    </button>
                    <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle navigation">
                        <i class="fa-solid fa-bars"></i>
                    </button>
                </div>
            </div>

            <div id="mobileMenu">
                <ul>
                    <li><a href="#"><i class="fa-solid fa-house"></i> Home</a></li>
                    <li><a href="#categories"><i class="fa-solid fa-list"></i> Categories</a></li>
                    <li><a href="#products"><i class="fa-solid fa-bag-shopping"></i> Products</a></li>
                    <li><a href="#deals"><i class="fa-solid fa-fire"></i> Deals</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- HERO SECTION -->
    <section class="hero">
        <div class="container">
            <span class="badge">New Season Arrival</span>
            <h1>Elevate Your Everyday Lifestyle</h1>
            <p>Explore curated minimalism and contemporary fashion designed to seamlessly blend comfort with timeless aesthetics.</p>
            <div class="actions">
                <a href="#products" class="btn btn-primary">Shop Collection <i class="fa-solid fa-arrow-right"></i></a>
                <a href="#deals" class="btn btn-ghost">View Limited Deals</a>
            </div>
        </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories">
        <div class="container">
            <div class="section-header">
                <div class="title-group">
                    <h2>Featured Categories</h2>
                    <p>Find exactly what you are looking for</p>
                </div>
                <a href="#" class="view-all">Browse All <i class="fa-solid fa-chevron-right"></i></a>
            </div>

            <div class="categories-grid">
                <div class="cat-card">
                    <div class="icon-wrap"><i class="fa-solid fa-laptop"></i></div>
                    <h4>Electronics</h4>
                    <p class="count">128 Items</p>
                </div>
                <div class="cat-card">
                    <div class="icon-wrap"><i class="fa-solid fa-shirt"></i></div>
                    <h4>Fashion</h4>
                    <p class="count">340 Items</p>
                </div>
                <div class="cat-card">
                    <div class="icon-wrap"><i class="fa-solid fa-couch"></i></div>
                    <h4>Home Decor</h4>
                    <p class="count">94 Items</p>
                </div>
                <div class="cat-card">
                    <div class="icon-wrap"><i class="fa-solid fa-spray-can-sparkles"></i></div>
                    <h4>Beauty</h4>
                    <p class="count">210 Items</p>
                </div>
                <div class="cat-card">
                    <div class="icon-wrap"><i class="fa-solid fa-dumbbell"></i></div>
                    <h4>Sports</h4>
                    <p class="count">86 Items</p>
                </div>
                <div class="cat-card">
                    <div class="icon-wrap"><i class="fa-solid fa-headphones"></i></div>
                    <h4>Audio</h4>
                    <p class="count">115 Items</p>
                </div>
            </div>
        </div>
    </section>

    <!-- PRODUCTS SECTION -->
    <section class="section" id="products">
        <div class="container">
            <div class="section-header">
                <div class="title-group">
                    <h2>Trending Products</h2>
                    <p>Top picks recommended by our customers</p>
                </div>
                <a href="#" class="view-all">View Store <i class="fa-solid fa-chevron-right"></i></a>
            </div>

            <div class="products-grid">
                <!-- Product 1 -->
                <div class="product-card">
                    <div class="img-wrap">
                        <span class="badge">Hot</span>
                        <button class="wish-btn" aria-label="Add to Wishlist"><i class="fa-regular fa-heart"></i></button>
                        <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80" alt="Wireless Headphones">
                    </div>
                    <div class="body">
                        <span class="category-tag">Audio</span>
                        <h5>Noise-Cancelling Wireless Headphones</h5>
                        <div class="rating">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <span>(142)</span>
                        </div>
                        <div class="price-row">
                            <span class="price">$249.00</span>
                            <span class="old-price">$299.00</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>

                <!-- Product 2 -->
                <div class="product-card">
                    <div class="img-wrap">
                        <button class="wish-btn" aria-label="Add to Wishlist"><i class="fa-regular fa-heart"></i></button>
                        <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80" alt="Minimal Smart Watch">
                    </div>
                    <div class="body">
                        <span class="category-tag">Electronics</span>
                        <h5>Minimalist Smart Watch V2</h5>
                        <div class="rating">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i>
                            <span>(89)</span>
                        </div>
                        <div class="price-row">
                            <span class="price">$180.00</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>

                <!-- Product 3 -->
                <div class="product-card">
                    <div class="img-wrap">
                        <span class="badge sale">Sale 20%</span>
                        <button class="wish-btn" aria-label="Add to Wishlist"><i class="fa-regular fa-heart"></i></button>
                        <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80" alt="Running Shoes">
                    </div>
                    <div class="body">
                        <span class="category-tag">Fashion</span>
                        <h5>Pro Performance Running Shoes</h5>
                        <div class="rating">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <span>(210)</span>
                        </div>
                        <div class="price-row">
                            <span class="price">$119.00</span>
                            <span class="old-price">$149.00</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>

                <!-- Product 4 -->
                <div class="product-card">
                    <div class="img-wrap">
                        <button class="wish-btn" aria-label="Add to Wishlist"><i class="fa-regular fa-heart"></i></button>
                        <img src="https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=600&q=80" alt="Ceramic Mug Set">
                    </div>
                    <div class="body">
                        <span class="category-tag">Home Decor</span>
                        <h5>Artisan Ceramic Mug Set</h5>
                        <div class="rating">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i>
                            <span>(45)</span>
                        </div>
                        <div class="price-row">
                            <span class="price">$38.00</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- DEAL OF THE DAY -->
    <section class="section" id="deals">
        <div class="container">
            <div class="deal-wrap">
                <div class="deal-img">
                    <img src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=80" alt="Special Deal Watch">
                </div>
                <div class="deal-content">
                    <span class="tag">Deal Of The Week</span>
                    <h3>Premium Smart Fitness Tracker</h3>
                    <p class="desc">Track your health, heart rate, and workouts with high precision. Long-lasting 14-day battery life and water resistance up to 50 meters.</p>
                    <div class="price-big">
                        $89.00 <span class="old">$149.00</span>
                    </div>
                    <p class="stock">Hurry, only <strong>12 items</strong> remaining in stock!</p>

                    <div class="timer-grid">
                        <div class="timer-box">
                            <div class="num" id="t-hours">08</div>
                            <div class="label">Hours</div>
                        </div>
                        <div class="timer-box">
                            <div class="num" id="t-mins">42</div>
                            <div class="label">Mins</div>
                        </div>
                        <div class="timer-box">
                            <div class="num" id="t-secs">15</div>
                            <div class="label">Secs</div>
                        </div>
                    </div>

                    <div>
                        <button class="btn btn-primary"><i class="fa-solid fa-bolt"></i> Claim Offer Now</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section">
        <div class="container">
            <div class="section-header">
                <div class="title-group">
                    <h2>Customer Experience</h2>
                    <p>What shoppers are saying about us</p>
                </div>
            </div>

            <div class="testimonials-scroll">
                <div class="testimonial-card">
                    <div class="stars">★★★★★</div>
                    <blockquote>"Extremely fast shipping! The wireless headphones exceeded my expectations in sound clarity."</blockquote>
                    <div class="author">
                        <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80" alt="Sarah L." class="avatar">
                        <div>
                            <div class="name">Sarah Jenkins</div>
                            <div class="role">Verified Buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial-card">
                    <div class="stars">★★★★★</div>
                    <blockquote>"The minimalism and smooth user interface made finding home decor pieces effortless."</blockquote>
                    <div class="author">
                        <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80" alt="David M." class="avatar">
                        <div>
                            <div class="name">David Miller</div>
                            <div class="role">Verified Buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial-card">
                    <div class="stars">★★★★☆</div>
                    <blockquote>"Great customer support when I needed an exchange on shoe sizes. Smooth process."</blockquote>
                    <div class="author">
                        <img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80" alt="Elena R." class="avatar">
                        <div>
                            <div class="name">Elena Rostova</div>
                            <div class="role">Verified Buyer</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section">
        <div class="container">
            <div class="newsletter-wrap">
                <div class="text">
                    <h3>Join Our Newsletter</h3>
                    <p>Get $15 off your first order plus secret drop alerts.</p>
                </div>
                <form id="newsletterForm">
                    <input type="email" placeholder="Enter your email address..." required id="newsletterEmail" />
                    <button type="submit" class="btn">Subscribe</button>
                    <div id="newsletterMsg"></div>
                </form>
            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <a href="#" class="brand">
                        <i class="fa-solid fa-cube"></i>
                        <span>Nexus<span class="accent">Shop</span></span>
                    </a>
                    <p>Premium quality goods curated for modern living. Designed for clarity, performance, and luxury.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fa-brands fa-x-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a>
                    </div>
                </div>

                <div class="col">
                    <h5>Shop</h5>
                    <ul>
                        <li><a href="#">Electronics</a></li>
                        <li><a href="#">Fashion</a></li>
                        <li><a href="#">Home Decor</a></li>
                        <li><a href="#">New Arrivals</a></li>
                    </ul>
                </div>

                <div class="col">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Order Tracking</a></li>
                        <li><a href="#">Returns & Refunds</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>

                <div class="col">
                    <h5>Company</h5>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                    </ul>
                </div>
            </div>

            <div class="footer-bottom">
                <p>&copy; 2026 NexusShop Inc. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <!-- JAVASCRIPT -->
    <script>
        // Mobile Navigation Toggle
        const mobileToggle = id('mobileToggle');
        const mobileMenu = id('mobileMenu');

        mobileToggle.addEventListener('click', () => {
            const isVisible = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isVisible ? 'none' : 'block';
        });

        // Cart Functionality
        let cartCount = 0;
        const cartCountEl = id('cartCount');
        const addButtons = document.querySelectorAll('.add-btn');

        addButtons.forEach(btn => {
            btn.addEventListener('click', function() {
                if (!this.classList.contains('added')) {
                    cartCount++;
                    cartCountEl.textContent = cartCount;
                    this.classList.add('added');
                    this.innerHTML = '<i class="fa-solid fa-check"></i> Added';
                }
            });
        });

        // Wishlist Heart Toggle
        const wishButtons = document.querySelectorAll('.wish-btn');
        wishButtons.forEach(btn => {
            btn.addEventListener('click', function() {
                const icon = this.querySelector('i');
                if (icon.classList.contains('fa-regular')) {
                    icon.classList.remove('fa-regular');
                    icon.classList.add('fa-solid');
                    icon.style.color = '#e07a5f';
                } else {
                    icon.classList.remove('fa-solid');
                    icon.classList.add('fa-regular');
                    icon.style.color = '';
                }
            });
        });

        // Newsletter Form Handling
        const newsletterForm = id('newsletterForm');
        const newsletterMsg = id('newsletterMsg');

        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            newsletterMsg.textContent = "Thank you for subscribing! Check your inbox for your discount code.";
            newsletterMsg.style.color = "#2a9d8f";
            id('newsletterEmail').value = '';
        });

        // Countdown Timer
        function startTimer() {
            let h = 8, m = 42, s = 15;
            const hEl = id('t-hours');
            const mEl = id('t-mins');
            const sEl = id('t-secs');

            setInterval(() => {
                if (s > 0) {
                    s--;
                } else {
                    s = 59;
                    if (m > 0) {
                        m--;
                    } else {
                        m = 59;
                        if (h > 0) h--;
                    }
                }
                hEl.textContent = String(h).padStart(2, '0');
                mEl.textContent = String(m).padStart(2, '0');
                sEl.textContent = String(s).padStart(2, '0');
            }, 1000);
        }

        function id(name) {
            return document.getElementById(name);
        }

        startTimer();
    </script>
</body>
</html>
