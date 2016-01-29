// // Define a namespace
// Scrumness = {} || Scrumness;

// (function() {
// 	Scrumness.Projects = {} || Scrumness.Projects;

// 	Scrumness.Projects = (function() {

// 		// Private
// 		var sprintGraphEl = ('#sprint-graph');

// 		var drawClassicChart = (function(data, classicOptions) {
// 			var classicChart = new google.visualization.LineChart(chartDiv);
//       classicChart.draw(data, classicOptions);
// 		});

// 		// Public
// 		return {
// 			geolocation: 100
// 			,init: (function() {
// 				var self = this;

// 				if (self.validElements) {
// 					self.initDrawChart();	
// 				}
				
// 			})

// 			,initDrawChart: (function() {
// 				var graph = $('#sprint-graph'),
// 						graph_data = JSON.parse($('#sprint-graph').attr('data-points')),
// 						chartDiv = document.getElementById('sprint-graph-div'),
// 						data = new google.visualization.DataTable();

// 		    data.addColumn('string', 'Sprint End Date');
// 		    data.addColumn('number', "PO");
// 		    data.addColumn('number', "Team");
// 		    data.addColumn('number', "Combined");
// 		    data.addColumn({type:'string', role:'annotation'});
// 		    data.addColumn({type:'string', role:'annotationText'});

// 		    data.addRows(graph_data)

// 		    var classicOptions = {
// 		      //title: 'Average Temperatures and Daylight in Iceland Throughout the Year',
// 		      curveType: 'function',
// 		      width: "100%",
// 		      height: 500,
// 		      pointSize: 7,
// 		      // Gives each series an axis that matches the vAxes number below.
// 		      series: {
// 		        0: {targetAxisIndex: 0},
// 		        1: {targetAxisIndex: 1}
// 		      },
// 		      vAxes: {
// 		        // Adds titles to each axis.
// 		        0: {title: 'Sprint Rating'},
// 		        1: {title: 'Sprint Rating'}
// 		      },
// 		      hAxis: {
// 		        //ticks: [new Date(2014, 0), new Date(2014, 1), new Date(2014, 2), new Date(2014, 3),
// 		          //      new Date(2014, 4),  new Date(2014, 5), new Date(2014, 6), new Date(2014, 7),
// 		            //    new Date(2014, 8), new Date(2014, 9), new Date(2014, 10), new Date(2014, 11),
// 		              //  new Date(2015, 0)
// 		               //]
// 		      },
// 		      vAxis: {
// 		        viewWindow: {
// 		          max: 10
// 		        }
// 		      }
// 		    };

// 		    drawClassicChart(data, classicOptions);
// 			})

// 			,validElements: (function() {
// 				return sprintGraphEl;
// 			})
// 		};
// 	})();
// })();