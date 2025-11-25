@Metadata.allowExtensions: true
@EndUserText.label: 'Consumption view Incident'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZC_DT_INCT_770
  provider contract transactional_query
  as projection on ZR_DT_INCT_770
{
  key IncUUID,
      IncidentID,
      Title,
      Description,


      @ObjectModel.text.element: [ 'StatusDescription' ]
      Status,
      _Status.StatusDescription,

      @ObjectModel.text.element: [ 'PriorityDescription' ]
      Priority,
      _Priority.PriorityDescription,

      CreationDate,
      ChangedDate,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,

      /* Associations */
      _History : redirected to composition child ZC_DT_INCT_H_770
}
