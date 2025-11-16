@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view History'
@Metadata.allowExtensions: true
define view entity ZC_DT_INCT_H_770
  as projection on ZDD_INCT_H_770
{
  key HisUUID,
  key IncUUID,
      HisID,
      PreviousStatus,
      NewStatus,
      Text,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Incident : redirected to parent ZC_DT_INCT_770
}
