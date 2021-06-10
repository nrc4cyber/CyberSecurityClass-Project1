function scheduleClass() {
  var spreadsheet = SpreadsheetApp.getActiveSpreadsheet();
  var calendarId = spreadsheet.getRange("B76").getValue();
  var eventCal = CalendarApp.getCalendarById(calendarId);

  var moduelName = spreadsheet.getRange("I2:K73").getValue();



  for (x=0; x<moduelName.length; x++) {
      
    var nwmdl = moduelName[x];
    /**  
      nwmdl stands for new module
    **/
   
    var callStart = nwmdl[0];
    var classEnd = nwmdl[1];
    var eventName = nwmdl[2];

    eventCal.createEvent(eventName,callStart,classEnd);
    }
}


function onOpen() {
  var ui = SpreadsheetApp.getUi();
  ui.createMenu('Add events to calendar')
  .addItem('Add to calendar', 'scheduleClass')
  .addToUi();
}