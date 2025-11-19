@EndUserText.label: 'Parameters for Change Status'
define abstract entity ZDD_CHANGE_STATUS_PARAM_770
{
  @EndUserText.label: 'Change Status'
  @Consumption.valueHelpDefinition: [ {
      entity.name: 'zdd_status_vh_770',
      entity.element: 'StatusCode',
      useForValidation: true
    } ]
  status : zde_status2_lgl;
  @EndUserText.label: 'Add Observation Text'
  text   : zde_text_lgl;
}
