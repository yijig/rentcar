<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            background-color: blanchedalmond;
        }

        .carInfo-container {
            display: grid;
            grid-template-areas:
                "top"
                "subscription"
                "tabs"
                "recommend";
            grid-template-columns: 800px;
            
            justify-content: center;
            align-content: center;
            background-color: #6bd32f;
        }

        .top {
            grid-area: top;
            display: flex;
            
            gap: 20px;
        }

        .car-img {
            width: 300px;
            border-radius: 8px;
        }

        .car-info {
            flex: 1;
        }

        .car-info h2 {
            margin-top: 0;
        }

        .car-info .meta {
            color: #777;
            margin: 5px 0;
        }

        .car-info .price {
            margin: 10px 0;
            font-size: 18px;
            color: #d32f2f;
        }

        .car-info .actions {
            margin-top: 15px;
        }

        .car-info .actions button {
            margin-right: 10px;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-primary {
            background: #2b80ff;
            color: white;
        }

        .btn-secondary {
            background: #eee;
        }

        .rating {
            text-align: right;
            font-size: 14px;
            color: #666;
        }

        /* 訂購須知*/
        .rent-subscription {
            grid-area: subscription;
        }

        ul.notice {
            padding-left: 20px;
            line-height: 1.7;
        }

        /* 詳細資訊跟評論 */
        .info-tabs-container {
            grid-area: tabs;
        }

        .tabs {
            margin-top: 10px;
        }

        .tabs button {
            padding: 6px 12px;
            border: 1px solid #ccc;
            background: #eee;
            cursor: pointer;
        }

        .tabs button.active {
            background: #2b80ff;
            color: white;
        }

        .tab-content {
            margin-top: 10px;
        }

        .vehicle-specs {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .vehicle-specs li {
            margin-bottom: 10px;
            font-size: 16px;
            color: #333;
        }

        .vehicle-specs li strong {
            color: #555;
        }

        /* 推薦汽車 */
        .car-recommend {
            grid-area: recommend;
            padding: 40px;
            background-color: #f9f9f9;
        }

        .car-recommend h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .car-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            /* 三欄 */
            gap: 20px;
        }

        .car-card {
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .car-card:hover {
            transform: translateY(-5px);
        }

        .car-card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }

        .car-name {
            font-weight: bold;
            font-size: 18px;
            margin: 10px 0 5px;
        }

        .car-price {
            color: #666;
            margin-bottom: 15px;
        }
    </style>
</head>

<body>
    <section class="carInfo-section">
        <div class="carInfo-container">
            <div class="top">
                <div class="car-img">
                    <img src="https://picsum.photos/300/300?12" alt="車輛圖片">
                </div>
                <div class="car-info">
                    <div class="rating">
                        ⭐ 4.8 / 5<br>
                        成交次數：38 筆
                    </div>
                    <h2>TOYOTA ALTIS</h2>
                    <div class="meta">地區：台北市</div>
                    <div class="meta">年份：2021 年</div>
                    <div class="price">日費 NT$388｜里程費 NT$2.8/km</div>
                    <div class="actions">
                        <button class="btn-secondary">⭐ 收藏</button>
                        <button class="btn-secondary">🔗 複製連結</button>
                        <button class="btn-primary">立即預約</button>
                    </div>
                </div>
            </div>

            <div class="rent-subscription">
                <h3>📌 訂閱須知（日租）</h3>
                <ul class="notice">
                    <li>日租費用不含保險與配件。</li>
                    <li>訂單成立後請準時取車，逾時需額外計費。</li>
                    <li>里程費每公里 NT$2.8。</li>
                    <li>取消訂單請於 24 小時前完成。</li>
                    <li>車輛皆為定期保養與清潔。</li>
                </ul>
            </div>

            <div class="info-tabs-container">
                <h3>📖 詳細資訊 / 評論</h3>
                <div class="tabs">
                    <button class="active" onclick="switchTab('tab1')">詳細資訊</button>
                    <button onclick="switchTab('tab2')">所有評論</button>
                </div>
                <div class="tab-content">
                    <div id="tab1" class="tab-pane">
                        <ul class="vehicle-specs">
                            <li><strong>車型：</strong> 四門轎車</li>
                            <li><strong>出廠年份：</strong> 2021</li>
                            <li><strong>傳動方式：</strong> 自排（AT）</li>
                            <li><strong>排氣量：</strong> 1.8L</li>
                            <li><strong>油耗：</strong> 市區 12km/L，高速 16km/L</li>
                            <li><strong>核載人數：</strong> 5人</li>
                            <li><strong>車輛配備：</strong> 藍芽、倒車顯影、USB</li>
                            <li><strong>車身顏色：</strong> 黑色</li>
                        </ul>
                    </div>
                    <div id="tab2" class="tab-pane" style="display:none">
                        <p>⭐️⭐️⭐️⭐️⭐️：「車況很好，交車快」</p>
                        <p>⭐️⭐️⭐️⭐️：「價錢合理，推薦！」</p>
                    </div>
                </div>
            </div>



            <div class="car-recommend">
                <h3>🚘 推薦車輛</h3>
                <div class="car-grid">
                    <div class="car-card">
                        <img src="https://picsum.photos/300/300?3" alt="Toyota Altis">
                        <p class="car-name">TOYOTA ALTIS</p>
                        <p class="car-price">NT$980 / 日</p>
                    </div>

                    <div class="car-card">
                        <img src="https://picsum.photos/300/300?5" alt="Honda Fit">
                        <p class="car-name">HONDA FIT</p>
                        <p class="car-price">NT$880 / 日</p>
                    </div>

                    <div class="car-card">
                        <img src="https://picsum.photos/300/300?6" alt="Tesla Model 3">
                        <p class="car-name">TESLA MODEL 3</p>
                        <p class="car-price">NT$1,980 / 日</p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <script>
        function switchTab(id) {
            document.querySelectorAll(".tabs button").forEach(btn => btn.classList.remove("active"));
            document.querySelectorAll(".tab-pane").forEach(pane => pane.style.display = "none");
            event.target.classList.add("active");
            document.getElementById(id).style.display = "block";
        }
    </script>
</body>

</html>