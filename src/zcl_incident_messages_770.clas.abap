CLASS zcl_incident_messages_770 DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg .
    INTERFACES if_t100_message .
    INTERFACES if_abap_behv_message .

    CONSTANTS:
      gc_msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_770',

      BEGIN OF title_initial,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_770',
        msgno TYPE symsgno VALUE '000',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF title_initial,

      BEGIN OF description_initial,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_770',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF description_initial,

      BEGIN OF priority_initial,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_770',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF priority_initial,

      BEGIN OF status_initial,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_770',
        msgno TYPE symsgno VALUE '003',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF status_initial,

      BEGIN OF creationdate_initial,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_770',
        msgno TYPE symsgno VALUE '004',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF creationdate_initial,

      BEGIN OF status_invalid,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_770',
        msgno TYPE symsgno VALUE '005',
        attr1 TYPE scx_attrname VALUE 'MV_STATUS',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF status_invalid,
*
      BEGIN OF ChangedDate_invalid,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_770',
        msgno TYPE symsgno VALUE '006',
        attr1 TYPE scx_attrname VALUE 'MV_CHANGEDDATE',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF ChangedDate_invalid,

      BEGIN OF CreationDate_invalid,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_770',
        msgno TYPE symsgno VALUE '007',
        attr1 TYPE scx_attrname VALUE 'MV_CREATION_DATE',
        attr2 TYPE scx_attrname VALUE 'MV_SYDATUM',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF CreationDate_invalid,

      BEGIN OF validate_date,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_770',
        msgno TYPE symsgno VALUE '008',
        attr1 TYPE scx_attrname VALUE 'MV_CREATION_DATE',
        attr2 TYPE scx_attrname VALUE 'MV_CHANGE_DATE',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF validate_date,

      BEGIN OF validate_resp,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_770',
        msgno TYPE symsgno VALUE '009',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF validate_resp,

      BEGIN OF validate_auto,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_770',
        msgno TYPE symsgno VALUE '010',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF validate_auto.

    METHODS constructor
      IMPORTING
        textid        LIKE if_t100_message=>t100key OPTIONAL
        attr1         TYPE string OPTIONAL
        attr2         TYPE string OPTIONAL
        attr3         TYPE string OPTIONAL
        attr4         TYPE string OPTIONAL
        previous      LIKE previous OPTIONAL
        sydatum       TYPE /dmo/begin_date OPTIONAL
        changeddate   TYPE /dmo/begin_date OPTIONAL
        creation_date TYPE /dmo/begin_date OPTIONAL
        change_date   TYPE /dmo/begin_date OPTIONAL
        status        TYPE zde_status2_770 OPTIONAL
        severity      TYPE if_abap_behv_message=>t_severity OPTIONAL
        uname         TYPE syuname OPTIONAL.


    DATA:
      mv_attr1         TYPE string,
      mv_attr2         TYPE string,
      mv_attr3         TYPE string,
      mv_attr4         TYPE string,
      mv_creation_date TYPE /dmo/begin_date,
      mv_change_date   TYPE /dmo/begin_date,
      mv_sydatum       TYPE /dmo/begin_date,
      mv_status        TYPE zde_status2_770,
      mv_uname         TYPE syuname.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_incident_messages_770 IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor(  previous = previous ) .

    me->mv_attr1                 = attr1.
    me->mv_attr2                 = attr2.
    me->mv_attr3                 = attr3.
    me->mv_attr4                 = attr4.
    me->mv_status                = status.
    me->mv_creation_date         = creation_date.
    me->mv_change_date           = change_date.
    me->mv_sydatum               = sydatum.
    me->mv_uname                 = uname.


    if_abap_behv_message~m_severity = severity.

    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
