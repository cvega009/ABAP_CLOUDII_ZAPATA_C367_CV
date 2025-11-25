@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view History'
@Metadata.allowExtensions: true
define view entity ZC_DT_INCT_H_770
  as projection on ZDD_INCT_H_770
{
  key HisUUID,
  key IncUUID,
      HisID,

      @ObjectModel.text.element: [ 'StatusDescriptionPS' ]
      PreviousStatus,
      _StatusPS.StatusDescription as StatusDescriptionPS,

      @ObjectModel.text.element: [ 'StatusDescriptionNS' ]
      NewStatus,
      _StatusNS.StatusDescription as StatusDescriptionNS,

      Text,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Incident : redirected to parent ZC_DT_INCT_770
}
