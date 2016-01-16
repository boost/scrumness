// /*
//  * The majority of The Supplejack Website code is Crown copyright (C) 2014, New Zealand Government,
//  * and is licensed under the GNU General Public License, version 3. Some components are 
//  * third party components that are licensed under the MIT license or other terms. 
//  * See https://github.com/DigitalNZ/supplejack_website for details. 
//  * 
//  * Supplejack was created by DigitalNZ at the National Library of NZ and the Department of Internal Affairs. 
//  * http://digitalnz.org/supplejack
//  */

// (function() {
//    'use strict';

//    var Module =  {};

//    Module = (function() {
//       var config = {
//          initMasonry: (function() {
//             var container = $('.gallery-container');
//             container.masonry({
//                itemSelector: '.gallery-record'
//                ,isFitWidth: true
//             });

//             container.imagesLoaded(function() {
//                container.masonry('reload');
//             });
//          })
//          ,initInfiniteScroll: (function() {
//             var galleryContainer = $('.gallery-container'),
//                 notIE = ($('.ie8').length == 0 && $('.ie7').length == 0);

//             if (notIE) {
//                var callback = (function(elements) {
//                   var newElements = $(elements),
//                       spinner = $('#second-spinner').show();

//                   galleryContainer.masonry('appended', newElements, true);

//                   newElements.imagesLoaded(function(){
//                      // show elems now they're ready
//                      newElements.animate({ opacity: 1 });
//                      spinner.hide();

//                      newElements.each(function(index, elem) {
//                         $(elem).find('a.unknown-height').removeClass('unknown-height');
//                      });

//                      galleryContainer.masonry('reload');
//                   });
//                });

//                galleryContainer.infinitescroll({
//                   navSelector: '#navigation'                 // selector for the paged navigation
//                   ,nextSelector: '#navigation a[rel=next]'   // selector for the NEXT link (to page 2)
//                   ,itemSelector: '.gallery-record'           // selector for all items you'll retrieve
//                   ,loading: {
//                      speed: 'fast'
//                      ,msg: $('<div id="infscr-loading" class="infinite-spinner"><img src="/assets/spinner.gif"></img></div>')
//                   }
//                }, callback);
//             }
//          })
//       };

//       return config;
//    })();

//    Module.initMasonry();
//    Module.initInfiniteScroll();
// }());

$(document).ready( $(function() {
  google.load('visualization', '1.1', {packages: ['line', 'corechart']});
  google.setOnLoadCallback(drawChart);

  function drawChart() {
    var graph = $('#graph');
    var graph_data = JSON.parse($('#graph').attr('data-points')); 

    console.log(graph_data);

    var chartDiv = document.getElementById('chart_div');
    var data = new google.visualization.DataTable();

    data.addColumn('string', 'Sprint End Date');
    data.addColumn('number', "PO");
    data.addColumn('number', "Team");
    data.addColumn('number', "Combined");
    data.addColumn({type:'string', role:'annotation'});
    data.addColumn({type:'string', role:'annotationText'});

    data.addRows(graph_data)

    var classicOptions = {
      //title: 'Average Temperatures and Daylight in Iceland Throughout the Year',
      curveType: 'function',
      width: "100%",
      height: 500,
      pointSize: 7,
      // Gives each series an axis that matches the vAxes number below.
      series: {
        0: {targetAxisIndex: 0},
        1: {targetAxisIndex: 1}
      },
      vAxes: {
        // Adds titles to each axis.
        0: {title: 'Sprint Rating'},
        1: {title: 'Sprint Rating'}
      },
      hAxis: {
        //ticks: [new Date(2014, 0), new Date(2014, 1), new Date(2014, 2), new Date(2014, 3),
          //      new Date(2014, 4),  new Date(2014, 5), new Date(2014, 6), new Date(2014, 7),
            //    new Date(2014, 8), new Date(2014, 9), new Date(2014, 10), new Date(2014, 11),
              //  new Date(2015, 0)
               //]
      },
      vAxis: {
        viewWindow: {
          max: 10
        }
      }
    };

    function drawClassicChart() {
      var classicChart = new google.visualization.LineChart(chartDiv);
      classicChart.draw(data, classicOptions);
    }

    drawClassicChart();
  }
});