  google.load('visualization', '1.1', {packages: ['line', 'corechart']});
  google.setOnLoadCallback(drawChart);

  function drawChart() {
    var graph = $('#sprint-graph');
    var graph_data = JSON.parse($('#sprint-graph').attr('data-points')); 
    var chartDiv = document.getElementById('sprint-graph-div');
    var data = new google.visualization.DataTable();

    data.addColumn('string', 'Sprint End Date');
    data.addColumn('number', "PO");
    data.addColumn('number', "Team");
    data.addColumn('number', "Combined");
    data.addColumn({type:'string', role:'annotation'});
    data.addColumn({type:'string', role:'annotationText'});

    console.log(graph_data);
    data.addRows([["28Jan16",7,4,5.0,"3","ComponentDecisions"],["28Jan16",7,8,7.0,"3","ComponentDecisionsFollowup"],["28Jan16",8,7,7.0,"5","Designmeeting"],["29Jan16",7,7,7.0,"3","ComponentIntegration"]])

    var classicOptions = {
      //title: 'Average Temperatures and Daylight in Iceland Throughout the Year',
      curveType: 'function',
      width: "100%",
      height: 500,
      pointSize: 7,
      // // Gives each series an axis that matches the vAxes number below.
      // series: {
      //   0: {targetAxisIndex: 0},
      //   1: {targetAxisIndex: 1}
      // },
      // vAxes: {
      //   // Adds titles to each axis.
      //   0: {title: 'Sprint Rating'},
      //   1: {title: 'Sprint Rating'}
      // },
      // hAxis: {
      //   //ticks: [new Date(2014, 0), new Date(2014, 1), new Date(2014, 2), new Date(2014, 3),
      //     //      new Date(2014, 4),  new Date(2014, 5), new Date(2014, 6), new Date(2014, 7),
      //       //    new Date(2014, 8), new Date(2014, 9), new Date(2014, 10), new Date(2014, 11),
      //         //  new Date(2015, 0)
      //          //]
      // },
      // vAxis: {
      //   viewWindow: {
      //     max: 15
      //   }
      // }
    };

    function drawClassicChart() {
      var classicChart = new google.visualization.LineChart(chartDiv);
      classicChart.draw(data, classicOptions);
    }

    drawClassicChart();
  }

  google.load('visualization', '1.1', {packages: ['line', 'corechart']});
  google.setOnLoadCallback(drawVelocityChart);

  function drawVelocityChart() {
    var graph = $('#velocity-graph');
    var graph_data = JSON.parse($('#velocity-graph').attr('data-points')); 
    var chartDiv = document.getElementById('velocity-graph-div');
    var data = new google.visualization.DataTable();

    data.addColumn('string', 'Sprint End Date');
    data.addColumn('number', "Planned");
    data.addColumn('number', "Acheived");

    // console.log(graph_data);

    data.addRows(graph_data)

    var classicOptions = {
      //title: 'Average Temperatures and Daylight in Iceland Throughout the Year',
      curveType: 'function',
      width: "100%",
      height: 500,
      pointSize: 7,
      // Gives each series an axis that matches the vAxes number below.
      // series: {
      //   0: {targetAxisIndex: 0},
      //   1: {targetAxisIndex: 1}
      // },
      // vAxes: {
      //   // Adds titles to each axis.
      //   0: {title: 'Velocity'},
      //   1: {title: 'Velocity'}
      // },
      // hAxis: {
      //   //ticks: [new Date(2014, 0), new Date(2014, 1), new Date(2014, 2), new Date(2014, 3),
      //     //      new Date(2014, 4),  new Date(2014, 5), new Date(2014, 6), new Date(2014, 7),
      //       //    new Date(2014, 8), new Date(2014, 9), new Date(2014, 10), new Date(2014, 11),
      //         //  new Date(2015, 0)
      //          //]
      // },
      // vAxis: {
      //   viewWindow: {
      //     max: 100
      //   }
      // }
    };

    function drawClassicChart() {
      var classicChart = new google.visualization.LineChart(chartDiv);
      classicChart.draw(data, classicOptions);
    }

    drawClassicChart();
  }
