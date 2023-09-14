import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="google-chart"
export default class extends Controller {
  connect() {
    // ビューからデータを取得
    const analysesData = this.data.get("analyses");

    // JSON文字列をオブジェクトにパース
    const analyses = JSON.parse(analysesData);
    
    console.log(JSON.stringify(analyses, null, 2));

    this.loadChartData(analyses);
    
  }

  loadChartData(analyses) {
    const jsonData = analyses;

    // データをGoogle Chartsの形式に変換
    const chartData = [["Number", "出現数"]];
    for (const key in jsonData.count_hash) {
      const numericKey = parseInt(key);
      chartData.push([numericKey, jsonData.count_hash[key]]);
    }

    // キーを数値として扱うため、chartDataを数値順にソート
    chartData.sort((a, b) => a[0] - b[0]);

    // Google Chartsを描画
    google.charts.load("current", { packages: ["corechart"] });
    google.charts.setOnLoadCallback(() => {
      const data = google.visualization.arrayToDataTable(chartData);
      const options = {
        title: "各番号の出現数",
        hAxis: { title: "出現数" },
        vAxis: {
          title: "Number",
          ticks: [
            0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
            11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
            21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
            31, 32, 33, 34, 35, 36, 37
          ],
          gridlines: {
            count: 1, // グリッドラインの数を1に設定
          }, // 整数値として表示
        },
      };
      const chart = new google.visualization.BarChart(this.element);
      chart.draw(data, options);
    });
  }
}
