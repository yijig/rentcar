<%@ page contentType="text/html; charset=UTF-8" %>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr"
                crossorigin="anonymous">

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
                crossorigin="anonymous">
                </script>

            <style>
                body {
                    background-color: #374151;
                }

                .steps {
                    display: flex;
                    justify-content: center;
                    margin: 20px 0;
                }

                .step {
                    flex: 1;
                    text-align: center;
                    padding: 10px;
                    border-bottom: 3px solid #ccc;
                    font-weight: bold;
                    color: #666;
                }

                .step.active {
                    border-color: #007bff;
                    color: #007bff;
                }



                .order-section {
                    padding: 100px;
                }


                .order-container {
                    display: grid;
                    grid-template-areas:
                        "search    search"
                        "sidebar  content";
                    grid-template-columns: 300px 800px;
                    grid-template-rows: 200px 800px;
                    justify-content: center;

                    align-content: center;


                }

                .search {
                    grid-area: search;
                    background-color: aqua;
                }

                .sidebar {
                    grid-area: sidebar;
                    background-color: bisque;
                }

                .price-io {
                    display: flex;
                    gap: 12px;
                    align-items: center;
                    margin: 10px 0 18px
                }

                .price-io .box {
                    flex: 1 1 0;
                    height: 46px;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    border-radius: 10px;
                    background: #f8fafc;
                    border: 1px solid #e2e8f0;
                    font-weight: 600;
                    letter-spacing: .5px;
                }

                .price-io .to {
                    color: #94a3b8;
                    font-weight: 600
                }

                .slider {
                    position: relative;
                    height: var(--thumb);
                    display: flex;
                    align-items: center;
                    padding: 0 6px;
                    border-radius: 999px;
                    background: #f1f5f9;
                    box-shadow: inset 0 0 0 1px #e2e8f0;
                }

                /* 填色軌 */
                .slider .track {
                    position: absolute;
                    left: 6px;
                    right: 6px;
                    height: var(--track-h);
                    background: linear-gradient(90deg, #cfe8ff, #7ab8ff);
                    border-radius: 999px;
                }

                .slider input[type=range] {
                    -webkit-appearance: none;
                    appearance: none;
                    position: absolute;
                    left: 0;
                    right: 0;
                    width: 100%;
                    height: var(--thumb);
                    background: transparent;
                    pointer-events: auto;
                    margin: 0;
                    outline: none;
                }

                /* 原生軌道隱形 */
                .slider input[type=range]::-webkit-slider-runnable-track {
                    height: var(--track-h);
                    background: transparent
                }

                .slider input[type=range]::-moz-range-track {
                    height: var(--track-h);
                    background: transparent
                }

                /* 拇指 */
                .slider input[type=range]::-webkit-slider-thumb {
                    -webkit-appearance: none;
                    appearance: none;
                    width: var(--thumb);
                    height: var(--thumb);
                    border-radius: 50%;
                    background: #fff;
                    border: 3px solid var(--blue);
                    box-shadow: 0 2px 8px rgba(13, 110, 253, .25);
                }

                .slider input[type=range]::-moz-range-thumb {
                    width: var(--thumb);
                    height: var(--thumb);
                    border-radius: 50%;
                    background: #fff;
                    border: 3px solid var(--blue);
                    box-shadow: 0 2px 8px rgba(13, 110, 253, .25);
                }

                /* 灰色底軌 */
                .slider::before {
                    content: "";
                    position: absolute;
                    left: 6px;
                    right: 6px;
                    height: var(--track-h);
                    background: #e9eef5;
                    border-radius: 999px;
                }

                /* 藍色區段遮罩：用 track 寬度/位置控制 */
                .track {
                    background: linear-gradient(90deg, #46a4ff, #0d6efd)
                }




                .content {
                    grid-area: content;
                    background-color: cadetblue;

                }

                .features {
                    display: flex;
                }

                .feat {

                    background: #fff;
                    border: 1px solid #eef2f7;
                    border-radius: 5px;
                    width: 85px;
                    text-align: center
                }

                .feat .ico {
                    font-size: 28px;
                    line-height: 1;
                }

                .feat .name {
                    margin-top: 8px;
                    font-weight: 700;
                }

                .feat .desc {

                    color: #64748b;
                    font-size: 10px;
                    text-align: left;
                    padding-left: 18px;
                    padding-right: 5px;
                }



                .note-box {
                    background: #fff;
                    border-radius: 12px;
                    border: 1px solid #e5e7eb;
                    padding: 16px 20px;
                    max-width: 800px;
                    margin: auto;
                    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.04);
                }

                .note-box ul {
                    margin: 0;
                    padding-left: 20px;
                    line-height: 1.6;
                    color: #374151;
                }

                .note-box li {
                    margin-bottom: 6px;
                }


                /* 內容 */

                .car-card {
                    border: 1px solid #eef1f5;
                    border-radius: 12px;
                    box-shadow: 0 4px 14px rgba(0, 0, 0, .04);
                }



                .price {
                    color: #0d6efd;
                    font-weight: 800;
                }

                .meta i {
                    opacity: .7;
                    margin-right: .25rem;
                }

                .thumb {
                    width: 140px;
                    height: 84px;
                    object-fit: cover;
                    border-radius: 10px;
                }
            </style>


        </head>

        <body>
            <section>
                <div class="steps">
                    <div class="step active">1. 日租選車</div>
                    <div class="step">2. 日租選配</div>
                    <div class="step">3. 結帳明細</div>
                </div>
            </section>

            <section class="order-section">
                <div class="order-container">
                    <div class="search">
                        <div
                            style="background-color: blue; height: 70px;border-top-left-radius: 5px;border-top-right-radius: 5px;">
                            日租車
                        </div>
                        <div class="mt-2" style="display: flex; ">
                            <div class="ms-4 ">
                                <div>取車地點</div>
                                <input value="xx" style="width: 400px; height: 50px;"></input>
                            </div>
                            <div class="ms-3">
                                <div>取車時間</div>
                                <input value="cc" style="width: 200px; height: 50px;"></input>
                            </div>
                            <div class="ms-3 ">
                                <div>還車時間</div>
                                <input value="yy" style="width: 200px; height: 50px;"></input>
                            </div>
                            <button type="submit" class="ms-3 mt-4" style="width: 200px; height: 50px;"> 我想租車
                            </button>
                        </div>



                    </div>
                    <div class="sidebar">
                        <div>
                            <h5>篩選條件</h5>
                            <div class="form-check">
                                <input class="form-check-inupt" type="checkbox" value="option" id="check1">
                                <label class="form-check-label" for="check1">選項1</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-inupt" type="checkbox" value="option" id="check1">
                                <label class="form-check-label" for="check1">選項1</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-inupt" type="checkbox" value="option" id="check1">
                                <label class="form-check-label" for="check1">選項1</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-inupt" type="checkbox" value="option" id="check1">
                                <label class="form-check-label" for="check1">選項1</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-inupt" type="checkbox" value="option" id="check1">
                                <label class="form-check-label" for="check1">選項1</label>
                            </div>
                        </div>
                        <div>
                            <h5>日租金</h5>
                            <div class="price-io">
                                <div id="minBox" class="box">0</div>
                                <div class="to">至</div>
                                <div id="maxBox" class="box">5,000+</div>
                            </div>

                            <!-- 雙滑桿 -->
                            <div class="range-wrap">
                                <div class="slider" id="priceSlider">
                                    <div class="track" id="fill"></div>
                                    <input id="minRange" type="range" min="0" max="5000" value="0" step="50" />
                                    <input id="maxRange" type="range" min="0" max="5000" value="5000" step="50" />
                                </div>
                            </div>
                        </div>
                        <div class="mt-4">
                            <!-- 特色列（圖示＋名稱＋文字） -->
                            <div class="features">
                                <div class="feat">
                                    <div class="ico">🤝</div>
                                    <div class="name">安心免責</div>
                                    <ul class="desc">
                                        <li>第三責任＋乘客險</li>
                                        <li>事故自負額減免方案</li>
                                    </ul>
                                </div>
                                <div class="feat">
                                    <div class="ico">🧾</div>
                                    <div class="name">甲租乙還</div>
                                    <ul class="desc">
                                        <li>跨站取還更彈性</li>
                                        <li>可能酌收跨站費用</li>
                                    </ul>
                                </div>
                                <div class="feat">
                                    <div class="ico">⛽</div>
                                    <div class="name">加油費用</div>
                                    <ul class="desc">
                                        <li>滿油取還</li>
                                        <li>未滿油依表補差</li>
                                    </ul>
                                </div>
                                <div class="feat">
                                    <div class="ico">🔌</div>
                                    <div class="name">充電教學</div>
                                    <ul class="desc">
                                        <li>電車站點指引</li>
                                        <li>支援多種槍頭</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="note-box">
                                <ul>
                                    <li>車型名稱加註＊者為進口車型。</li>
                                    <li>各車型照片之顏色、內裝配備等僅供參考，實際租用車輛依現場取車為準。</li>
                                    <li>不指定車型：將依調度提供同等級車輛，後續將有專人與您聯繫相關事宜。</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="content">右邊圖片
                        <div class="car-card bg-white p-3 mb-3">
                            <div class="row g-3 align-items-center">
                                <div class="col-12 col-sm-auto">
                                    <img class="thumb" src="https://picsum.photos/300/180?random=2" alt="car">
                                </div>
                                <div class="col">
                                    <h2>2022年/北區</h2>
                                    <h4 class="mb-1 fw-bold">TOYOTA - NEW VIOS 1.5</h4>
                                    <div class="d-flex gap-2 mb-2 flex-wrap">
                                        <span class="chip">小型車</span>
                                        <span class="chip">五人座</span>
                                        <span class="chip">豐田</span>
                                    </div>
                                    <div class="meta small text-secondary d-flex gap-4 flex-wrap">
                                        <span><i class="bi bi-people"></i>5 人座</span>
                                        <span><i class="bi bi-suitcase"></i>2 大 + 2 小</span>
                                        <span><i class="bi bi-currency-dollar"></i>里程 $2.9 / km</span>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-auto text-sm-end">
                                    <div class="price h4 mb-2">NT$1,880 <small class="text-secondary fs-6">/ 日起</small>
                                    </div>
                                    <button class="btn btn-outline-primary btn-sm">可預約 24hr 後</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>



            <script>
                const minR = document.getElementById('minRange');
                const maxR = document.getElementById('maxRange');
                const fill = document.getElementById('fill');
                const minBox = document.getElementById('minBox');
                const maxBox = document.getElementById('maxBox');
                const slider = document.getElementById('priceSlider');

                const STEP = 50;      // 每格 50
                const GAP = 0;       // 允許最小間距（可改成 100 之類避免交疊）

                function fmt(n, max) {
                    const s = Number(n).toLocaleString('zh-TW');
                    return (Number(n) >= max) ? (s + '+') : s;
                }
                function update() {
                    let min = parseInt(minR.value, 10);
                    let max = parseInt(maxR.value, 10);
                    if (max - min < GAP) {
                        if (this === minR) min = max - GAP, minR.value = min;
                        else max = min + GAP, maxR.value = max;
                    }
                    // 更新顯示
                    const minVal = parseInt(minR.min, 10);
                    const maxVal = parseInt(minR.max, 10);
                    minBox.textContent = fmt(min, maxVal);
                    maxBox.textContent = fmt(max, maxVal);

                    // 依百分比設定填色條 left/width
                    const left = ((min - minVal) / (maxVal - minVal)) * 100;
                    const right = ((max - minVal) / (maxVal - minVal)) * 100;
                    fill.style.left = `calc(${left}% + 6px)`;
                    fill.style.right = `calc(${100 - right}% + 6px)`;
                }
                minR.addEventListener('input', update);
                maxR.addEventListener('input', update);
                // 啟動時先算一次
                update.call(minR);
            </script>

        </body>

        </html>