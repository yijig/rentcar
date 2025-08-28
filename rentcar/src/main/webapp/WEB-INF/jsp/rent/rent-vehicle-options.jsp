<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous">
        </script>
    <style>
        body {
            background-color: #374151;
        }

        .extalnfo-section {
            padding: 100px;
        }


        .extalnfo-container {
            display: grid;
            grid-template-areas:
                "orderContent    orderAmount"
            ;

            grid-template-columns: 700px 300px;
            grid-template-rows: 800px;

            justify-content: center;

            align-content: center;


        }

        .orderContent {
            grid-area: orderContent;
            background-color: aqua;
        }

        .car-info {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
            border-bottom: 1px solid #ccc;
            padding-bottom: 15px;
        }

        .car-info img {
            width: 100px;
        }

        .car-text {
            flex: 1;
            margin-left: 20px;
        }

        .car-text h3 {
            margin: 0;
        }

        

        /* 加選配件 */
        .addons h3 {
            margin-top: 30px;
            border-left: 5px solid #2b80ff;
            padding-left: 10px;
            color: #2b80ff;
        }

        .addon-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 10px 0;
            border-bottom: 1px solid #eee;
            padding: 10px 0;
        }

        .addon-left {
            flex: 1;
        }

        .addon-right {
            display: flex;
            align-items: center;
        }

        .addon-right button {
            width: 30px;
            height: 30px;
            font-size: 16px;
            margin: 0 5px;
        }

        .orderAmount {
            grid-area: orderAmount;
            background-color: bisque;
        }
        /* 訂單金額 */
         .summary {
            float: right;
            margin-top: 30px;
            width: 300px;
            background: #f8fafc;
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 15px 20px;
        }

        .summary h4 {
            margin-top: 0;
            color: #2b80ff;
        }

        .summary div {
            margin: 8px 0;
        }

        /* 汽車詳細資訊 */
         .car-details {
            background: #f9fafb;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 30px;
        }

        .car-details h3 {
            color: #2b80ff;
            margin-bottom: 10px;
        }

        .car-details ul {
            list-style: none;
            padding-left: 0;
            line-height: 1.8;
        }
        /* 下一步 */
        .next-step {
            text-align: center;
            margin: 30px 0;
        }

        .btn-next {
            background-color: #2563eb;
            color: white;
            border: none;
            padding: 15px 40px;
            font-size: 18px;
            border-radius: 8px;
            cursor: pointer;
        }

        /* line詢問 */
        .line-support {
            text-align: center;
            margin-bottom: 30px;
        }

        .btn-line {
            display: inline-block;
            background-color: #06c755;
            color: white;
            text-decoration: none;
            padding: 12px 24px;
            font-size: 16px;
            border-radius: 6px;
            margin-top: 10px;
        }


    </style>
</head>

<body>
    <section class="extalnfo-section">
        <div class="extalnfo-container">
            <div class="orderContent">
                <!-- 車輛資訊 -->
                <div class="car-info">
                    <img src="https://picsum.photos/300/180?random=2" alt="U6/URX">
                    <div class="car-text">
                        <h3>U6/URX 限時優惠</h3>
                        <p>5人座｜2大+0小</p>
                        <p>台北建北站 → 台北建北站</p>
                        <p>2025/08/17 13:00 ~ 2025/08/18 13:00（共1日0時0分）</p>
                    </div>
                </div>

                <!-- 加選配件 -->
                <div class="addons">
                    <h3>加選配件</h3>

                    <div class="addon-item">
                        <div class="addon-left">GPS（NT$50/日起）</div>
                        <div class="addon-right">
                            <button>-</button> <span>0</span> <button>+</button>
                        </div>
                    </div>

                    <div class="addon-item">
                        <div class="addon-left">安全座椅（NT$100/日起）</div>
                        <div class="addon-right">
                            <button>-</button> <span>0</span> <button>+</button>
                        </div>
                    </div>

                    <div class="addon-item">
                        <div class="addon-left">增高墊（NT$50/日起）</div>
                        <div class="addon-right">
                            <button>-</button> <span>0</span> <button>+</button>
                        </div>
                    </div>

                    <div class="addon-item">
                        <div class="addon-left">行車紀錄器（NT$100/日起）</div>
                        <div class="addon-right">
                            <button>-</button> <span>0</span> <button>+</button>
                        </div>
                    </div>

                    <div class="addon-item">
                        <div class="addon-left">活氧殺菌清淨機（NT$50/日起）</div>
                        <div class="addon-right">
                            <button>-</button> <span>0</span> <button>+</button>
                        </div>
                    </div>
                    <div class="car-details">
                <h3>車輛詳細資訊</h3>
                <ul>
                    <li>品牌：LUXGEN</li>
                    <li>型號：U6/URX</li>
                    <li>排氣量：1800cc</li>
                    <li>車門數：5門</li>
                    <li>變速系統：CVT</li>
                    <li>行李箱容量：約2大2小</li>
                </ul>
            </div>

            <!-- 下一步按鈕 -->
            <div class="next-step">
                <button class="btn-next">下一步</button>
            </div>

            <!-- LINE 詢問 -->
            <div class="line-support">
                <p>若有任何問題，歡迎加 LINE 詢問。</p>
                <a href="https://line.me/R/ti/p/@yourlineid" class="btn-line" target="_blank">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/LINE_logo.svg/1024px-LINE_logo.svg.png"
                        style="height:20px; vertical-align:middle;">
                    LINE @ 點我詢問
                </a>
            </div>

                </div>
            </div>
            <div class="orderAmount">
                <div class="summary">
                    <h4>訂單金額</h4>
                    <div>車型方案：U6/URX 限時優惠 - NT$1,920</div>
                    <div>額外費用：安心免責 - 標準方案 - 1位 - NT$500</div>
                    <div class="total">總金額：NT$2,420</div>
                </div>
            </div>
        </div>
    </section>

</body>

</html>