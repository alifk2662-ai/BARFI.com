<!DOCTYPE html>
<html lang="bn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BARFI | আপনার প্রিয় ব্লগ</title>
    <style>
        /* CSS for BARFI.com */
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9; /* Light white background */
            color: #333;
        }

        /* Top Header */
        header {
            background-color: #ffffff;
            border-bottom: 4px solid #006400; /* Deep Green Border */
            padding: 30px 0;
            text-align: center;
        }

        .logo {
            font-size: 50px;
            font-weight: bold;
            color: #006400; /* Dark Green */
            text-decoration: none;
            letter-spacing: 2px;
        }

        .tagline {
            color: #555;
            font-size: 14px;
            margin-top: 5px;
        }

        /* Navigation Menu */
        nav {
            background-color: #006400; /* Pure Green */
            text-align: center;
            padding: 12px 0;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        nav a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-weight: bold;
            font-size: 16px;
        }

        nav a:hover {
            background-color: white;
            color: #006400;
            border-radius: 4px;
        }

        /* Main Container */
        .container {
            width: 85%;
            margin: 30px auto;
            display: flex;
            flex-wrap: wrap;
            gap: 25px;
        }

        /* Left Side Articles */
        .main-content {
            flex: 2;
            min-width: 300px;
        }

        .post-card {
            background: white;
            border: 1px solid #ddd;
            border-radius: 10px;
            overflow: hidden;
            margin-bottom: 25px;
            transition: 0.3s;
        }

        .post-card:hover {
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        .post-image {
            width: 100%;
            height: 300px;
            background-color: #eee;
            object-fit: cover;
        }

        .post-info {
            padding: 20px;
        }

        .category-tag {
            background: #006400;
            color: white;
            padding: 5px 12px;
            font-size: 12px;
            text-transform: uppercase;
            border-radius: 3px;
        }

        .post-title {
            font-size: 24px;
            margin: 15px 0;
            color: #006400;
        }

        .post-excerpt {
            line-height: 1.6;
            color: #666;
        }

        /* Right Side Sidebar */
        .sidebar {
            flex: 1;
            min-width: 280px;
        }

        .widget {
            background: white;
            padding: 20px;
            border-radius: 10px;
            border: 1px solid #ddd;
            margin-bottom: 25px;
        }

        .widget-title {
            color: #006400;
            border-bottom: 2px solid #006400;
            padding-bottom: 10px;
            margin-bottom: 15px;
            font-size: 18px;
        }

        .search-box {
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Footer */
        footer {
            background-color: #004d00;
            color: white;
            text-align: center;
            padding: 40px 0;
            margin-top: 50px;
        }

        footer p { margin: 5px 0; }

        /* Responsive */
        @media (max-width: 768px) {
            .container { width: 95%; flex-direction: column; }
        }
    </style>
</head>
<body>

    <header>
        <a href="#" class="logo">BARFI</a>
        <div class="tagline">সত্য ও সুন্দরের পথে...</div>
    </header>

    <nav>
        <a href="#">হোম</a>
        <a href="#">বিভাগ</a>
        <a href="#">গ্যালারি</a>
        <a href="#">আমাদের কথা</a>
        <a href="#">যোগাযোগ</a>
    </nav>

    <div class="container">
        
        <div class="main-content">
            <div class="post-card">
                <img src="https://images.unsplash.com/photo-1542831371-29b0f74f9713" class="post-image" alt="Article Image">
                <div class="post-info">
                    <span class="category-tag">শিক্ষা ও ক্যারিয়ার</span>
                    <h2 class="post-title">জীবনের লক্ষ্য স্থির করবেন যেভাবে</h2>
                    <p class="post-excerpt">জীবনের প্রতিটি পদক্ষেপে লক্ষ্য থাকা অত্যন্ত জরুরি। লক্ষ্যহীন মানুষ ঠিকানাহীন পথিকের মতো। আজ আমরা আলোচনা করব কীভাবে সঠিক লক্ষ্য নির্ধারণ করবেন...</p>
                    <a href="#" style="color: #006400; font-weight: bold; text-decoration: none;">আরও পড়ুন →</a>
                </div>
            </div>

            <div class="post-card">
                <img src="https://images.unsplash.com/photo-1490730141103-6cac27aaab94" class="post-image" alt="Article Image">
                <div class="post-info">
                    <span class="category-tag">ভ্রমণ</span>
                    <h2 class="post-title">সবুজ পাহাড়ের দেশ: একটি ভ্রমণ কাহিনী</h2>
                    <p class="post-excerpt">প্রকৃতির কাছাকাছি যেতে কার না ভালো লাগে। বারফি’র আজকের আয়োজনে আমরা নিয়ে যাব আপনাকে সবুজ পাহাড়ের রহস্যময় এক দেশে...</p>
                    <a href="#" style="color: #006400; font-weight: bold; text-decoration: none;">আরও পড়ুন →</a>
                </div>
            </div>
        </div>

        <div class="sidebar">
            <div class="widget">
                <h3 class="widget-title">অনুসন্ধান করুন</h3>
                <input type="text" class="search-box" placeholder="এখানে খুঁজুন...">
            </div>

            <div class="widget">
                <h3 class="widget-title">জনপ্রিয় বিভাগ</h3>
                <ul style="list-style: none; padding: 0; line-height: 2;">
                    <li><a href="#" style="text-decoration:none; color:#333;">• কুরআনের আলো</a></li>
                    <li><a href="#" style="text-decoration:none; color:#333;">• হাদিসের বাণী</a></li>
                    <li><a href="#" style="text-decoration:none; color:#333;">• ইসলামিক ইতিহাস</a></li>
                    <li><a href="#" style="text-decoration:none; color:#333;">• সাহিত্য ও কবিতা</a></li>
                </ul>
            </div>

            <div class="widget" style="background-color: #006400; color: white;">
                <h3 class="widget-title" style="color: white; border-bottom: 2px solid white;">নিউজলেটার</h3>
                <p style="font-size: 13px;">সব নতুন আপডেট পেতে আপনার ইমেইল দিয়ে সাবস্ক্রাইব করুন।</p>
                <input type="email" placeholder="আপনার ইমেইল" style="width: 90%; padding: 10px; border-radius: 5px; border: none;">
                <button style="margin-top: 10px; width: 100%; padding: 10px; background: white; color: #006400; border: none; font-weight: bold; border-radius: 5px; cursor: pointer;">সাবস্ক্রাইব</button>
            </div>
        </div>

    </div>

    <footer>
        <h2 style="margin: 0;">BARFI</h2>
        <p>সত্য ও সুন্দরের সন্ধানে আমাদের এই ক্ষুদ্র প্রচেষ্টা।</p>
        <div style="margin: 20px 0;">
            <a href="#" style="color: white; margin: 0 10px;">ফেসবুক</a> | 
            <a href="#" style="color: white; margin: 0 10px;">টুইটার</a> | 
            <a href="#" style="color: white; margin: 0 10px;">ইউটিউব</a>
        </div>
        <p>&copy; ২০২৬ BARFI.com | সর্বস্বত্ব সংরক্ষিত।</p>
    </footer>

</body>
</html>
