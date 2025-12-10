CLASS zcl_islm_zscen01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

     INTERFACES:
      if_oo_adt_classrun.

    METHODS:
      constructor.

  PRIVATE SECTION.

    DATA:
    islm_instance TYPE REF TO if_aic_completion_api.

ENDCLASS.

CLASS zcl_islm_zscen01 IMPLEMENTATION.

  METHOD constructor.

    CONSTANTS:
        c_islm_scenario TYPE aic_islm_scenario_id=>type VALUE 'ZSCENARIO4'.

    TRY.

        islm_instance = cl_aic_islm_compl_api_factory=>get( )->create_instance( islm_scenario = c_islm_scenario  ).

      CATCH cx_aic_api_factory into data(lx_error_api).

      ASSERT 1 = 2.

    ENDTRY.

  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.

    TRY.

        DATA(message_container) = islm_instance->create_message_container( ).

        message_container->set_system_role( 'You are Interface Monitring expert. You are resposinsible for translating technical errors into functional readeness' ).

        message_container->add_user_message( 'Can you explain error message with the following Message Class: /AIF/ENGINE_IDOC and number 001 ?' ).

        DATA(answer) = islm_instance->execute_for_messages( message_container )->get_completion( ).

        out->write( answer ).

      CATCH cx_aic_completion_api INTO DATA(lx_completion).

        out->write( |There was an issue with the completion api: { lx_completion->get_longtext(  ) }| ).

    ENDTRY.

  ENDMETHOD.

ENDCLASS.


