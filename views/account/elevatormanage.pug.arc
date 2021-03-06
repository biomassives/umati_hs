doctype html
html
head
meta(charset="utf-8")
meta(name="viewport", content="width=device-width,initial-scale=1")
title Umaticast - show sequence manager week view
link(rel="stylesheet", href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css")
style.
  
  table {
   	 font-size: 1em;
    }
    .ui-draggable, .ui-droppable {
  	 background-position: top;
    }
    body {
      min-width: 520px;
      font-family: Arial, Helvetica, sans-serif;
    }
    .column {
      width: 170px;
      float: left;
      padding-bottom: 100px;
    }
    .portlet {
      margin: 0 1em 1em 0;
      padding: 0.3em;
    }
    .portlet-header {
      padding: 0.2em 0.3em;
      margin-bottom: 0.5em;
      position: relative;
    }
    .portlet-toggle {
      position: absolute;
      top: 50%;
      right: 0;
      margin-top: -8px;
    }
    .portlet-content {
      padding: 0.4em;
    }
    .portlet-placeholder {
      border: 1px dotted black;
      margin: 0 1em 1em 0;
      height: 50px;
    }
  
script(src="https://code.jquery.com/jquery-1.12.4.js")
script(src="https://code.jquery.com/ui/1.12.1/jquery-ui.js")

script.
 
 	
      $( ".column" ).sortable({
        connectWith: ".column",
        handle: ".portlet-header",
        cancel: ".portlet-toggle",
        placeholder: "portlet-placeholder ui-corner-all"
      });
  	  
      $( ".column" ).sortable({
      start: function(event, ui) {
          ui.item.startRow = ui.item.index();
  	ui.item.startCol = ui.item.closest('span').index();
      },
      stop: function(event, ui) {
          console.log("Item ID: " +   ui.item.attr("id"));
          console.log("Start col: " + ui.item.startCol);
          console.log("New col: " +  ui.item.closest('span').attr("id"));
          console.log("Start row: " + ui.item.startRow);
          console.log("New row: " + ui.item.index());
      }
  });  
  	  
  // load a new array of what is to be displaye
  // jquery will add them to othe 
  	  
      $( ".portlet" )
        .addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
        .find( ".portlet-header" )
          .addClass( "ui-widget-header ui-corner-all" )
          .prepend( "<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>");
   
      $( ".portlet-toggle" ).on( "click", function() {
        var icon = $( this );
        icon.toggleClass( "ui-icon-minusthick ui-icon-plusthick" );
        icon.closest( ".portlet" ).find( ".portlet-content" ).toggle();
      });
  
.content(style="width:96%")
  span.column.col1#0
    h2 Monday
    .portlet#1
      .portlet-header Feeds
      .portlet-content Lorem ipsum dolor sit amet, consectetuer adipiscing elit
    .portlet#2
      .portlet-header News
      .portlet-content Lorem ipsum dolor sit amet, consectetuer adipiscing elit
  span.column.col2#1
    h2 Tuesday
    .portlet#3
      .portlet-header Shopping
      .portlet-content Lorem ipsum dolor sit amet, consectetuer adipiscing elit
  span.column.col3#2
    h2 Wednesday
    .portlet#4
      .portlet-header Links
      .portlet-content Lorem ipsum dolor sit amet, consectetuer adipiscing elit
    .portlet#5
      .portlet-header Images
      .portlet-content Lorem ipsum dolor sit amet, consectetuer adipiscing elit
  span.column.col4#3
    h2 Thursday
    .portlet#6
      .portlet-header Shopping
      .portlet-content Lorem ipsum dolor sit amet, consectetuer adipiscing elit
  span.column#4
    h2 Friday
    .portlet#7
      .portlet-header Shopping
      .portlet-content Lorem ipsum dolor sit amet, consectetuer adipiscing elit
  span.column#5
    h2 Saturday
    .portlet#8
      .portlet-header Shopping
      .portlet-content Lorem ipsum dolor sit amet, consectetuer adipiscing elit
  span.column#6
    h2 Sunday
    .portlet#9
      .portlet-header Shopping
      .portlet-content Lorem ipsum dolor sit amet, consectetuer adipiscing elit
