prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.0'
,p_default_workspace_id=>816675965886519587
,p_default_application_id=>152682
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROIECTCAMINEASE'
);
end;
/
 
prompt APPLICATION 152682 - ASE Dormitory System
--
-- Application Export:
--   Application:     152682
--   Name:            ASE Dormitory System
--   Date and Time:   17:15 Sunday May 17, 2026
--   Exported By:     SANDUMATEI24@STUD.ASE.RO
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     27
--       Items:                   75
--       Validations:              1
--       Processes:               40
--       Regions:                 51
--       Buttons:                 61
--       Dynamic Actions:         13
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:             13
--       Security:
--         Authentication:         2
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   7
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.0
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_PROIECTCAMINEASE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'ASE Dormitory System')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'ASE-DORMITORY-SYSTEM152682')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'ED2D304F8B70E6DAF20930C0967C7D69B565E4B47D20E4DAB42D12BCFB9A6BD0'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(832988226446534945)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'ASE Dormitory System'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'ASE Dormitory System'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516203653Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461177174108
,p_version_scn=>'15769490674540'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(832989299915534947)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(832990045055534952)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832983869724534937)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832984174065534938)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832984418816534939)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832984753737534939)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832985096388534940)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832985338900534940)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832985610030534941)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832985900777534941)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832986232717534942)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832986598321534942)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832986880067534943)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832987117547534943)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832987401734534944)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(832987731745534944)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(832990045055534952)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833566125294539546)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833566775339539547)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(833566125294539546)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833567260020539547)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(833566125294539546)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(832989299915534947)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:4RcB5KKeNSCHeSFlbDCnn0HuyLNlb_r3OHnWdHMuueU'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516201730Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833368747713537939)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Angajat Sporuri'
,p_static_id=>'angajat-sporuri'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833427780180539051)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Avizier'
,p_static_id=>'avizier'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833050024668535738)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Camere'
,p_static_id=>'camere'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833002298526534975)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Camine'
,p_static_id=>'camine'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833102088086536472)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Cazari'
,p_static_id=>'cazari'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833119689024536839)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Facturi Cazare'
,p_static_id=>'facturi-cazare'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833000762917534971)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833030243870535374)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Lista Preturi Camin'
,p_static_id=>'lista-preturi-camin'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174112Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174112Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833414104171538691)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Personal Camin'
,p_static_id=>'personal-camin'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174146Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174146Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833382843010538310)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Plati Salarii'
,p_static_id=>'plati-salarii'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833337205762537211)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Staff'
,p_static_id=>'staff'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833065474621536095)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Studenti'
,p_static_id=>'studenti'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174120Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174120Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833355417644537580)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Tipuri Sporuri'
,p_static_id=>'tipuri-sporuri'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(833558373130539534)
,p_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_version_scn=>'SH256:Xg_yjsje7w6iukqK-gKSKLv-wlnCemWCegiz1dnkagw'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833562867596539540)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Angajat Sporuri'
,p_static_id=>'angajat-sporuri'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833564346290539542)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Avizier'
,p_static_id=>'avizier'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833559831079539536)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Camere'
,p_static_id=>'camere'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833558893719539535)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Camine'
,p_static_id=>'camine'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833560883819539538)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Cazari'
,p_static_id=>'cazari'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833561306457539538)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Facturi Cazare'
,p_static_id=>'facturi-cazare'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833559392962539536)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Lista Preturi Camin'
,p_static_id=>'lista-preturi-camin'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833563855225539541)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Personal Camin'
,p_static_id=>'personal-camin'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833563381506539541)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Plati Salarii'
,p_static_id=>'plati-salarii'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833561877569539539)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Staff'
,p_static_id=>'staff'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833560310758539537)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Studenti'
,p_static_id=>'studenti'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(833562357533539540)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Tipuri Sporuri'
,p_static_id=>'tipuri-sporuri'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC9D09705CC599C7FF3DA319DD92758E2CCB876CCBC6B77CB3B28D091B4E83B34156C0C762EF529040A53640206C365B215050D9A242B0B381';
wwv_flow_imp.g_varchar2_table(2) := 'CD52BB5BC4651BBCB24D1CB2A9802101121B9BA57C601BDFA76C4923C992AC7B349A79FB7D6FC68B8C252CBDF74633FDA6A75EBF4B7D7CFDFF7ED3DDAFFB4972407D94022614500099104F250514408A02530A28804CC9A7122B801403A614500099924F';
wwv_flow_imp.g_varchar2_table(3) := '25560029064C2960182053A5AAC4B6514001641B5746A7220AA0E8E86E9B521540B67165742AA2008A8EEEB6295501641B5746A7220AA0E8E86E9B52871EA0014857FFF74BD3EBD654147857DF37CEBBEA9B33BCAB9695795755DC5ABBBCFC9E78085C57';
wwv_flow_imp.g_varchar2_table(4) := 'AF5E67AA3B69C05AB02603906EC8A34415200D100DCBCB6FA85B59BEDABBAAFCD5DA95CB3EF5AE5CD61DF4B95B34BF56839EC04968CEFDD0B0139AF6AE7088DF8A38085CD7509DA9EEA4016BC19AB036618D5EA923CD583BD61051FC0C294035151579B5';
wwv_flow_imp.g_varchar2_table(5) := 'AB2A96D6AD58F6827765C58EBA95CB9A020E714483781D9A784400B3490B1705B5F5AD802BACD1A3AC196BC71A86B42C7F9E5BE7AA8A8AECBE9346E6EE9001A40142B8B432A1694F6B02FF04685F079049416DE614200DB5AF6B103F120EC7D32EB756A6';
wwv_flow_imp.g_varchar2_table(6) := '01C41986E4137180B4871F76D5AE2C7FA86E45F95121F01B006514D4161105B40544CEDBD42A1DA95D51F1206B1F91627A651A51801A1EA818E16D6FFC5840BC062126F42A579D465681894268FFE16D6BDCC5C38648161531806A56564C0E04B43D2234';
wwv_flow_imp.g_varchar2_table(7) := 'AE89641D54DEFD28402DFE1C4762F0E39AE5E553FA8962FA764400AA5B5EB1D0016D1759378282459BCAC690029A18E770889DF5CB2B161B4A7F9D449603C42D8FE6D0DEA1726970477BB5C58202994187F6FB48B444960254FDF03D29D4F25492622914';
wwv_flow_imp.g_varchar2_table(8) := 'D4165B0AA4504BB4997D64A5599602E46C4F7C958C9B4C416DB1A9C094B08F2CB3CE3280EA5654AC21AB5653505B6C2BB03AEC2B4BACB404209AFD4CD684F6734B2C5299445C01F2D54B5675659600E47607B9E5C98A78CD5501562990ED6C773F604566';
wwv_flow_imp.g_varchar2_table(9) := 'A6010A4D9B8BC7AC30264279A86CFB504000FF10F25D1F3F1CC42DD300D5AFAAB89DCA9B48416D1229A0414C0AFBCE94D5A601D234A8D607727EACF09D2980CEAC599344ABEAB7CA299FB29A7DC70F406694300550524FDB8D54B8A93C28BDDAA2A78023';
wwv_flow_imp.g_varchar2_table(10) := '21519B6FA67853CE776A82013253BE4A1B6505CCFAD014401A3405509401305BBC591F1A064803E849100B61E34F9C54CD54236018A0FA35151E12388782DAE456C0D3F2C0370DFBD130404E5FD070A172EB6D3FEBFD7E4781D15A1906A8DBA1A957368C';
wwv_flow_imp.g_varchar2_table(11) := 'AA1E63E9CCF8D23040083A154031068261734CF8D230404E27920D1BAC12C694022E879660D420C3006941D58519153DD6D2058530FCCB9C86017238540BD42F0892FDC04C636018202D689C5AC9F4B5BDB9661A03E30089608FED955515BCAE028601BA';
wwv_flow_imp.g_varchar2_table(12) := '6ECE2A425C28A0008A0B3747AE920AA0C8691B17392B80BEE4E6AE4000CDDDDDA8EFEA4243970F1D3D6AA8F72589AEBA540085E560608E5D6E0187736DEDA8EEE8C4C58E0E9C6869C581C6269CA4637BC4610A1B23D121EE01EA0E06754818189FA661C4';
wwv_flow_imp.g_varchar2_table(13) := 'D8719830670EA62C5C84F1334AE119390AEEC424303C0C51354115A07812F938A2A6C635400CC2E99636BD9B6250662FB90745A5A5C81A351A69F9F9C819370E63E6CEC5CC254B30E9C6BF42664E2E756D3E1CA796AA4741A483191700B5F8FDA8EBEC42';
wwv_flow_imp.g_varchar2_table(14) := '557B3BCEB4B6A186BA271EE79CA7AECA170C60E484893A284E57822E4A5FBB8CC242DCB07831464F9E0C6EB5386D5FF1E2ED9EAD01F2D18098C7303A349D9D68F47543878906C83CCEE1F3ECBC7C144E9D3A60BF17DC3009C5D3A6A395A0F41294034E68';
wwv_flow_imp.g_varchar2_table(15) := 'D388B605885B98A3D4D5F05354B6C78389F3E663E6ADB761EED2BFC1B4AFDD8251D4EA788A4662ECFCF983766D7E49099253D3504B5006E3BC2BB32540DCC554B577C0E572E9639792050B31ACA808EEF47438129C48C9CAC2706A75C6CC9B07A7DB3D68';
wwv_flow_imp.g_varchar2_table(16) := '8038414171311FD016E74F66B604E81C8D73B86528993B0F3C76D13D6DF12E3D374FCFB1B5DBAF1FA3BC8B5AF1B603881FB73B68EC53404F52E905865FF5BDAE4392870D83D3E90C8DA9682CC4938EDC6D76F604AE9BD64E116C07D01507E6D37C4EA41C';
wwv_flow_imp.g_varchar2_table(17) := 'D55E5F8F537B762340A07277594363219E74E481F9F196161C6C6A063FA5F9698E295236C44ABEB6038807CD2CAE2BD5FA57B69B2F5CC0E1F7DFC3A13F7F84869A6A64161661D48D6598B8F41B98487348A3172CD2E790B8FB6CA2E5101EC473ABC4F6D8';
wwv_flow_imp.g_varchar2_table(18) := '35D80E205FF85B9F909868A9CF2E1E3A84639FEC41DBE5CB9870D7DD58B8F615CCFC971731F6D1EF62F8B2FB30FCBEE528FEF62398F1FC4F51F6DC0B18BBF86B6090B855AAA679274B8D89A1CC6C03509BBF479F20E4B91FD6D74F93867CEC2F040341B4';
wwv_flow_imp.g_varchar2_table(19) := 'D737C07BEC38CEEFDB8B933B77A2EAC0015C3A7D1A9DB4F6D53B1DC373E1F83164D1637F19015278FF0A246467F58E72D5B97B4C31463DF810CA7EFA2292D23368F6BA0B17E9A9F0AA4836B9901EA06A5A9BE231C7A9D656D4D104212F4FB06FB4A0C687';
wwv_flow_imp.g_varchar2_table(20) := '6B02835347D0ECFDFDEFA82BFA10670F1F44CD9933B8E4AD45F5A99338B97F1F3EFBE08FF8EC0F7F80F7E811547FF619747868503EFDD9E7E1A6E33599F673C33DA208B39F7916A9D93968F0F9C003ED7EA24A7B5B5A807880CAB3CCF55D3EA46464607C';
wwv_flow_imp.g_varchar2_table(21) := 'E92C4CBBE966CC5E7237E6DF5B0E777ADA354EE9A289C5C3EFEDC0198286F12A5E7413E67EFF0758F8D25A2CFECFF558F0B39731E7B1275072C79DF0F9BB71F6F3CF5175F20412D3D231F5892721685EE99A4CAF73C395EF41E93FFE488FC5836DB65BBF';
wwv_flow_imp.g_varchar2_table(22) := '88919D5933A40488DFD9397EB9555F042D183D1A9368BC9133B61829B9394848EC7BECD3D1700907DEDF818EF6368C98399BC630BFC4E887BE83D419A548A0E50C41EB60ECECB459733062C5DF62C1BA5730F19EA5BABEA5DF7B1C4E6A45F40B033B174D';
wwv_flow_imp.g_varchar2_table(23) := '2794DC76873E26E235390359C46C122901E247E41E2D88B1336660F4EC3970D0ECF257291CA0AEEDE86EFED71DC08C350FA2E4F1EFC341B3D25F95C6999686E115F7E3E6F59B903CF10698FD147CE35EB89292C04F6766F38AA5F4D201544F3074D2FC4B';
wwv_flow_imp.g_varchar2_table(24) := '2EAD8EE78D1B3F202DCFECDB073F3D564FA5C16FD62D7F3DA03456477252975A40C0F3188D07FC56E71FADFCA4028827ED6A69D6975FF01A336BF68034E327AD4B34675338BD14B9F4F83DA044118A94464F719C3577C17CB443900AA0665FB73E8EF08C';
wwv_flow_imp.g_varchar2_table(25) := '1983812E825E3A7F56F753110D8CF59328EE528B46E9A5DB69202D1540DC02B107D2B207FE7F651B6A6A380952A64ED38FD1DCB93233F5E235F033A07E2AFD4E2A80AE4C12A6E6E60E48F800AD94F3D867D8C8D0377F40892218C94FB3D89CBD5348253B';
wwv_flow_imp.g_varchar2_table(26) := '9B7C6D08DF91AA265F7C6F45D8FCAF3E0468F28E636486C71E7C1ECDD07EEE9C5E7CA2532AD9759BFBDB4955139723646E6753637FF541775B1B6A0F1FC689BFFC0587FEF4BE1E2F2139493F467B574F13986C43A2C3C9075B84904724A94AB233247C47';
wwv_flow_imp.g_varchar2_table(27) := 'B82BE86DB6AFA515A776EFC6BE77DFC1B96347D158E785BFA707B9E34B90356D46EFA8513BEF6868D0CBE665179E8ED02F24DF490550A6DBA5CB5D4B0B9EFA497857432DCEFEF7DE4543F545E44F9A8C59B442CE0B993C0938F5C7CF228D261BC351A37A';
wwv_flow_imp.g_varchar2_table(28) := '98FDE39F602CCD43F15C5035ADD01F6D6EC1651AA745D52893854B055022B540690909E8A4E588DA2347F4AA57D124E1796A71F862EAF29598FCC37F46C68D65E0854CBE174BC199938B513413BE68DD2F31E1CEBBE00B067096BA5C995B23A90062180A';
wwv_flow_imp.g_varchar2_table(29) := '53422F8A9D3BF2392EEEDF8FEA33A7919E9787B2175E44EE9D4B384ACC076756360A97AFC2ACEF3CAADBCAAD11BF8AAB5F48B6930EA0645AF71A9D96AACB7CE1F429086A95A63DF114DC238BF47B32ED32CA1662262DE8B2CD675BDBD123E1AF080D1E20';
wwv_flow_imp.g_varchar2_table(30) := 'AE6D94C330B71B29D495B11953CABF1593DD15DB369090B9E8264CB86B09C113C4A52EDF4092C4541C2901E2A5800E7EC21A3B0EB94BEE8E29418D18E3B9FD4E0821D0444B3546D247338D94005D0A4F108EE2F52D123E9A025A51368F898AE6CDD307D5';
wwv_flow_imp.g_varchar2_table(31) := 'B28D85A404A8DDDFA3FB2D2946669875634CEE72A64CD77390AD159212201E6C0A21E02E1CA18B6E875D4266865E0DD95EF570E8564BB6E3315026C3135EDA90CCFC3ECD7585DF9074D017A3CF08317A534A8004043A9B9B625452636639D243AF7A3815';
wwv_flow_imp.g_varchar2_table(32) := '40FD0968DDFD44A703BE769A37696CB42ED328E71408AFEF298086C011493479C8C5F8CE875E8FE073D943E3DEFFD5AB90E64AD08FB2ECA4ECC2D25DA145D5F62AFB0074E1E35DE0F14F46B86E0AA0082A9049ABF2FC4ECD991DEF22485D59048B1A92AC';
wwv_flow_imp.g_varchar2_table(33) := '2F7FF4277434356118D58B211A92422D2A44CA1688EB9E979C4803E9669C78F51790F915637F9D1707D7FF9AAB842C77A27E9469272D40398989E0AEACE6E04178B76D9149F3FFB755F3FB7178DDCBE8E9EE4676A21BB28D7F401F690122DBC1ABF2DC95';
wwv_flow_imp.g_varchar2_table(34) := '1DD9BE0D27D7FE1CC1B656BE2D45E8696CC2897F5D8BE6AAF3FA1761646AE80D03298CEF65A40C00F532F7EA5327CD998CCB48430A3D955DD8FB293E79FA29B4EDDB7B75A418BBD2681DCFBB6D2B763DF93D54EFDF077EAB604CF8F59418337540E6480D';
wwv_flow_imp.g_varchar2_table(35) := '10D7905FB42FA165802CB71B5DAD2DF8F4E59FE1E347BF8D43CF3D8333FFFE6F7AF756FFF676443354FFF7669CFAC55A1CF8E10FF0E1437F8723BFD90A1108A02835052519E9FAD317D745C6203D4057441F45DFE2F1E40C7E0CF65157D670F204CEEDFC';
wwv_flow_imp.g_varchar2_table(36) := '33396B1B0E576E8E6A38FEBBEDA8FAF413345DBC4073E80279498998342C133C8EBB62BFAC47DB00C40E484D4840717A9AEE9C316969FA37BC2039199EE4A4A886C29464DDAE89D4524ECDCA04BF96CBDD2FDB2C7B70C85E81BEEC77D3222BCF15F1379C';
wwv_flow_imp.g_varchar2_table(37) := 'E16188A219F29292C02D23CFA0CB36CFD397BEBDEFD912A0DE1554E79155400114597D6D9FBBAD01B2BDF762A0820AA0187082CC26180748131D32575CD9FE8502C1203ABFB81ADC9961808443013438A96337B6195F1A068826520D531BBB52C6A76566';
wwv_flow_imp.g_varchar2_table(38) := '7C6918203802AA0BB30B6F267C6918207750756176E1C78C2F0D03D42334FB766176216380F530E34BC30009B7537561037450AC4733E34BC3009D77675D2261BA28A84D6E05BAC2BE34540BC300CD79ED35BF26B0C750A92A51CC28C03E645F1A35C830';
wwv_flow_imp.g_varchar2_table(39) := '405CA0003E80FA48AD80591F9A0228A800921A1E36DEAC0F4D01D49590B69B8C50E3201241D2AD2BEC43C3E69B02A8F8F5D7BB3468DB0D976EBB847255887DC73E3463B5298042056B6B4347B5974F01F3BE330D50C1C66DDC8DA9A731F9E8D913F69D29';
wwv_flow_imp.g_varchar2_table(40) := 'CB4D03C4A56B1A542B04B93E56F9CC12803CD50DFCBBC517E49230AEADBD18F69969112C01487CF001FFD9C2EF9AB6466530240A6841ED11F69915855902101B52B069CB76A169EBF85C85D855807D54F0C6D6B7ADB2D03280D8A0BCB49CA70444E84F6D';
wwv_flow_imp.g_varchar2_table(41) := 'F10D1506AAC090C41334F1CB3EB2B2304B0112B43E160838BF45063653505B6C29E0D582AEFBD947569A6529406CD8F037DF3C2B02DA2D807696AF55880905CE41046EF7BCF186D76A6B2C07880DCC7F73EB3EBF33380710EF417DA2AB80863FFA9D81D9';
wwv_flow_imp.g_varchar2_table(42) := '9E0D6F1D8884211101880D2D5AFFD6A5FC6EDC41E7BFA2A0B6E828F052BE5FDCC6BE8854F15EC75574000001BF494441541103880D16959501CFC62D8F50774601DD7C4F852151A05383B89FB47F927D10C912230AD015C33D1BB7FECAE9146301F10C2D';
wwv_flow_imp.g_varchar2_table(43) := 'E055417D22A5C00568F809695D52B0B17273A40AE99DEF9000C405E6AEAFBCE8D958F99CA7DB510C887B29BC036A9A28A8CD84029434208478DB21C4DDF9DD628C67D39667596BBA3F24DB900174A536DCA412486F51B8C3D52DB284165CAC09F118FD9C';
wwv_flow_imp.g_varchar2_table(44) := 'FFD6ED413A86FE97139DA8ED1A05589B83D4CAACD780C71D4171B323B13B2B7F43E5D2BC0D95FFC3DA62883F430E50EFFA6557565ECEDFB4EDA3820D95EB3C1BB7ACA1309D828B44C9102E311C09CEF1F4F8590A810510E2369A825F1A0F81EB0ABDCE81';
wwv_flow_imp.g_varchar2_table(45) := '52D680B5604D581B0AD33D9BB6AC2ED8B8656DDE1B951FE6FDD76F5B7B6B3AD4E75105A8BFCAB228F9AF57D67A7EBDF994871E3F3D1BB6ECF26CA8DCC153F0F110B8AEA13ABF758035602D5893FEF48AE6FD9804289A82A8B207A7800268707AA9D85F52';
wwv_flow_imp.g_varchar2_table(46) := '4001F42541D4E5E01450000D4E2FFBC4B6A8260A208B848CD76C1440F1EA798BEAAD00B248C878CD460114AF9EB7A8DE0A208B848CD76C1440F1EA798BEAAD00B248C8F8C9E6EA9A2A80AED6435D0D520105D0200553D1AF56E0FF000000FFFFD695BD19';
wwv_flow_imp.g_varchar2_table(47) := '000000064944415403005EE0FD8A982D36910000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(832991416287534956)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D797455C779FFE96DDA9F84D00642484208B18B5D1803F502182F491A6C9FB64EECB4397512DB496CB7364E8EE30DDB711BDBF192A471DA';
wwv_flow_imp.g_varchar2_table(2) := 'B47FF49CF6B83D3D39AE13EAA58740588D63C0607610169B9010A07D7DEF4999EF4A77DE4546D293DE7D4FF7CEFD7434F7CE9D993BF3CDEF9BDFDCD99FABEE6B77F5B2610C9C5A065CE03F46C0C10830011CAC7CCE3AC004E052E0680498008E563F67DE';
wwv_flow_imp.g_varchar2_table(3) := 'C10460E53302DC04E232E07004F80BE0F002E0F4EC33019C5E021C9E7F2680C30B80D3B3CF04706209E03C4B049800120AB6381101268013B5CE799608300124146C7122024C00276A9DF32C1160024828D8E2040406E691093010117E7614024C0047A9';
wwv_flow_imp.g_varchar2_table(4) := '9B333B100126C04044F8D9510830011CA56ECEEC400498000311E1674721E02002384AAF9CD9081160024408140753130126809A7AE55C458800132042A038989A083001D4D42BE72A42049800110265EB602CFCA00830010685863D9C800013C0095AE6';
wwv_flow_imp.g_varchar2_table(5) := '3C0E8A0013605068D8C3090830019CA065CEE3A00830010685863D544060B83C3001864388FD95468009A0B47A3973C321C004180E21F6571A012680D2EAE5CC0D870013603884D85F6904142680D27AE3CC99840013C02420391A7B22C004B0A7DE586A';
wwv_flow_imp.g_varchar2_table(6) := '9310600298042447634F049800F6D41B4B6D12024C009380B454342C4CC408300122868A03AA8800134045AD729E224680091031541C50450498002A6A95F31431024C8088A1E280764060A4323201468A1887570A01268052EAE4CC8C140126C04811E3';
wwv_flow_imp.g_varchar2_table(7) := 'F04A21C004504A9D9C999122C0041829621C5E2904142280527AE1CCC4090126409C80E664AC890013C09A7A61A9E2840013204E407332D64480091007BD748542A8EBE8C4D9B6369C6C6EC191C626ECBFD280430D4D38D6D48C2AE156DBD181D640300E';
wwv_flow_imp.g_varchar2_table(8) := 'D270124604980046344CB4877A7B51DFD98913A2801F15860AF895AE6EB40583E8EEE9D1520AF6F6A05390A355B81141AA5A5A34525CEEEAD2FC23BE70C05123C00418357483BFD81208E06863336ADA3BD02E0AF8E021BFE843A438D7D6AEBD4FF17C31';
wwv_flow_imp.g_varchar2_table(9) := '04BB98890013C044347B44AD4F85F7544B2BA820EB517BBD5EE44D2EC28C2595A858B5060B6FBF0395EBEEC4FCD5B760E6B2E5289E3507E999997A70EDDED51302C553D3DEAE3DF325360830014CC2950A7F9528F8C6E64B4242028A67CEC40251E08B17';
wwv_flow_imp.g_varchar2_table(10) := '2D827FD22424F9D3E1494CD452F5A5A7213D3F0F79E5D330F3A69B5171D32A4C9A5A06228C16405CEA3BBBB4661435A9C423FF9B8C0013C004407B451CD5AD6D68176D7961D5FEB372F3307FCD5AE44D9F01B82283392933030573E7A262ED6DC8CCC9D1';
wwv_flow_imp.g_varchar2_table(11) := 'E2A10B35A33E17E4A274E8998D7908B8CC8B4ABD98A8D66DECEEC66951B88F8B8E2C8DDAD0E8CD61318A73428CDC5073876AFC736274C7D85E9F585C82B2E5CBE14D4D1915286EAF07E5D7AFC084A222F93E759E4FB7B6CA67B6F42110ED9509700D0483';
wwv_flow_imp.g_varchar2_table(12) := 'A22D4F6DEF830D8D5AE127127488CE6C508CDA50F08018C5A1DABEAFF0B7834677C89D4C565E3E0A172C206B74C69580C90B17A188BE20FD3135750770493489FA1FF96602024C80012052213B2A6A786A7B0FF01AF6913AB2A5954B870D379200F9A20F';
wwv_flow_imp.g_varchar2_table(13) := '91919D2D5FA1E152FA324907B644850013C0005FBD18B7AF16CD0C6301CB189785C9D3CA317DF112CCBB7935967CF54E2CBCED76CCBDF12694CC990BF2A7285252D3306DD9F57079DCF468AA299D1FFEA2D057E80ACF1398862F13A01F4A2AFC3562DCBE';
wwv_flow_imp.g_varchar2_table(14) := 'FF116EAF17E562E466FA8D3762C2ECD9C8282C4462861F6260079EA424248F1B87DCB23290FFBC55AB31EBE6559ABBFEBE99776F7ABA46423DCECB9DDDBA95EF5122E08AF27D255EA70EACB1F08FCFCFC7BCD56B9029C6EE11C15FA2DF1F939ADF98748E';
wwv_flow_imp.g_varchar2_table(15) := '209BFE4C7304D429D69FF93E7A046C4C80D167DAF82635774E8B511EDD6D5C4E2EA68AA60CD5F2BA9B15EE9EC444248B66962E0B9156B7F37DF408389E00173B3A41242008BD1E0FA62C5E4C564B9A71B9B952AEAE50DF7A22E9C0965121E06802D0C412';
wwv_flow_imp.g_varchar2_table(16) := '0D65EAC84D119D4DABD5FCBA6C74F71B26C73AC5B02CB9B1890E014713A0598CABEBB5BF2F310999A2A30B8BFEF5881A3FD015EEFC120168528E0CCD57D0126B5A794AA358346F414B332C9A154B89E568023489595E5D1B19D9E375ABA5EE6D972EE3F4';
wwv_flow_imp.g_varchar2_table(17) := '9E4FB077E36F51B57FDF35652312D3126B5A32D124484D7D9A43622EE38CE8DBD084DD355F62470D014713A03D18D240A04BBA61B2899EC7DA74B7B4E2C4B66D38B8750B6A4F9F46C8B0CE081108475F800641705AB2415F852E6E325D13354713806A4E';
wwv_flow_imp.g_varchar2_table(18) := '1D95B42CEB7C01CE1F38807DFFFF01AED45FD4C5D3EE39E5E5987DCFD7B1F4D90DB8FE95D7B0F2AD5FE3867FFF4F2C7FFDE758FAD4B358F0D0F731F3EEBF104DB9C95A78FD425F05DA9473BE8D9756EB98E8774713806655752068624BB78FD53D286678';
wwv_flow_imp.g_varchar2_table(19) := '8F6ED98C73274F4811BCC9C99879D7DD58F1B37FC2AC279F41F6DADB9034652ABCB97970A5F42DB6F3646521A96C1AFC954B91FBA5AF60DE8BFF8065CFFF18252BFF4CC643964B227EDA7E69243EB93BD9389A00AE8404A9FB90682EC88731B0743434E2';
wwv_flow_imp.g_varchar2_table(20) := 'E0A64D68BA7245A65EB6F6565CF7DACF90FBE5AFC29D71F586191968108BAFA818457FFB6D5CFFF24F5160589C47DB2F695F322DE81BE45547393B8A00D414A8696FD736A1D392666A27EBDAEE126D6EDD3ED27B8FE84B349E3D8B933B77E2F0EF3761FF';
wwv_flow_imp.g_varchar2_table(21) := 'FBEFE193FF7D077B7FFB2E8E6EFD03CEECDB87FA1327D15A57070A3B307E6AEF1FDAF607747576685E09623E62E1430FA3E09E7B652DAF798CE2E2CDCB47D9238F61FEB71E80478C745114348244BBCDF84B00284F80606F2F68DD3E0D155267B0BEB30B';
wwv_flow_imp.g_varchar2_table(22) := '540B0EAC01BBDBDAA86C8CC874B7B68A119A3DF8E477EFE2D81F3FC6E5DA0B68696C44A7205948743A0381009A2E5DC285CF4FE1D467FB7168C776EC7D6F23CE7DFA29A8C6A7C48810C776ED949D5C6F720A2A7FF434D22B2BC9DB3493B17C052A9F7B01';
wwv_flow_imp.g_varchar2_table(23) := 'BEFE66139180468B4C4B204E11999D8CD204A01AFF58633368B26BA8DACEE74B44EA088641A9B9745614E27D1F7E80DAD3D5E8EDF9E2AC6C664101B2A7947E415F21418AF3A7AA7060F326ED6B7172E70EB4B7B668E112D3D2B0F8A967B436BEE660F2C5';
wwv_flow_imp.g_varchar2_table(24) := '3B7122E67FEF11192B2DA7A8312C00941E0EB2B854CD2BD5FA54E307FB37B1503EBD5E2F26161763C6D2EB5071F36AC8CDE977DC016F7FCD48E186320DD5D5D8279A3835A2101BC34D5A5C8945DF7F142B5E7B531B9999F7D2CB98FDECF39A7DC54FDFC0';
wwv_flow_imp.g_varchar2_table(25) := 'A2C79EC00CD199F5A624CBD75AC4D7A2E152BD7C9EFBED07E19B54289F6361499E351BB3FFEA6B32EAFACECEABB6724A0F8758942300B5EB69A4836A7D5D875E9F0FA51515DAE6F4C2050BE117356152861F9EC4BECDE97AB8A1EE3D621CBE7AF76E1CDF';
wwv_flow_imp.g_varchar2_table(26) := 'BB47365792FD9998F7CDFBB1F257FF8AA9DF7B18698B16C33D3EBC79458FCF9D9D83B4B915C8139DD9EB5E7D13656BD6EA5EF25E203AAAA915F3E4732C2DD9B7DE8E6C316AA4A751DBD1A95B1D77578E0054F8A98DAF6B32B7A00015B7DC8AECD2A9A2C7';
wwv_flow_imp.g_varchar2_table(27) := '33BAEC52E13FBC7933EACE9FD3A345C98A9558FC93579079C38D7089A14AE9318CC5959A8A82AFDF87652FFD0479E533B4D0D4399D72DFDF68F6785DCAEFFF8E4C8A9A424E5D5E3DBA1221A1B396859A3DB41C40978AF6D3962C590AB7D7A33B8DFCDE0B';
wwv_flow_imp.g_varchar2_table(28) := '54EDDA85B69666EDDD24311CB9F8F12750240A903E0EAF798CF0E22B9884194F3E85651B5E44E50B3F863BCE1371DEFC7C4C5DB5464A7D590C0EC80707596C4480A1B5420BC08CCD9EA2F2E9A0FDB44818FABDE17CCF7F7600FA8CACD649DDF00252E754';
wwv_flow_imp.g_varchar2_table(29) := '0CF75AC4FEBEE212D05065C42F9818307FCD2D32B666D139175C97CF4EB12841006AF79F354CF3674F2C40FEAC5951EBB0EDD265392B9BE0F660FE63EBE11E971575BC5689C0933F0199857DCB266894AC5590C02AB2C54B0E2508502F3EDF440202CD2B';
wwv_flow_imp.g_varchar2_table(30) := '26918A456794ECD19A6AC3EACB05DF793066C393D1CA19CDFB7973E6C8D7A92F201F1C62518200C6A64FA1A8F9DD269CCCD078EE1C5A9B9AB46290535E2E26A6CC3DEE448BD80217FFCCF097D2B83AD602A2C54504DB13806634F5595D57820BE38B4A4C';
wwv_flow_imp.g_varchar2_table(31) := '01AEB6AA4AC65368E82C4A47452C49A2B9A867859A41BADD2977DB1380667B756565174C84CB84DA9F666B9B2E5FD2A24D4AF3237DE118EF13D62489CD25213945461CEC715E37D8F60468171354BA06B3C4D0A26E8FE6DE7CA146BE5E7CD34D4810FD0A';
wwv_flow_imp.g_varchar2_table(32) := 'E9A09885E625F42C1967CD7537D5EFB62740D0B00E273923C3147DB55D6990F1F8A7CF9476152D3DCD7DF31B94374F82ED8B03656344C6F6390EF4863FDBEE112C6D180A255ACDA9FB7BFCE9BA55C97BB0B9AFA34F99F3B8A29C34A1486C66EC4F00C317';
wwv_flow_imp.g_varchar2_table(33) := 'C0EDF59A027F577B78EBA04BF4014C89D4A29184FA47BA483C9FCBF6C581B2312263FB1C7B0D4A0B1A8E0D19110A030277B487F7067832CD69560D48C2328F2D55E1ED972916ECEBC41A28FB13C0B8ADB16BE4AB1A03A2B6A7DD5C170E1EC4891D3BB06F';
wwv_flow_imp.g_varchar2_table(34) := 'E346B9DA5303DF4030ED59B14BCDCE9D3247C9268CA0C9C86C62B13D013C8602DA69F89C0F89BF18EE6BAEA911057E3BF6BEFF9EB69BEBCCF163B852578BEE0124EA0D04878CCACE9E81BA3A34D69C975968EAEE863EA7221D15B7D89E002986CF76636D';
wwv_flow_imp.g_varchar2_table(35) := 'EDB0EA6A3E7F1E9F8A427FE4A35DA2C0D70D197EC6BABB9010CD4AD221631F7BCFDE016B7FE8976E0E3736E16C5B1BE8A0ADB19730F612D89E0019BE70C797F6E4223C2874157AB4A6FFCCDE3D38B2FB23B9F95C0F30BEB804B3EEFE4B5CF7F473B8FEE5';
wwv_flow_imp.g_varchar2_table(36) := 'D7B0F297FFA2EDE4CAFBF3757A1025EFBE499350F9C31F61C29CB957E58F8840472DD2AFD15CE5A1E083ED0990E47623D1E506FDD126F486B3A7C97A95E9686CC4A14D9B70A1BAFA2AF7A9AB6FC1F2575FC79C0D2F22E74B5F4622FD44695E1E8C934357';
wwv_flow_imp.g_varchar2_table(37) := 'BDA0E043F28C99287FFC07DAB943B3EFB91789A9A93297B51D1DA01F0754F96B606102483D0C6BC9494E9461AAF71F40C8D06EEF6868C0A12D9BD1DED62AC3142D5DA615FC49F77E039E9C5CE9EE640B9D3B94BDF65654BEF23A4A6F5E25A1A01F07A45D';
wwv_flow_imp.g_varchar2_table(38) := '7601C370B3F454C0A20401B2C404187D09481FDD816E9C12CD1C9A1F0B8A1AECC88EED08F52BCFE5F16AE7E3943CF85D2EF804D6350C7DFD0ABFF14D2C59FF03B8055E1484BE0055CDAD0812A8E4A090518200347F596038D5E1CAC53A9CD9F3098E6CDB';
wwv_flow_imp.g_varchar2_table(39) := '868018D9207DD106F6CAA79E059D8F43CF6C86462065F65C2CFEE193F0F59F62413FCB541DC5E16143A73676BE4A1080E04B13A335B9494964D54CED99D3D0CFDB49707B307FFD13482C3167A9B49680032E4965D330FFD1C781FEB916DA38AF5AC75819';
wwv_flow_imp.g_varchar2_table(40) := '0240FC4D10B5D5389F4FD8AEFE5FF0C043F04D2EBADA919F224220B97C3A667C659D0C4B1DE38E60F85879E961538B5204201D4C4E4B85715563E1924AA40B437EB6311613346FDD9DC899562EA5BA20FA56F2C1E616E508D0190A89CE5ADF5185090909';
wwv_flow_imp.g_varchar2_table(41) := '982CC6F76DAE234B885F76DF5F4B3968EF30E12C1D6C6C518E00C6366AC9CA1BE015E3FA36D68F6544A726E4E4A5E17DD1469C2D23E42804518A00B4A795CE07D2719870EB6DBA95EF262050704B184FC2593F89C384A8C72C0AA508409F661DC93431C1';
wwv_flow_imp.g_varchar2_table(42) := 'E5356CF8D6DDF93E7A04124BA7222D3B4746D06AD88E2A1D6D66518A006D8619E08995D7D9BA270671000005FD494441544C15F610B760D93229682C0ED29291C7C9A214018C1D337F69699C207456327EC368900AC3A14A1120D0135E0AEA1B3FDE5925';
wwv_flow_imp.g_varchar2_table(43) := '334EB9F51A8E7FA73E579C928D59324A11C0A8104F9C4F5B8E99862C16B137374F4A64AC70A4A3CD2C4A112068F8351897DF6F3355D843DC04930E1EB04A6E9522805B4C7CE9C086145CB8A5E76D2CEF3DADE165E546BCC752A668D2B61001A2C946DFBB';
wwv_flow_imp.g_varchar2_table(44) := 'C62510A1C6C63E47BE9A8A408FE1C40CB78BD6E19A1A7DDC23538A003E77383BA16626402C4A53574DF8D848FE02C402E128E24C311CEBD17AEA541431F1AB8321D07CF2B8F44A325438D2D1669670956933C1AF256EB23BFC5B6035BB775D2B08BB4589';
wwv_flow_imp.g_varchar2_table(45) := '40E3F13001D214E8102B458034AF07AEFE8E70C399D30844704C4A94E5C151AF879A1A5177F488CC739AE1481AE968338B5204A036A9DF502B9D7FF71D7BA8C326525EFCF07D29291D47A35736D2D18616A50840F8E724194E88D8BE1501C3C967E4CF66';
wwv_flow_imp.g_varchar2_table(46) := '740884AE5C46D5871FC897730CDB4FA5A30D2DCA11804E8A337E053EFFAFB76DA816EB897CFC9FDF42B0AB4B132CD9ED46AA02CD1FCA8C7204A04CD1DE60BA93A9D9B707CD1F850F802537362343A0590C28D41D3E245F2A480DFFAC9274B4A945490224';
wwv_flow_imp.g_varchar2_table(47) := '891A2A3F3959AA64DFAFDE4277F5E7F2992D912340B87DF66FBF962F50135395DA9F32A52401286379C949A0E610D97B4341EC7DF91FD1C973030447C4A65B8CA4FDF1A51711E8DF044F47501A2B9688231A22E0587B294B0002B6382D15FA0F6874B634';
wwv_flow_imp.g_varchar2_table(48) := 'E3E3179E43CBC7BBC98BCD300834EFDA818F9F7F4E14FEBE5FCB211CA7F8D3E430F330AFDBC65B690290D24AD3D3A0FFF44F4F30803D3F7F0327DE7815C1DA0BB651523C05ED696DC1A95FBC89BDBFFC85E8F4766A49138E53FDE91247CD51918BD20420';
wwv_flow_imp.g_varchar2_table(49) := '1D258AFE4059861FC6499BF37BF660FBFABFC759D1B60D5EBC48C11C6F420D0DA879FB3FB0FDE1EFE2CCEE8F241ED49F52B5F053265D7451DD78C4EC70A9A8C106B65FABB6FC1EDB1F7B049F3DFD24EA7FF72EBA4E9E00FD6A4A4F5B9BD290D092E68098';
wwv_flow_imp.g_varchar2_table(50) := '25EF387208B5EFFC068744D370DBC30FE1F8FF6D448FE14733B21313512670D3BFA02A82E20802E88AA38E312974E028C665314274E8BFDFC6AE0DCF60C7E38F62EB03F763CB7DF7286BB63EF82DEC58FF77D82D3AB8477FF33FA83F7E4C8748BB5367B7';
wwv_flow_imp.g_varchar2_table(51) := '44341D69B85385D95E2D53835CC6900083481463671A19A24FFA34BF1FE3450D67DC4310E3A42D1F3D35778AC4C0C1F44C3F8C938996173C0A011D47001DAB648F1B93C484CEAC7119DA677E62FFC1BA296EB71C39D2C3AA76A7355354CBA788D9DCAC44';
wwv_flow_imp.g_varchar2_table(52) := '1F0A050EE5A29F4426D3E7532DBB43E6C7B10430A2420581D6B6D0C1BAD4619E9999818AAC71CA9AD9E33241B53C35070B53539125BE8454FB1B31718ADDE5948C723E19816B21C004B8162AECE61804980063A16A4ED3320830012CA30A16642C106002';
wwv_flow_imp.g_varchar2_table(53) := '8C05EA9CA6651060025846152CC85820C004180BD4394DCB20C004B08C2A9C2188D572C904B09A46589EB822C004882BDC9C98D5106002584D232C4F5C116002C4156E4ECC6A083001ACA6119627AE08C4910071CD1727C608448400132022983890AA08';
wwv_flow_imp.g_varchar2_table(54) := '300154D52CE72B2204980011C1C48154458009A0AA66395F1121C0048808A62803F1EB964580096059D5B060F1408009100F94390DCB22C004B0AC6A58B07820C0048807CA9C86651160025856356A0866F55C3001ACAE21962FA6083001620A2F476E75';
wwv_flow_imp.g_varchar2_table(55) := '04980056D710CB175304980031859723B73A024C00AB6B88E58B29023124404CE5E6C819015310600298022347625704980076D51CCB6D0A024C005360E448EC8A0013C0AE9A63B94D418009600A8C0322E147DB20C004B08DAA58D05820C0048805AA1C';
wwv_flow_imp.g_varchar2_table(56) := 'A76D106002D846552C682C106002C402558ED3360830016CA32A7B086A3729990076D318CB6B2A024C0053E1E4C8EC860013C06E1A63794D458009602A9C1C99DD106002D84D632CAFA90898480053E5E2C81881B820C004880BCC9C8855116002585533';
wwv_flow_imp.g_varchar2_table(57) := '2C575C106002C405664EC4AA083001ACAA19962B2E083001CC8099E3B02D024C00DBAA8E0537030126801928721CB6458009605BD5B1E06620C0043003458EC3B60830016CAB3A6B086E7729FE040000FFFF8BBB2AAD00000006494441540300EBF15139';
wwv_flow_imp.g_varchar2_table(58) := 'FFBF50AD0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(832991750086534956)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D077C1CE599FF9FD9A66A4B6E5AB977E35EC10D836D02065228B67480654A924B7209974F7204421AC4B44B2EE5937049F8E79F5C0E122C';
wwv_flow_imp.g_varchar2_table(2) := '4322DB40800402170C1C2D341BDBE06E2C1B2CC945B6D5B565EE7956DED9D17A256D999D9DDDF9AD6634EFB4B77C9FF7FDCD3BEF3BF38E83F0030110B02D0108806D4D8F848300110400B900046C4C00026063E323E9F62620A987000805CC2060530210';
wwv_flow_imp.g_varchar2_table(3) := '009B1A1EC90601210001100A9841C0A604200036353C926D6F02E1D44300C224B004011B128000D8D0E848320884094000C224B004011B128000D8D0E848B2BD09E8530F01D0D3801B046C46000260338323B920A0270001D0D3801B046C460002603383';
wwv_flow_imp.g_varchar2_table(4) := '23B9F626109D7A08403411AC83808D0840006C646C241504A2094000A289601D046C44000260236323A9F626102BF510805854B00D046C420002601343239920108B00042016156C03019B108000D8C4D048A6BD09F4947A08404F64B01D046C40000210';
wwv_flow_imp.g_varchar2_table(5) := '6564F5AB97E735DE745569C34D95E5C73F7BEDC893D7578E6D58BD6AE291AACAA9F5D7AD9A7974CDCAB9475757CEC36C41066C1BB191D84A6C26B6131B8A2DC5A662DB2873DB7ED59602507FCD35E3EB5757ACACAF5A75577D55C5E33CBFCBF3473CAB0D';
wwv_flow_imp.g_varchar2_table(6) := '278ADA3B7DAE46D5A71EF177FA6B3B82EA7E5551763B48DD410E656B5075BC1D54D4B7305B9001DB466C24B6129B89EDC486624BB1A9D8566CCCB3D85A6CFE78280F485E58BD729C1DD5C01602D0B0BA7276FD9A8A3BEAAB2A5FACAFAA682657602F29B4';
wwv_flow_imp.g_varchar2_table(7) := '9148B99388AEE47936CFC378C6640F02626BB139DB9EF380E405C5B14FF246DD9A8ACD75AB2BBE57BFE6EA59B982A2B774E4A400ECA8ACF434AC5EF5C9FA35AB1EA8AB5A55AB2AEABBA4D2DD44EA850CA388674C20108B4091A2D25245A17B48756E6141';
wwv_flow_imp.g_varchar2_table(8) := 'D8CFF9E8E77555159F903C15EB846CDF965302D0B0A672021BEBDF077B42D5F6A74955BEAC903232DB8D84F8678CC058BE95F89A42F4BCE4A986D515F7491ECB586CD21070D60B404365657143D5AACF7115FF655555F7B0B1BECD9C86F38C09048C2430';
wwv_flow_imp.g_varchar2_table(9) := '5C55E83B92C7EAAB2A5E6A585D7993E43D2303C8845F592D00F5559557AB1EF5759594DF914A4B32011061DA92C0057C5BF960D0A36EAE5FBDEA522B13E82B6E59290047D6542CE3C2FF1ADFD36FE2044EE3191308984E806B9BF348519E91BC2879D2F4';
wwv_flow_imp.g_varchar2_table(10) := '0818106056098054B91AD6543CE250E9052EFC0B0D483FBC00010308A80B254FD657553C2C79D4000F4DF3226B0480EFF11773757FABAAD2B5A6D1414020901881356A5E708B3C2496D869993B3A2B04800BFF0D14BAEA932D1FD6C85CF640C809135095';
wwv_flow_imp.g_varchar2_table(11) := 'F141457D359467133ED9D813E2F1CDD202A012290DDCF5C285FFF744E4E11913086403018FE4D986AA8A7BAC1E59CB0A803C78C1003748D78BD521227E20108B005FC0BE57BFBAE2F7929763EDB7C2364B0A80BA6C996B8847DDC88056F28C0904B29780';
wwv_flow_imp.g_varchar2_table(12) := '42370CF6A83592A7AD98084B0A40C3F0C17F60F5FCB41581214E209004812B384F3F98C479499F12EF899613006E3CF92147FE3A9E3181402E115873266F5B2A4D961280BAAA8AAF73E3C9ED962284C88080510454BA3D94C78DF2CF007F2C2300F5552B';
wwv_flow_imp.g_varchar2_table(13) := 'CF57887E6A409AE00508589600E7F19F345C576999C7D62D2100A156524591AE3E4BC4C7B2B90711CB05024ED5A13E18CAF3694A4D22DE5AA2C00DCE53EF2655199F48C4712C0864318109A13C6F8104645C00EAAEBF7A3AA974AB0558200A20601E01CE';
wwv_flow_imp.g_varchar2_table(14) := 'F375559533CC0B30764819170025E8BC97A3E6E4191308D88980532135E34F0A665400B85B64315BFC4A9E3181801D095C69748360A210332A005CF5FF71A211C6F120904B04824E556AC0194B52C604A07ECDAAAB38D55203E0052610B0270145A5A50D';
wwv_flow_imp.g_varchar2_table(15) := '6B2A2FCB54EA3326002A295FCF54A2112E0858894090D46F652A3E1911808F57AF1CCDCA274374672ADD0817042C4340CA42DDF59563538D5032E76744009C0EC76739B20ACF98400004881445556FA40CFC4C170095887B3FE826C20F0440204240A51B';
wwv_flow_imp.g_varchar2_table(16) := '426523B2C51497E902505FB57201A76C34CF984000042204C69E291B912D26B84C1700457148EBBF0949431020905D04B86C24DD1B906C4A1DC99E98F479AA627A22938E2B4E04013309A8647AD93055008E5E7BED302275A6994C111608641181F9272A';
wwv_flow_imp.g_varchar2_table(17) := '2B4BCC8CAFA902A03A022B387168FD67089840200601A5D3AD5E1E637BDA36992B008A8AAFF9A4CD94F0381708280A2DA3047FA91C6EAA00704467F38C090440A06702A69611D304405DBB56C2C2FD7FCF86C71E10100233CE941571A77D964299F64024';
wwv_flow_imp.g_varchar2_table(18) := '80A3BB7748E12F1037661000811E09141EDFB56D528F7B0DDE619A00A84A10F7FF061B0FDEE52601BFA2C47D1B902A01D30480C8BC44117E2090C5041407E5A4008C21FC400004FA26A0D2E4BE0F32E608136B00546E4C94E10B08E43A01C5B48BA58902';
wwv_flow_imp.g_varchar2_table(19) := 'A04200723DDF227D061188AFAC1811982902B0B6AB0B70901111861F2060030203CDEA0A3445006EAE7DA7888DE6E21913088040DF04DC47DE7E3BBFEFC3523FC2140170051D18F73F755BC1071B112818E4F498915C5304A023A09892183380210C1030';
wwv_flow_imp.g_varchar2_table(20) := '83405F65C6A8389822004E55410DC0288BC11F5B1030ABCC9822009DFE00EEFF6D916D9148A3089855664C110007A1066054C6803FF620605699719881D39197875B003340238C9C21D05B99313291A608803348680434D26AF02BE709385432E5A2698A';
wwv_flow_imp.g_varchar2_table(21) := '0074E6BCB99040103096804FEDCC1D0130160D7C030110308A80293500A3220B7F40C0EE048C4E3F04C068A2F00F04B2880004208B8C85A88280D10420004613857F20904504200059642C44D5DE04D2917A08403AA8C24F10C8120210802C3114A20902';
wwv_flow_imp.g_varchar2_table(22) := 'E92000014807550BFA1954556A0F04A8C9E7A3E31D1D54DFD61E5A9EECECA4669F9F64BF05A38D28A599000420CD8033E97D6730480D5CD0F79C3A4DDB1A4FD22E5EEE6F6AA6C32DAD54D7D6165A1E6C6EA17D4D4DB4E3E42912B7084226E38CB0631348';
wwv_flow_imp.g_varchar2_table(23) := 'D7560840BAC866D0DF367F80F69C6EA20FB8501FE182DECA57FEBEA223350029FC22023B1A4F8504C2CFB586BECEC3FEEC260001C86EFB9D15FBA3EDEDB4FBF4696AF5FBCFDA5732602079478CA4E11326D2E8C953C83B7214C936A7ABFB700D7E3518BA';
wwv_flow_imp.g_varchar2_table(24) := '451001115138CB236CC8190210801C31A58FABFBFBF8AAFF716B5BB71479F2F2B9B04FA5392B2EA5C9CB97D398F9F369C4CC99543E752A8D39EFBCD0B673AFB892A62DB98006950FED76AED40AA446F011DF3274DB81959C210001C80153FAB9AABE970B';
wwv_flow_imp.g_varchar2_table(25) := '7F73D4557FF8B8F134F392155CD8A790A7B8B8D794169795D184C58B69EEA597D3888913BB1D7B8C1B0DF773DB41B78D58318D403A038200A493AE417ECBD55DEEEBA55A2FEE686F3FE4C2290D7EE1EDFD4A4B69D64517D388D9B3C9E9718737C7B57417';
wwv_flow_imp.g_varchar2_table(26) := '15D2F0193369FA85CBC8ED8E9C2BBD07B5DC6018972738286B0840002C682A29CCD24D2757F5AD271AE97D6ECC93FB7A69D813B76C937DD2C27FA8A5855A7457FE817C259FBAEC22CA2F2D492965458307D18CE59FA082C242CD9F46EE323CD6DEA1ADC3';
wwv_flow_imp.g_varchar2_table(27) := '91FD04200016B2A1DC731FE17B78697C936E3A7DC18E8EA6EC9316FE131D91E1568AFB97D0B8858B891C4AF4E149ADBB8B8B68EAF28BA8B87F7FED7C0953044ADB00475613800058C47C52C5977EFA066EC54F264A9EBC023A67C91272BA8C1D48C69597';
wwv_flow_imp.g_varchar2_table(28) := '4713E62F2052BA4445440AB70264DA2FDD014100D24D380EFF1BF92A2E557CFD95550AF408EEAE9BB27011CDBA78059DFB992B68C1CA5534F7B2CB69C6B2E53462FC042EECAE90EF1E4F1E4DBD6009B9F2D3F335A93CAE018C9C38291496FC93DA87B409';
wwv_flow_imp.g_varchar2_table(29) := '881B737613800064D87E27B885BD96EFE3C3D1903EF931D367D0AC4B2FA5E1DC5DD77FD830CAEFDF8F9C671AE4DC7C4F5E3870200D9F358BE67EF2533461F61C9A79F1C5248534EC473A96E5932753BE4E60E471E27484033FCD250001309777B7D0E419';
wwv_flow_imp.g_varchar2_table(30) := 'FCC32D917E7BB7C7136A7DF74E9A448E38AAF20E978B068D1B474E5DC1EC1680812B12D69859B3351F4F75FA48BA1FB50D70642501084086CC16BA97E62BBF4A6A28066E2ECC33B8C12D3FC5D6FB906769FA57327C38B9CED4442488669F4F1698D344C0';
wwv_flow_imp.g_varchar2_table(31) := '0C6F210066508E118634F685FBF415C541E72C5E42EEA2A218475A6B537169A916A1567F4073C3919D04200019B09B14FC86B6487FFAC88913A988FBDD33109584832C2A890880BC5E9CB00738C152042000193087F4DD87ABFE9EBC7CF272035B06A291';
wwv_flow_imp.g_varchar2_table(32) := '5490C52525DA79AD7E7FE8AD417968491A33A54D43DF93A11D08876509400032601AFDBDF310BEAF9606B60C4423FE20B999A2E5D8713ABC752B1DD8B64D3B2FA0AAA1B706E5A1A5432DADA17105E421A6F74E9C0CBD8E2C0F354977A1B4776827C11117';
wwv_flow_imp.g_varchar2_table(33) := '01B30E820098455A174E7B20A8ADF52FF36A6EAB39827C8FDFB06B17BDFB97A769FB4B9BE9A37D7BA9B33372EBD2537CA57623B50369E790978864B011A92540087A2296B9ED10800CB0F7AB110128D055A9331095D84106553AB17F3F6D7DF6193AB063';
wwv_flow_imp.g_varchar2_table(34) := '3B7576B4773BCE535848C366CFA1B1172EA549977F8AA6ACACA00917AFA061DC4D58D03FD246103E490ABED412769E3A4D8D1D914797C3FBB1CC1C0147E682B667C8D1F7C88EBC3C4B81087476D24EBEDAEFD9F2EE59057FC479F3E9DCAFDD428B7FFD5F';
wwv_flow_imp.g_varchar2_table(35) := '34E996DB68F43F7F89865D5745DEAB56D2881B6EA249DFF8262DF8E50374C1CF7E41733EFF052A8B6ADB90C6CF5AEEFA3CD0D44C72FB60A984DB34321000930D1FE0ABAB3E48A7CBA95FCDA8DBC785F3FD175EA053274E68F170B8DD74CEA73E4317DCFF';
wwv_flow_imp.g_varchar2_table(36) := '2B9AF0D5AF53F1BC73B57D3D399C830651C9D2E534F53B77D2929FFC9C265C7269B7434FFB7CB4E754536890D26E3BB0122260E63F088089B4A52A1C5D03F027F9F24FAC6807B955DEDFD646EDA79BA8ADB191FC1D7DDFAF87FD693F7992B673E16F6D69';
wwv_flow_imp.g_varchar2_table(37) := '0E6FA291F317D092FB7F4943AFB98E9C030668DB1371B8CACA68C4F537D2929FFF8A462F3A5F3BB523D8356EA134126A1BE1309D000420CDC8E56A27C36A49EBB88CCCFB6173A48049D01DA74FCB22E939D43ABF650BBDF3D493F4E69F9FA0B7FFFA17DA';
wwv_flow_imp.g_varchar2_table(38) := 'FAFCDFE8BD17FE4E6F3FFD14BDC5DB7672C1FEF0ADB7A87ED76EF2B775BF9F97807DCD2DB4FDE597B4063EC5E1A0996B6EA4F1FFFA357214F79343529E5D0307D0D82FDF4C336FFA1C29CEAE5A8F08E2871C76471C8396A61C017810930004202696D437';
wwv_flow_imp.g_varchar2_table(39) := 'CACB323B4F9E26B9DF958135A3AFFCE1103AB8DA1D7627B23CBE6F1F6DE5C21E6A9DDFBF8F7C7CEF1EEBFC00D70A4E359EA0FADA83F4E18E6D2C104FD381375EA7E6A347438707B9A57FF7EBAF5280ABE5A10DFC6FEECD5FA5812BBA57DB79B321D3C08B';
wwv_flow_imp.g_varchar2_table(40) := '2EA6F9DFFCB6E69788C081A616B4096844CC7540000CE62D573319ADE730F78B4B35B737EF3D9E3C2A193A9412F99D38702054F0F76EDD42ED5CDD8F756ED1A0C13464D23924CB58FB1B3EFA8876F0157FC7F3CFD1BED75EA5665D2D64E69A1BA8DF790B';
wwv_flow_imp.g_varchar2_table(41) := '629D66D8B6822953691E8B4CD843E124C39A85D7EDBC343BED100003894B17977475C9FBF27A6FFB9596D2C873268746DE9DCD0D62E79E79B77FCEA73F4DCE38DFE40BF8FCB4F3C51769CFBBEF9C55F04B478EA239FFFC055AF2A39FD2D2DFFD9ECEFBD9';
wwv_flow_imp.g_varchar2_table(42) := '7FD2B4EF7D3FB4BCF0B70FD2E2BBEFA3B95FF92A8DE386397DBCA4E09F38DAA06D1AC9ADFC0925FDE6000010004944415403575CA6ADA7D3D16FC1229AB2AA420B420634955A93B6010E530840000CC2DCC0F7D6B551D5F9C143878506E79C7AD12768D8';
wwv_flow_imp.g_varchar2_table(43) := 'B4692423EFE6F52BD6DEED8F3768699DDFFEF7E7E9D4F163DD4E197BE1B250E19E7DDF0FA9E4C2E5E42A1F4A0AB7DAEB0F926E46CF98B1D47FE1221AC55D73220683C78ED51F1272BB0B0A69EC4D9F0FB9CDFAE7BD7225E9E3220F0B991536C2E9220001';
wwv_flow_imp.g_varchar2_table(44) := 'E8E290D27F79C845C6CA0B7BE2E642389D0BE7F8458B283FC5D77BDB4F9EA26D7FFF1F6AD7894BE98891B4F8DE1F703FFC17490A3725F093E3A7DF751FCDFEE297284FF7F6E10CEEC777F4EB97804FC61C3AE90BFFA27924CF09A016A0E130C501014811';
wwv_flow_imp.g_varchar2_table(45) := 'B30C8CA1BF72E51716D28CE59F30E4ED3EE922DCF5DA2BE4D335D04DA9A8A4D9FFFE1FE419353AA598972E594A0B7EFC339A517503CDE22B7FFFF397A4E45FB2277B58CCF4B72652934AD6AF6C3F2F13F18700A440BD83BBAFF4D57E19326BDAD26524A3';
wwv_flow_imp.g_varchar2_table(46) := 'E9A6E0AD76EADED75ED3EEF71545A1F36EFD2679AFB85ADB9FAAC3515C4C832EBD8C06F02D4AAA7EA5727EF98ACBB5D3A5B704AF196B38D2EE8000A480F810B7F4075535E4838CE53779C905E42A2808ADA7FAEFC8FB1F9074DF85FD99FDC57FA1A29991';
wwv_flow_imp.g_varchar2_table(47) := '21B9C2DB7361E9193982CAA74DD79222B52A6D058EB41280002489579E60D3B7F68FE6463EA306E694AAFFE1DDBBB498496B79C9F91768EBB9E8F0CE5FA825EB740FCF346807C061180108409228E55DF7F0A90545C5DC9A3D3EBC9AF2F2A3EDDB2918EC';
wwv_flow_imp.g_varchar2_table(48) := '1A6E4BDEB893D6F2943DB5B8074563233D13F17CCEDCE2C949387A993A0102900479F988471BDFFF874F1D3F772E290E25BC9AD2525AFDEB6A0F86FC70F3EDC4A81B3F1772E7FA3F377761EAD3283D02FA75B8D3430002900457A9FE874F2BEE5F424543';
wwv_flow_imp.g_varchar2_table(49) := '868457535E9E38D455F8C5A3910B165274BFBE6CCFC559C9CF2787CBAD250D02A0A148AB030290045E79C1277CDA80F2F2B0D390E5D1C387357F86E8DE9ED336E6B0A36840A9963A5FD46BD3DA0E380C2500014802A7BE9BAAC46BDC905E1DA79BB46E3F';
wwv_flow_imp.g_varchar2_table(50) := '8956FE8449B2B0CDECCA8B7CDA2CDCBB6287C467328D108004E94BA79F7E349B3C039F9E6B6D3CAEC5A678F010AEFEBBB4753B38DA4E9DD292E97418D3A6A27908474C02108098587ADEE80F46C6F393A31C2EE30A6987EEEDBE62836F2D24AE569ED540';
wwv_flow_imp.g_varchar2_table(51) := '90DA9B226323B814088019F682002448597FF597538D14804EDDF3FEC551ADE212562ECF815327BB25CFE3EC1A34A4DB46AC184E000290205267D495C96FE028B7EDAD910F85E65B78B8F00491C57578FB81FDDA71790E27D9A506A0253A430E084082E0';
wwv_flow_imp.g_varchar2_table(52) := 'DD8EEEC802514366C7EB9D8FAFF68DB5B57464FB76DAFBEAABF4DE33CF50A3EEDD7C7761A4412C5E3FB3F9B8A3FF78438B7E911B577F0D469A1DDD73739A03CB15EF5D4A045B876E349D78D2D7DCD040FBB8C0BFF3EC33B4FBAD37A976F72E3A5E7784DA';
wwv_flow_imp.g_varchar2_table(53) := '5A5BBA9D1EECF4755BCFF5958FB7BCA325511EB4D277B56A3BE0309C4024271BEE75EE7A58E88A5CA14ED6D7C595D053320CD7F3CFD18EFF7D998E7181EFED24776101154DB44F1760A0B1917CBA065079CAF2405333ED3A759A4E2430B2716F4CB12F36';
wwv_flow_imp.g_varchar2_table(54) := '0108406C2EBD6E2DF1449E583BFEF1915E8F95A1BC0EFCE31FB45306E28C515BF04E9D46532BFF2934A4977C7463FE77EEA045F73F409ED1637AF5379776CA90E3B33FF7052A8C1A7A5C9EB790372E658C455F54EF4B2EA4DF0A6980002461857EEE8800';
wwv_flow_imp.g_varchar2_table(55) := '74FA3A49AEEEB1BC693E768CB63FF72C351C3ED46DF7E0B16369DE976FA60BFFFFEF68CAB7BE4B659FB92A34A4977C74A370F2147258EC6B41DD229FA695D265CB69FEFDBFA28577DE45E77CF253E4E15A50382879EB52C65A6C34B0C135ECB7DD971080';
wwv_flow_imp.g_varchar2_table(56) := '2472803404967A3CDA9907B76F2335EAD1D5A6FA7ADAF1D28BD4AEFBF047614909CDF9D29769FADA7BA9DFA2F3C95150A0F901471781FC091369E8B555B4E0073FA661BAF10FE4C9C05A6E3895E1D7BA8EC47F2308400092A4385477856AE38C79E4FD1D';
wwv_flow_imp.g_varchar2_table(57) := '9A4FED7CEFBA8BABFCDA06768C5BBA8CCEFBF1CF28F45E7F545722EFC61445C03960204DBAF59B34F72BFF4AF279B2F06E197E0DC3868569A4BE840024C9D0E370D0605D55FD10B7E6371DA90B7D7967D72B2F937C9043BC76714D4132F1A8CF7F91E48D';
wwv_flow_imp.g_varchar2_table(58) := '37D986397E02FD172EA68577DD4B05BAAF0ECB00ACFA3732E3F7CD3A475A25261080142C5156904F0EDDD57CD79B6F9014FE70B5DF959747F3D7DE4392895308C6F6A7CAC0A173EFF83EB90B0A3516B5CDADE43F331C9BB6118E8409400012461639C1CD';
wwv_flow_imp.g_varchar2_table(59) := 'B580D1C545A4F09F6C95ABBE7C6C43DCC4C230F76BFF46927943EBF8971201B7D74BF3F896407176BD7BE1578354DBDCFDD9899402B0E9C91080140DDF9F7B04461547AE4C61EFA65F731D154E9F195EC5D20002F91327D15CEE3D097B25B701F2DDC5F0';
wwv_flow_imp.g_varchar2_table(60) := '3A968913800024CEECAC33A447A048F756E0E0316368F0273F7DD671D8903A817EF317D0A8858B348FEA5ACFFEDAB1B6D3A20E2B450B02608035E4FB00D2571DF66ADC3FAD0E3BB14C0381D1D7AC2687A3EB69CC8E6080500B481E3204207976DA990DBA';
wwv_flow_imp.g_varchar2_table(61) := 'BEFEC15C4D2D9C1E19E35E3B080EC30838070DA271175FA2F9876E410D45C20E47C267E0846E046484A0C68EC88B3BA32E59D16D3F56D243C07BC9A59AC7F2EE803C36AC6D80236E021080B851C53EB0D9E72395FF427BB9E5BF78C6AC9013FFD24B407A';
wwv_flow_imp.g_varchar2_table(62) := '05E4B3E8E1509A7DFEB0D3D24BAB450E0290A245F4F7FEE553A692A3A828451F717ABC04862E58A01DDAEC8FD4C2B48D70F4490002D027A2DE0FE80844C6082C196FDCD7817A0F157B8540BF711365119ADBFC5D5F520AADE05FDC04200071A38A7D60BB';
wwv_flow_imp.g_varchar2_table(63) := 'EE0B41798306C73E085BD342C03D7080E6AF2FEA652C6D071CBD128000F48AA7EF9D3EDD7BEA790306F57D028E308C806B6084B7B4C3F82DFE68B0610937D02308408A30A51720EC85B3A424ECC4D20C02671E0B0E0715D08971781B96BD138000F4CEA7';
wwv_flow_imp.g_varchar2_table(64) := 'CFBDF29E7AF820D5D7197662690201B523328AB209C1E56410108014CD2A2F0485BDF0EBBE6C13DE8665FA08A851E305BA1CC8CE89D206B14489451DEFE6BEFFF026DFC9C6B0134B1308F8741F1391D7B2A3BFD9604214E20EC2AA07420052B48CFE0B36';
wwv_flow_imp.g_varchar2_table(65) := 'A73FFC3045DF707A22045AF7EFD30E97015AB41538E2260001881B55EC03F56F017EFCCE5B147E2830F6D1D86A248153BBF768DEE9EDA06D84A34F0210803E11F57E803EE375B6B652C7BE48A6ECFD4CEC4D8580EAF7D347EF463E2652EC76A5E29D6DCF';
wwv_flow_imp.g_varchar2_table(66) := '8500A468FA029793F4D5CF136FBD49F8A59F40F39B6F905FF759B6627764A8F6F4879E5808563E1A0260807506E4458608DFF7FCDF2818E303200604032F74040EBFF0776D4DBED3E0D235C66A3BE0E8930004A04F447D1F30282F4F1B1CD4DFD949479E';
wwv_flow_imp.g_varchar2_table(67) := '78ACEF937044D204DA76EDA4FA9D1F68E797E5E76B6E3812230001488C57CCA3E559001181F0CE7DFFF33C058E1F0BAF62692001E9FBDFFEEB07341F0B9C4E2AC6FDBFC6235107042051623D1C2F438487FBA183C1007DF0CBFF24D58757547BC095F4E6';
wwv_flow_imp.g_varchar2_table(68) := '238F6DA0169DB80E2F3A7B40D6A43D4FC38956F71202609085E41E74A46E2C8063FBF6D2BE077EC9DD82FAB7050C0ACCA6DE9C7AE905DAFDD7BF68A91FC2557F7D2F8CB6038EB8094000E246D5F781251E37E96F050EBFFD261DFCDD6FFA3E1147F449E0';
wwv_flow_imp.g_varchar2_table(69) := 'D8534FD2BBFFF55B4D50F39D4E2A2FC0BD7F9FE0FA380002D007A044770F2B2CA042DD10E1075E7A91B6DFB396024DCD897A85E39980F4F71FFCEDAF69FB9F1EE1B5AE49DA5CC6F62BD61A5EBBB6E27F32042000C950EBE51C79265D32A75CA1C2871DDB';
wwv_flow_imp.g_varchar2_table(70) := 'B39BDEBCFD1BD4F8C2F3447865358CA5CF65E0F871DA76D79D74E0E597B463E5998B89FDFB757BF642DB6931473644070290062B497BC004CEA4FAFBD3F6E626DAFAE07FD33BDFBA8D5AB66E4943A8B9E3A5AFBE8E0E3FFC7B7AE5B67FA3130723EF5748';
wwv_flow_imp.g_varchar2_table(71) := 'E117AE5203C89DD4663625108034F1971E01C9AC83F3F2BA8570BAEE08BDF9D31FD1DBB7DE4247FEF428B5EFDAD56DBF5D573A0E1CA063CFFC8576FFE43FB8E0DF427B9F7B9682FEC848BF033C1E9A54D29F50F88DCD21100063799EE59B74538DE3FBD5';
wwv_flow_imp.g_varchar2_table(72) := 'E88CDBD45047BB9EFA33BD7EDF5DB4F986D5B4E5BBDFA27DBFBA9FEA36FC898E3EF944CECFF59B36D27EEE25D9FABD6F87D2FFDAF7BF4BDBD7AFA38FDFDBDA8DA108A97C807554711189BBDB4EACA44C00029032C2BE3D90475527F3D56B6841418F99F8';
wwv_flow_imp.g_varchar2_table(73) := 'E4A15A3AF4C61BB4F3CF8FD38E9A3FE6FCFCC1E31BA9F6F557A9B1F6604C8052D8E509BFC9A52524DF5E8C79908537664BD4200026594A1A07E561A1299CA1471415527FB71BADD851ECA5D08B588A500AA7A1DCA322ED29518761D5400210000361C6E3';
wwv_flow_imp.g_varchar2_table(74) := '9564727956407A0A660C28A549FDFBD34816042FF769DB692EE7DAD0F0C24292EABDB038876B48D39987DC2E89500A27C22FED0420006947DC7B00052E270DE486422910769A45EC06E7E79154EFA536A4EF36ED9D18F61A49000260244DF8050244944D';
wwv_flow_imp.g_varchar2_table(75) := '102000D9642DC415040C260001301828BC03816C220001C8266B21AE206030010880C140E19DBD09645BEA2100D96631C417040C240001301026BC02816C230001C8368B21BE2060200108808130E195BD096463EA4D1100B742816C8483388340A60838';
wwv_flow_imp.g_varchar2_table(76) := '1D9E4E33C2364500821000336C8930728840B0A3C3948BA6390260526272C8FE488ACD090449CD210130293136CF33487E0609181DB4C7E58C0C8764B4E73AFF4CA9019895185DBAE00481AC26105072A806E07205DBB2DA1A883C08984C20CFA9E64E23';
wwv_flow_imp.g_varchar2_table(77) := '60698BBBD5647E080E04B29A805965C6945B00A5A6A69314EAC86A8B20F220D00301C3377359099519C33D3EDB4353042014AC4A75A125FE810008F44EC0C4B2629E001004A077AB632F08741150158A7C0D85D2FB8300A4972F7C0781C409A8AA69B565';
wwv_flow_imp.g_varchar2_table(78) := 'F30440A19D8993C01920606D02E9889DA228B957035083840FE2117E20D0370133CB8A69350097AA4200FAB63D8E000132B3AC98260083CE99B19B6D1BE41913088040CF045ACF94959E8F30708F6902A0AC5D2B857F8F8171875720905102690A7CDB99';
wwv_flow_imp.g_varchar2_table(79) := 'B29226EFBB7B6B9A0048B02AA9B80D10109841A06702A6961153054021DA4CF8810008F442C0DC8BA4A902E022F5294EB9CA3326100081B309A88E80FBCF676F4EDF1653056050F5A6C344CA7B841F08643981F4445F796FC8A38F7E9C1EBF63FB6AAA00';
wwv_flow_imp.g_varchar2_table(80) := '84A2A0A8CF8496F8070220D09D4006CA86E902C05D011080EE66C71A088408A86AF0F190C3C47FA60B4079E1C057387D0779C6040220102150EBFDE8C45B9155735CA60B80F29BDFF848A187083F10C852026989B6420F2A9B379B320EA03EFEA60B8004';
wwv_flow_imp.g_varchar2_table(81) := '1E08061FE4257A03180226106002FE80A2FC372F4D9F322200C3D66FE25B00E56FA6A71601828035093C3DECE19ADA4C442D230220090D2AEA0F65891904EC4E20A8D0CF2943BF8C09C0D0751B361329CF127E209045048C8FAAF26C575930DEE7787CCC';
wwv_flow_imp.g_varchar2_table(82) := '98008422A7F86F0F2DF10F046C4A801BC26ECB64D2332A00DE758F6DE5C43FC1332610B0238127CAAB6BB66532E119150049B8A228B7F2B299674C206027022DE4777E23D309CEB80094ADABD9CBD5A03B320D02E183405F048CDDAFDEEAFDE31FF719EB';
wwv_flow_imp.g_varchar2_table(83) := '67E2BE655C0024CADE4EE517A4D0FF8A1B3308E43E01E5156FF5C65F5B219D961000A5A626A090F25906825B01C77E27610000047149444154868029A70970D5DF71A355526809011018722B408A7A13BB833C6302815C24C0795BB9DE0A55FF305CCB08';
wwv_flow_imp.g_varchar2_table(84) := '8044C8BB6EE346AE097C57DC9841C04A048C888B4AF40D6F75CD6346F865941F96120049545975CD0F5595E45D0159C50C0239414051D5FBCBAB3764EC89BF9E205A4E0024A2DEE2815F22959E13376610C801028F0D9934E3162BA6C3920220AF0C078A';
wwv_flow_imp.g_varchar2_table(85) := '3BAE62609B78C60402D94CE0894051C71A3387FA4E04962505401230EC374FB696556FA85088EE9575CC20902902C986CBF7FC3FE03C7CB5E4E564FD48F7799615004938177E9501DE410A49B74940B66106812C20D0492AADE17BFEEF481EB6727C2D2D';
wwv_flow_imp.g_varchar2_table(86) := '006170DE751BFEA03AD4F3797D17CF9840C0CA04B63938AF7AD76FA8B67224C371CB0A0190C8963FBCF18D5677F16CAE0DDCC5EB3E9E3181809508F8F8AA7F4F59D1C079431EDE68FAD87EC982C81A0190048E7DE8A176AE0DAC75389DD315457952B661';
wwv_flow_imp.g_varchar2_table(87) := '0681741288C36FBED5A70D9C1FA7F255FF4E69C08EE31CCB1C92550210A636E40F7FDC5DB6AEE60AA2E0122245461926FC40C06C027C7FBF5909A8F3BCD51B2A393FEE353B7C23C2CB4A010827DC5BBDE9156F75CD1295828B88D487F9F6A023BC0F4B10';
wwv_flow_imp.g_varchar2_table(88) := '480B01853A389FF1FD7D704959F586E5658F6E7C372DE198E469560B40985179F5A6D7BDD51B6F0804DC23F83EEC3652D48CBF66198E1B963943603FA7E4F600E731BE0D5DE3E58B0FAF67FD94130210B6C2B0471E39C6F7613FF1AEDB388154F532DEFE';
wwv_flow_imp.g_varchar2_table(89) := '804AEA215E620281840984F28EA2FE3F529415DEEA0DE379FE91E4B1843DB2F0093925007ACEDEF51B9F6583DD5C5EBD71142981D9AA4A7710292F11510BCF9840201601CE1B9C4714BA535195399277F862F215EFBA9A9C7D2C3D6705406F5D197BB07C';
wwv_flow_imp.g_varchar2_table(90) := 'FD867BB9BD60298B4231A9C1F17CABB08ADB0DEEE6E3644CC22DBC34F5ABAC1C1EA6CC11105B8BCDD9F6EADDA1BCE0774E90BC11CA23EB36DC53B6BE46F6672E8626856C0B018866E95DBF69BF77FD864DDEEA8DDFF7566FB88AE7393C0FE759291BD892';
wwv_flow_imp.g_varchar2_table(91) := 'EF71FB07286E65A8CBE31A95E750C629AA3A2948CA340AAAB31C4A709E4355CEC56C41066C1BB191D84A6C26B6131B8A2DC5A6625BB131CF626BB139DB9EF380E4050B0CCF159D4FCD58B7A500F40656F9C55F3B063CF4F8C9B2876AEA063DF8E8A1D287';
wwv_flow_imp.g_varchar2_table(92) := '6B0E94ADDFB8676875CDFBDE4736BE3764DDA67786ACAF791BB30519B06DC44662AB32B699D84E6C28B6149B8A6D7BB3BD7E9F5DDC1000BB581AE904811804200031A0601308D8850004C02E96463A4120060108400C28D8646F02764A3D04C04ED6465A';
wwv_flow_imp.g_varchar2_table(93) := '41208A0004200A085641C04E04200076B236D20A02510420005140B06A6F02764B3D04C06E16477A4140470002A083012708D88D0004C06E16477A4140470002A08301A7BD09D831F510003B5A1D69068133042000674060010276240001B0A3D5916610';
wwv_flow_imp.g_varchar2_table(94) := '3843000270060416F62660D7D44300EC6A79A41B049800048021600201BB128000D8D5F24837083001080043C0646F02764E3D04C0CED647DA6D4F000260FB2C000076260001B0B3F59176DB138000D83E0BD81B80DD53FF7F000000FFFF91BF63DA0000';
wwv_flow_imp.g_varchar2_table(95) := '00064944415403000D7C25D3EECA710E0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(832992091973534957)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF40000022C494441547801EC944B6B135114C7FFF36C327DD89866929A9A6911EDA292955050288614DD296A5C292E44B4DAA2E856D0855F402874A10BBF8F6E54044528';
wwv_flow_imp.g_varchar2_table(2) := '346D53DA4C9BB421934C268FE99D45DF69CE34A594C25CE630F79E7BEEB9BFF9CFBD875F7994B24FD3789C72F3003C053C05CEAE0266BD0EDD3451AAD58E55498EA480D56860AD5241CEB2605FBA82E8F86D748D5E872E4A6D43B806A8B2CD0B8120C263';
wwv_flow_imp.g_varchar2_table(3) := '09846E8C2130A8811705C8DD5D50AFC651ACB6A7846B8042B58AC8C80844BF0F52A782AD66158B281825C8C95BA85C1BC552B98CBA6D6F4D936F12C0F9F25570E0FBA31098D41B990CF4C579146A0D64D369AC3380D8E414C2F71F20F2F8092EBFFF8865';
wwv_flow_imp.g_varchar2_table(4) := 'D382DB4602E459A6819B09F4C7E3B08C222CA513B1A9B708A71E427BF30EDAC4248BD879E49806657878C741F448003118DA4E61E83AA277EE6E8F0FEB2803170F9B3AE02701EA15133576F2F3D92CA4A12108C1BE0349F63B7CA11072EC7ABA39092480';
wwv_flow_imp.g_varchar2_table(5) := 'B49E4759EEC085E72FA1DE4BEDDFABE9B8379184F6E11372ECCC340DD8E524019CD8BEE4B8F33A9289AA0A313648AE21019C5BC0F9153251B300E95C4F33F71E1F09D02D49B0D2737B16B91934583D58FBF19D0C25017C8280CCB7AF307EFD84CD0E2399';
wwv_flow_imp.g_varchar2_table(6) := '9115A1D29FDF989DFE0C9523A341023829028681D52F33F8FFFA15FEBE78DAD2FE4D3CC3CACC34CE6716D0C1E09DF5ADCC158093A087FD0A9595E188DF8F56166631BDB20C9EE39C65A4B9062033B519E001780A780A9CB802D4EDDC040000FFFF98861B';
wwv_flow_imp.g_varchar2_table(7) := '0A00000006494441540300C928F221E19A4EDB0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(832991168270534955)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD07985C5799E0FDB75257E7A0D0522B67A9952CC9922CD906E36C0CC6A42127C31007868C896360C83030305F9867F69965F6DB9D61E7DB';
wwv_flow_imp.g_varchar2_table(2) := '191876C8C109076CE39C14AD68E5963AC70A7BDEC6320A7D435557B8F79EBFDCE5EEAE73EEB9E7FD9DEABAEF3D3754FCE81B5F9DE78101AF015E03BC06780DF01AB0EB351017FE21800002082080806502222400D60D39012380000208204002C06B0001';
wwv_flow_imp.g_varchar2_table(3) := '0410400001EB0434606600548107020820800002960990005836E0848B0002082060BBC01FE32701F8A303FF470001041040C02A011200AB869B6011400001046C17381D3F09C06909BE238000020820609100098045834DA80820800002B60BFC297E12';
wwv_flow_imp.g_varchar2_table(4) := '803F59F013020820800002D60890005833D4048A0002082060BBC099F193009CA9C1CF0820800002085822400260C94013260208208080ED0267C74F0270B607BF218000020820608500098015C34C900820800002B60B9C1B3F09C0B922FC8E00020820';
wwv_flow_imp.g_varchar2_table(5) := '808005022400160C32212280000208D82E707EFC2400E79BF00C0208208000029117200188FC1013200208208080ED0213C54F0230910ACF2180000208201071011280880F30E12180000208D82E3071FC240013BBF02C0208208000029116200188F4F0';
wwv_flow_imp.g_varchar2_table(6) := '121C0208208080ED024EF1930038C9F03C0208208000021116200188F0E0121A0208208080ED02CEF1930038DB508200020820804064054800223BB404860002082060BB805BFC24006E3A942180000208201051011280880E2C612180000208D82EE01E';
wwv_flow_imp.g_varchar2_table(7) := '3F0980BB0FA5082080000208445280042092C34A500820800002B60B78C54F02E02544390208208000021114200188E0A012120208208080ED02DEF19300781B5103010410400081C8099000446E48090801041040C076013FF19300F851A20E02082080';
wwv_flow_imp.g_varchar2_table(8) := '00021113200188D880120E0208208080ED02FEE22701F0E7442D0410400001042225400210A9E124180410400001DB05FCC64F02E0578A7A0820800002084448800420428349280820800002B60BF88F9F04C0BF1535114000010410888C000940648692';
wwv_flow_imp.g_varchar2_table(9) := '4010400001046C1728247E128042B4A88B0002082080404404480022329084810002082060BB4061F1930014E6456D0410400001042221400210896124080410400001DB050A8D9F04A05031EA2380000208201001011280080C22212080000208D82E50';
wwv_flow_imp.g_varchar2_table(10) := '78FC2400859BB104020820800002A117200108FD1012000208208080ED02C5C44F02508C1ACB2080000208201072011280900F20DD4700010410B05DA0B8F849008A736329041040000104422D400210EAE1A3F30820800002B60B141B3F0940B1722C87';
wwv_flow_imp.g_varchar2_table(11) := '00020820804088054800423C78741D01041040C07681E2E3270128DE8E2511400001041008AD00094068878E8E2380000208D82E3099F8490026A3C7B20820800002088454800420A40347B711400001046C17985CFC240093F363690410400001044229';
wwv_flow_imp.g_varchar2_table(12) := '400210CA61A3D30820800002B60B4C367E1280C90AB23C0208208000022114200108E1A0D1650410400001DB05261F3F09C0E40D6901010410400081D0099000846EC8E8300208208080ED02A5889F04A0148AB481000208208040C80448004236607417';
wwv_flow_imp.g_varchar2_table(13) := '01041040C07681D2C44F02501A475A4100010410402054022400A11A2E3A8B0002082060BB40A9E22701289524ED2080000208201022011280100D165D4500010410B05DA074F1930094CE9296104000010410088D00094068868A8E2280000208D82E50';
wwv_flow_imp.g_varchar2_table(14) := 'CAF849004AA9495B08208000020884448004202403453711400001046C17286DFC2400A5F5A43504104000010442214002108A61A2930820800002B60B943A7E1280528BD21E0208208000022110200108C120D1450410400001DB054A1F3F0940E94D69';
wwv_flow_imp.g_varchar2_table(15) := '11010410400081C00B9000047E88E8200208208080ED02E5889F04A01CAAB489000208208040C0054800023E40740F01041040C07681F2C44F02501E575A45000104104020D0022400811E1E3A870002082060BB40B9E2270128972CED22800002082010';
wwv_flow_imp.g_varchar2_table(16) := '60011280000F0E5D4300010410B05DA07CF1930094CF969611400001041008AC0009406087868E2180000208D82E50CEF84900CAA94BDB0820800002080454800420A00343B710400001046C17286FFC2400E5F5A5750410400001040229400210C861A1';
wwv_flow_imp.g_varchar2_table(17) := '530820800002B60B943B7E1280720BD33E0208208000020114200108E0A0D0250410400001DB05CA1F3F0940F98D59030208208000028113200108DC90D0210410400001DB052A113F0940259459070208208000020113200108D880D01D0410400001DB';
wwv_flow_imp.g_varchar2_table(18) := '052A133F0940659C590B0208208000028112200108D470D0190410400001DB052A153F0940A5A4590F0208208000020112200108D060D0150410400001DB052A173F0940E5AC59130208208000028111200108CC50D0110410400001DB052A193F094025';
wwv_flow_imp.g_varchar2_table(19) := 'B559170208208000020111200108C840D00D0410400001DB052A1B3F094065BD591B0208208000028110200108C430D0090410400001DB052A1D3F0940A5C5591F0208208000020110200108C020D0050410400001DB052A1F3F0940E5CD592302082080';
wwv_flow_imp.g_varchar2_table(20) := '000255172001A8FA10D0010410400001DB05AA113F094035D4592702082080000255162001A8F200B07A0410400001DB05AA133F094075DC592B02082080000255152001A82A3F2B4700010410B05DA05AF19300544B9EF522800002082050450112802A';
wwv_flow_imp.g_varchar2_table(21) := 'E2B36A0410400001DB05AA173F0940F5EC593302082080000255132001A81A3D2B4600010410B05DA09AF1930054539F7523800002082050250112802AC1B35A0410400001DB05AA1B3F094075FD593B02082080000255112001A80A3B2B4500010410B0';
wwv_flow_imp.g_varchar2_table(22) := '5DA0DAF19300547B04583F02082080000255102001A8023AAB4400010410B05DA0FAF19300547F0CE80102082080000215172001A838392B4400010410B05D2008F19300046114E80302082080000215162001A83038AB4300010410B05D2018F1930004';
wwv_flow_imp.g_varchar2_table(23) := '631CE80502082080000215152001A828372B4300010410B05D2028F19300046524E80702082080000215142001A82036AB4200010410B05D2038F1930004672CE80902082080000215132001A818352B4200010410B05D2048F19300046934E80B020820';
wwv_flow_imp.g_varchar2_table(24) := '80000215122001A81034AB4100010410B05D2058F19300046B3CE80D02082080000215112001A808332B4100010410B05D2068F19300046D44E80F02082080000215102001A80032AB4000010410B05D2078F19300046F4CE81102082080000265172001';
wwv_flow_imp.g_varchar2_table(25) := '283B312B4000010410B05D2088F19300047154E81302082080000265162001283330CD2380000208D82E10CCF8490082392EF40A010410400081B20A9000949597C611A8AE40DEAC3E9BCFCB582E27A3E63192CD8EFFACCF69993E4C15BE1040A08C0241';
wwv_flow_imp.g_varchar2_table(26) := '6D9A0420A82343BF1028424037ECBA91EF1B1B93932323727870480E0C0CC89EBE7ED9DDDB27BBCD77FD795FFF801C1A189413C3C3D23D3A2A0399CC786250C42A59040104422A400210D281A3DB760BE4CC5EFDA0D968EB46FE59B3217FC66CD8B7F7F4';
wwv_flow_imp.g_varchar2_table(27) := 'CA0EF3D8D5DB2F7BCD06FEE0C0901C371BF89ED13119327BFE3A03A03301FAB3260827C613846193200C8E27083B4D82A0CBEFEDEF1F5F4E93828C598FDDD2448FC0640582BB3C094070C7869E21709E806E90758FFDC0731B7DFDAE1B72DDA00F3FB791';
wwv_flow_imp.g_varchar2_table(28) := 'CFE473A209425EBC27F8B58ED6D59983D3C981260C87CCCC8126157B4D627174685834D9F06EEDBCEEF20402080458800420C08343D710D08DAE6E7C8F998DB0EE9D3F79AA5B74FA5E9300DD6897534813039D05383234243A3BB0BDBB570E0D0ECA5026';
wwv_flow_imp.g_varchar2_table(29) := '5BCED5D2360291120872302400411E1DFA66B5806E7C0F98A9FCBDE671D86C8475EABE9A2023B9AC393430620E2FF48BCE0A688250CDFEB06E0410989C0009C0E4FC581A81920BE854FC7EB3D1DF6D8EE59F1A1D0DDCC9797A2E81CE0A3CD5DD237AFE81';
wwv_flow_imp.g_varchar2_table(30) := '1E7A2839020D221009816007410210ECF1A1779609E8F1773DF6AE1BFEBC8F63F8D5E4D143107AFE81F6570F51302350CDD160DD08142E400250B8194B20501601BD646F6F7FBF846D8F5A672CF410855E85A02723960587461108A140D0BB4C0210F411';
wwv_flow_imp.g_varchar2_table(31) := 'A27F9117C8E4F3A253FEC7868727156B4C6252575F2FAD1DB364C6A2C53277D56A5978E126597EE90B64F555D7C8DA97BE4CD6DEF872597DDDF5B2F2CAAB65D96597CBC2CD5B64EECAD5D23E6F9EB4B6B6494D3C6E5A8915D50F3D34A02728EAE1019D1D';
wwv_flow_imp.g_varchar2_table(32) := '28AA11164200818A09C42BB62656840002E709E8D9FCDBCCB1749DF23FAFD0CF13B19834B44D91D92B5749E7E557C8AA6BAE93E55BB7CA8275EB64D6F2E5D23EDF6CD8DBDBA5A1B949EA6A5252974848437D9D34B5344BDBD429D23E67B6CC5AB15C166E';
wwv_flow_imp.g_varchar2_table(33) := '3489C215578C27092BB66C91F679F325994CFAE9C1597574C3AF2708EACD877466E0AC427E41C02A81E0074B0210FC31A2871114D0CBFBF404BAFDFD83A21BCD42424C99BDF41973E7C9D2CD17C9BAEB5F222B5F74B9CC59B1429ADA5A25118F15D2D479';
wwv_flow_imp.g_varchar2_table(34) := '7513C98434CF9A6512828DB2EE861B65A5993DE858B848D2A9D47975DD9ED0731976F4F4897E77AB47190208544F8004A07AF6ACD962013D694E4FA02BE444BF582C2EB3162E94D5575F2B0B366D922973E6483A9D96496EF31D472161728926337B306F';
wwv_flow_imp.g_varchar2_table(35) := 'FD7A33B370ADCC5AB64CE2F18463FD730B32F9DCF3F72C38B78CDF1188BA4018E2230108C328D1C74809E8C65FA7C9FD0615377BFC33E7CF97F5D75C2373D76F909A867ABF8B96AC5ECA241A7357AF910BAEBD4E662F592AB198C90E7CB4AE098E9E1770';
wwv_flow_imp.g_varchar2_table(36) := '6278C4476DAA208040250548002AA9CDBAAC17E81D1B93A3C3C3A21B463F184D4D4DD2F9C217C9BC0B374AAAA1C1CF2265AD5353572BB3D7AE9555575E2DB54DCDBED7F5ECE0E0F8870EF95E808A08845A201C9D270108C738D1CB0808E8C65FCFF6F773';
wwv_flow_imp.g_varchar2_table(37) := 'BD7C4C62B270E952E9BCFC4A699CD2667E0B0E40CC74A5A1B949D65C71A5CC5FBEDCF44D9F314F7A7CE9F90E7AD2A347358A1140A04202240015826635E115D013F6F4443D3DAB5D2F75D3EF997C7EFCE43DDD986BB95774BA9C5EE7AFED78D5AD35D3ED';
wwv_flow_imp.g_varchar2_table(38) := 'AB2EB944DAD7AC9558D2FF3177AF764B5D1E4FC465E6AAD5B2E6852F94161FB3133AEBA14900F70A28F548D05ED004C2D21F1280B08C14FDAC98806EE0F5036F746F558FD71FE81F10BDDB9D3E76F7F68DFFBCA7AF7FFCDA7D9DDAD60DBBD6D58DFC449D';
wwv_flow_imp.g_varchar2_table(39) := 'D424E199DE7E5F37F899D1314BD65C758D34CC98315153817CAE6EDA34596E662A66CE9EE5D93F4D02F49C00FD8023CFCA54400081B20A9000949597C6832EA07BF2FAA13B7AF39ADD66E3BEA3A7577699EFBAB1D78FDA3D32342C7A8DBE6EB0F40E7DBA';
wwv_flow_imp.g_varchar2_table(40) := '91D7EFFABB4EE99F1C1995E3E698BED6DDD9D327BABC4EF39F32CF6BBB5A579305FD201D2F8B8EF9F365DE96AD124FD778550D5C79AC2625F32FDA2AB3162EF2EC9BCE82ECE91B08DC671C78769C0A08F812084F251280F08C153D2D91804ED9EBC659F7';
wwv_flow_imp.g_varchar2_table(41) := 'DCF7988DBD7EE88E9E95DF9FC9887EE29E6EE433F99CE89EBBEEB1FA59ADD6D56574794D18F60F0C8C27127A7B5C6DD7AB8D19B3E7C8DC0D1BCB76499FD7FA4B553E67DD7A993667AE67736A75687048742C3C2B53010104CA2240025016561A0DA2804E';
wwv_flow_imp.g_varchar2_table(42) := 'EDEBDEFAF6EE3FEEE5EBAD7707B359B311AAEE6668464787CCDBB4497C5E591744DAE7FBA428BA09C90000100049444154312CDCB851A6F83884A13709EA191D7D7E597E40200A02618A8104204CA3455F8B12D0BD739D92DF6B8EE5EB5EA79FE9F8A256';
wwv_flow_imp.g_varchar2_table(43) := '54C4422D53A69A8DFF45128F47E74F516359B0798B344F9BE62AA2B32B7A8E4575D32FD72E528840A405A2F3AE13E96122B8620574C3BFCD1CD7D729793D6E5F6C3BE558AE2E5D2B8BB75E2CF1009FE95F6CDCA95452169924406F20E4D6861E32D124C0';
wwv_flow_imp.g_varchar2_table(44) := 'AD0E65088447205C3D250108D778D15B9F027AA2991EE33F303018C893CD621293457A739F109EF0E77308245D9B96F9176EF2ACAEE75FE855149E15A9800002251520012829278D05412093CFCB9EBE7ED163FC3ACD1C843E9DDB875973E74AE3CCF05C';
wwv_flow_imp.g_varchar2_table(45) := 'EA776EFFFDFE3EC5C4D8BE78896B751D233D34E35A894204422010B62E9200846DC4E8AFAB805E76A797E1E959FEAE151D0A13B198343635CBEC65CB65D1FAF5B26CCBC5D279D9E5B2FA9A6B65CD4B6E90D5E6A177E75BB2F51299BBF60299B174D9F887';
wwv_flow_imp.g_varchar2_table(46) := 'F2D436349A7DFA9843AB673FDD585F2F332FB8E0EC2723FA9B8ACC59B3566A1A9B5C23D413347B46C75CEB50880002A515200128AD27AD555160249B95BD7D0352CC9DE6EA9B9A645E67A7ACB9F26A5975F5D53267F56A99BE7091B4CDEA90E6A953A4A1';
wwv_flow_imp.g_varchar2_table(47) := 'B151EACD747D837934B7B5CAD48E99326BC91259B0668D2CD97C9159E61A597ED9653263C14249A4528E0A3193262C58BF419235358E75A256908AC764C9C68D26F2986B68C78686C62FBD74AD4421028115085FC7E2E1EB323D46E07C81FEB1CCF81DFA';
wwv_flow_imp.g_varchar2_table(48) := '0A39C33F198BCBECF9F365FD5557CBEAABAE918ECE95926E76DF533D7FCD62366C2249B3916B993A55E66FD820EB5E7CBDACD8BC593A4C92509F4888AE27666A3599C4A073D32609D35DFEA444FF9AA64C910E934CB935A797640E66B26E552843008112';
wwv_flow_imp.g_varchar2_table(49) := '0AC44BD8164D215015019D3E3E3830287A031F3F1D889B69FE1966E3BCF2F2CB65CE851BA5A6B959CC537E16F5AC13333592C9A4B4CC992BF3CC61824E935C2C36B3040BD7AD93A5575E254DE6D8BFA962E5D78CCE551233FFB905AF7757742BA70C81A0';
wwv_flow_imp.g_varchar2_table(50) := '0A84B15F2400611C35FAFCBC806EFCF5FA7EBF7BFE33A64D93752FBA5C16988D735D6BEBF3ED94EB87644383B49A4305D3172D929439F65FAEF584A1DD9A9666993E7BB66B57FBC7C6380CE02A442102A5132001289D252D5558406F20A397900D6632BE';
wwv_flow_imp.g_varchar2_table(51) := 'D6BC60E54A59F0C2CB24D5D6E6AB3E954A2FD061C620E6320B309CCD09B300A577A7C5720B84B37D1280708E1BBD360287CCB47FD7C888F9C9FDAB369992955B2F96192B3ADD2B525A7681DAA626699EEE7C8740BD24B06BD87B4CCBDE51568080050224';
wwv_flow_imp.g_varchar2_table(52) := '00160C721443D433FD4FF8D8F837D6D5CB8ACB5E244D1D1D516408654C6DB3DC3F367820930DE4CD9B42894DA72B2210D69590008475E42CEEB71EF7F773E3980673CCBDF3F22B246D8E3D5BCC15B8D09B66CE320701628EFDCA4B5E067C1ED6716C8402';
wwv_flow_imp.g_varchar2_table(53) := '0410F0142001F024A242D004F413FDF4863F6EFDD269FFF1FBECD7A6DDAA51560581B449CC5AA64E755DF36836E75A4E2102C111086F4F4800C23B7656F65CF7FEBB46465D638F99FDCB259B374B5D4B8B6B3D0AAB239088894C99E37E3580DF4B3AAB13';
wwv_flow_imp.g_varchar2_table(54) := '016B45201A022400D118472BA2D0B3FEF593E3F4E37D9D028E998DFFA2952BA561E64CA72A3C1F0081C619EEE7648C64B35C0E188071A20BDE0261AE410210E6D1B3ACEF3DA3A372C2E3C4BF9953A7C8B4152B2C93095FB8350D0D92AAAD75ECF8582E2F';
wwv_flow_imp.g_varchar2_table(55) := '5E87791C17A60001047C099000F862A252B50574EF5F3FDED7AD1FE9784266AF5BEF5685B28008E861809AFA06C7DE8CE573BEEFECE8D8080508945D20DC2B200108F7F859D3FBA14CC67583A053FFB3E7CD9504C7FD43F39A489B5900A7CEEA611EBF37';
wwv_flow_imp.g_varchar2_table(56) := '78726A83E71140C05D8004C0DD87D2800878DD1DAE2E959429DCE82720A3E5AF1BB52E0980B6A01FF0A49703EAEC8FFECE0381A00984BD3F2400611F410BFA3F96CB49EFE8986BA41D4B9648A2BEDEB50E85C111D08D7A2CED7C0E80F674289B95BD7D03';
wwv_flow_imp.g_varchar2_table(57) := 'B2BBB74FF6F6F7CBBEFE81F1C781810179766050F490905E12DA3D3A2A9A206AC23094C98ECF14E90C82B6C10301049C0548009C6D280988809E0CA61B03A7EEE8A7FBB52D59EA54CCF30114181D1A9691FE3ECF9E65F2B9F19B02F598045037F4FA3839';
wwv_flow_imp.g_varchar2_table(58) := 'F2C793418F0D0F8BDE104A13833D7DFDB2BBAF4F76F4F6CAF69E5ED1A44113044D083C574205048A1208FF422400E11FC3C847A0B7FD750BB275DA7489A7526E5528ABB240DEECF28F988D74D7AE5DB2FD8EDBE5D19FFF4C4EECDE55965EE9DEFFA0993D';
wwv_flow_imp.g_varchar2_table(59) := 'D004619726052621D0644067097436A92C2BA551044228400210C241B3ADCB0363EE9FF6D7366BB6C46C430949BC59B3E77E6AEF5ED97DC76DF2E8AF7F25BB1E7B54BABBBA246FFEAB44089A0CE8EC9126037B4C02A20F4D06F40443939354A20BAC23A2';
wwv_flow_imp.g_varchar2_table(60) := '0251088B04200AA318E118F48E70A339E7B7EA543C2EAD7CD04FA05E0159335CBD274EC8EE071E90877EFA9FB2E3A107A5EBE449B3C9370555EEE9E96460676F9FEC303303478686C6CF19A872B7583D0255112001A80A3B2BF52BD03F3626599D3F7658';
wwv_flow_imp.g_varchar2_table(61) := 'A0A1B95992F5750EA53C5D5101B37D1F3A72447699BDFDA7EFBC434E1CD81FE8BBF90D9BC304478786456705F4DC828A5AB1B2900B44A3FB2400D118C7484661B6273298C9BAEE39D6B74D8964ECA10ACACCD0F41F3C28DB7EFB1B79EC9EBBA5DBECED87';
wwv_flow_imp.g_varchar2_table(62) := 'A9FFC32611D013097546E0E4C848A0939630B9D2D7E00B9000047F8CACEDA11EBF1DCDB97F2A5CBA8EBDFF6ABE4046BBBB65CF1DB7CBB607EE979EDE9E9274252631D12B3B92B1B8E8219EDADA5A696C6A966693ECE9099F8D4D4D5297AE959A4442B48E';
wwv_flow_imp.g_varchar2_table(63) := 'D69512FCD3C30307078664775FBF789D785A82D5D1448805A2D2751280A88C6404E3D01900B7E97F0DB986E97F65A8F82397C9C8A1C71E93476FBB558E9D3AE97A98C6AB73F16452DAD75D289DAF7DBDAC7FD77BE4C28F7E4C2EFADCE7E5A2AF7E5D2EFA';
wwv_flow_imp.g_varchar2_table(64) := 'D6DFCAE66FFEAD6CF8DA3765DD97BE2A6B3FFF45D9F0D56FCAA66F7D47B67CFB7BB2F5DBDF958BBEF025B9F02F3F249DAF7EADCCDC72B1D4CF9D27892213433D3971D0C4F68C4902F43C011201AFD1A33CCC022400611EBD88F73D6F8EFDEB2C805B98F1';
wwv_flow_imp.g_varchar2_table(65) := 'DA3AB762CACA20D0DFDD234FDDFA5B39B06B67D1D3E549B307DFB668B174BEE14DB2F9B3B748E77BDE2B33AE7FA9B45CFA4269BC60BDA4972C95D4ACD9929C364DE22DCD12377BFDE38FE61689379BDF5BCCF7B636494C9D2AE9050BA569E36699F1B21B';
wwv_flow_imp.g_varchar2_table(66) := '65F97BFE42D6FDC507C71F4B5EFE4A99BA62A524EBEA8B52D044604FDFC0F8CD87B87CB028C2882E149DB04800A23396918CC42B014898E9E148061ED0A04EEDDB274FDF7E9B0CF4F717D5C3FA193365E18BAF978D9FFEACACBDE58B32E3BAEBA5D62402';
wwv_flow_imp.g_varchar2_table(67) := 'B17AB3918EC58A6AF3CC8562F198D4CCEA90A6B56B65CE2B5F2D6BCC7A367EEAB3B2E8EA6BA5AEA9E5CCAABE7ED619013D4170576F1F9F4EE84B8C4A61128887A9B3F4D52E01DDF87B1D02883303509117453E9B93030F3E283B1EFC83E472D982D6996C';
wwv_flow_imp.g_varchar2_table(68) := '6894F9575D2B5BBE62A6EEBFF13732FFF56F92DA858B24169BFC06DF4F476A172C90796F7EAB396CF06DD97AF36764D995574BBD9941F0B3ECE93A7A2ECAEEDEFEF15B0E9F7E8EEF760A44296A1280288D66C462D17300DC428A89FEE75683B25208E4C6';
wwv_flow_imp.g_varchar2_table(69) := '32B2EBAE3BE4D0BEBD053517AFA9918E4B2E950BCD1EF88237BD596AE7CC96582C56501BA5AC1CAFAB93F4AA5532EBAD37C9BA0F7F4C165D7195A44C72E2771D7A5B62FD6C02BD52C0EF32D44320C8022400411E1DCBFBE6B5A9D0E9D9DCD8A8E54AE50D';
wwv_flow_imp.g_varchar2_table(70) := '3F3B32223BEFBC5D4E769DF4BF22B3919FB66A8D5CF8894FCAF277BF4FEAE6CD93583C586F3535E6B0C3BCB7BD5D367FE673326FCB56892792BEE2D3D79C5E29706870507486CAD742548A9040B44209D65F65B46C896692023A031093986B2BF951F74F';
wwv_flow_imp.g_varchar2_table(71) := '09745D98425781ACD9C8EDB8FD76E9EEF177795F2C9994F6CD17C9E62F7E5956DDFC296958B6C2B5FD2014A6E6CC9545EFFB806CFECAD765F60B2F1389B9BFDEC4FCD324E0F8F0883C6B7C32797D959A27F9422084022400211C345BBAACC7FFBDDE8F73';
wwv_flow_imp.g_varchar2_table(72) := '632400E5783D64868664DB9D7748EF80BF93FD1AE7CF97B51FFD84AC347BFCF5F31788F766B41CBD2EBECDDA8E0E5972D33BE5C28F7C429A7D262EFAA9847B7AFB26750964F13D66C96A08446D9D2400511BD110C6A353A9BA27A5275A0D65B2A2675DEB';
wwv_flow_imp.g_varchar2_table(73) := '07B6ECEF1F10AFCBAF46FA7A4318B188EE388E0D0CCAD0B163D2BF678F743FF1B89CB8FFF772E49EBB64FF6DB7C9DE5FFF5A76FFF427E38FBDB7FE46F6FFEE4E79F6BE7BE5C8C30F49D7934F4ACFAE9DA2B7DD1D337BA1DA562911F2E698FFEE7BEE917E';
wwv_flow_imp.g_varchar2_table(74) := 'D3B69F76DBD6AE93351FF9B8B4AD5A2D920AEFA732C6127169BAE002B9E0831F9619EB37F8095DF45307F5B5AAAF615F0B5009810009C403D417BA629980DE82F5D873F762DFD9D32BDBBA7B65476FEFF875D7FAE96D9A107891F475757955094479DE1C';
wwv_flow_imp.g_varchar2_table(75) := 'AAC81C3F2EBD3B76C8817BEF91277FFA9FF2E8AF7E218FDDF53B79D26CD4B79BE7771F7C56F61D392A874F9D94A326B139618EBFEBE368778F1C36CB1E7CF690EC33C9C2AEEDDB64DB638F8DDF76F7D15FFE429EFCD94FE4C0EFEF9593E6F991A347259F';
wwv_flow_imp.g_varchar2_table(76) := '71FFF4443790F1B3FDEFBBC74CFB77BB557BBE6CFE4B6F347BFE1F97745B746EC99C686A92151FFAA82C79F59F89784D4189489719A723E6756C7EE42BD202D10B8E04207A631AE888748F5EEFAE76606040F4DAEAC366AAB9DF6CB07463AFC7560BEDFC';
wwv_flow_imp.g_varchar2_table(77) := '50D7894217A958FD9C99CD187AF65939FCFB7BE4A95FFC4C1EBFFB2ED9FEE41372E8F06119181D2DC9D4B11E2619301BA043870EC9EEA79E92274D72F1D4CF7F26471FFC830C1F392CBA41F71DB0399C7DF081DFCBE163C73D17493537CBCAB7DE240B5E';
wwv_flow_imp.g_varchar2_table(78) := 'F35AB38D0CDB84BF6778E331CDB9E1E5B2F6BDEF97444D8DE702278647E4D40827A47A42512150022400811A8EE8764637F047CD5E926EF4F536AB7AFC54375E938D38A31B5233653DD9764AB9FC585F9F1C377BE8DBCCDEF913F7DF27FB0F1D96D3494E';
wwv_flow_imp.g_varchar2_table(79) := '39A78AB56D4DB0FAC7C664EFBE7DF2C4BDF7CACE5FFD524E99BE8C9D3AE519E2C96D4FC921D357AF8AE929D3E482F77E40DAAFBC5AA2B7E93F237AB3F73F65CB56D9F0B19BC5EB86539ABC1E34874C7456EB8C16F8314202510C8504208AA31AA098FACD';
wwv_flow_imp.g_varchar2_table(80) := 'C679776F9F3C6DA6B18F98BD7D4D044AD93DB3D31A988DD050D749D9698E9D3FF4EB5FC933E6187DDFC870552F15D304EBD4D0A0EC307D79E4F6DB64F7ADB7CAE09123A266E78E41FFB163B27BDBB6739F3EEFF71A333DBEE9339F93C655ABCE2B8BEA13';
wwv_flow_imp.g_varchar2_table(81) := '0D2B3A45EF2698AC6B700D511330FD54413D9FC5B52285080444800420200311B56E8C64B372706050F6F4F78FEFFD962BBEE669D3259E4A96AB795FED8E9D382107EFB95B9EBCF3763969A6DD7D2D54E14ABA713AD17D4A9E36B302FBEEBC5306BBBAC6';
wwv_flow_imp.g_varchar2_table(82) := '13014D06C6868765EF03F77B262B35CD2DB2F6DDEF93E4F4E915EE7DF55757B770915CF0E18F88D7FD0C7406802B03AA3F5EA5EF41345B240188E6B8562D2ADDA0E8867F5B4FEFF8C951BAE129576792B1B8CC5AB9B25CCD7BB69B31C9CD7E735CFF513D';
wwv_flow_imp.g_varchar2_table(83) := '43DFEC59EB1EB7E74255AE90C9E7E4E889E3F2F81DB7CBCEBBEF9623E678FF2E739842CF2370EB5A2C169395AFA9F1CFA000001000494441547B8334AEBDC0AD5AA4CB9ACC4CC0DAF7BD5F6289846B9C7A65809EE3E25A89420402204002108041884A17';
wwv_flow_imp.g_varchar2_table(84) := 'F4F8F3DEBEFEF10D7FA9638A9989FE782C26FAD09F9B1B1B65E5A5974ABAAD4D2AFD4F4FEEEB7AFA2979F2B7BF91C3478F4EFA643E8D47E34A98F834A949C5E3525753230D4D4D52575B27356683A3655AAF94B19E3A7A44F6DF75A7F49A190CAF7657BE';
wwv_flow_imp.g_varchar2_table(85) := 'E9ADD27AE90BBCAA45BEBC6DF316E97CE35B3CE3EC191D133D31D0B32215422110D54E92004475642B18976EF875AFFFE9EEDE497F584AA2B656EADA6748DB828532D3EC712DD870A12CBDF8525979E555B2F62537C8FA1B5F21EBAFBD4E3AAFB956EAAA';
wwv_flow_imp.g_varchar2_table(86) := '30153DDADB2BDB6EFBADEC7AFAE9497D3A5C8BD9B8CF5BBD4696BFF032597DE38DB2FECD6F938D1FF8A06CFEDC2DB2E5CB5F934D5FF9865CF8852F99EF5F938BBEF62DD96A7EBF483FD9EE2F3E20ABDEF866597CDDF5D2B16993342D58208974BAACA33D';
wwv_flow_imp.g_varchar2_table(87) := 'F7A22D32FDEA6BCABA8E30353EFDF22B8DFF8B3DBBAC57B8E8DF8667452A2050250112802AC14765B5DDA3A3B2B3B76F7CAF5FCF842E34AE98D9B36F983245DA9777CA22B331ECBCFA5A59BEF56259B46EBDCC3109C0F4F90B64CACC19D2D8D22CE99A94';
wwv_flow_imp.g_varchar2_table(88) := '24E3314935D417BA9A92D43FF5CC6E79E2D65BA5AFAFAFA8F6D266433D73F97259FF969B64F5473E2EF3DFF12E99F9E69B64EAAB5E234D575D2D751B374BCD92A592983D47E2EDED12D7F31BCC233163862467CF965AE3D178D156997EED8B65EE1BDE24';
wwv_flow_imp.g_varchar2_table(89) := 'CBDEFFA1F1CBD4D69BA460C965974B73DB14A949268D68ACA8FE4DB4D0B4CE95B2F0EDEF9CA8C8DAE76289B8CC7EC9CB64EAB2E5AE067AF84BEF11E05A89C2100844B78B2400D11DDBB247A6D73DEB59CFC5ECE5B474CC9285176E9435D7BF44569A8DD7';
wwv_flow_imp.g_varchar2_table(90) := 'C2552B65FAB469D2904A4ADABCC1EA863E6136F6E6ABEC7178AD406FE273F4810764C7238FC8582EEB55FDBCF266739862D5752F964D7FF50559F1995BA4C56CEC538B974862EA5489A56BCEABEFF78958CC2443C6B171DD0699F38E77CA86EF7C4F36DE';
wwv_flow_imp.g_varchar2_table(91) := 'FC69E9BCFC45D26C0E91F86DC7A95EDC24134BDF7A93E8A7E839D5B1F5F9784B8B2C7BFD9B3C93ADAEE151D1BB5BDAEA44DCC116200108F6F804B677C7878765FFC04041FD8B99B7CBE973E6C83A337DBF7CCB56699F3FDF1CE34E9BE3FA053553D1CAD9';
wwv_flow_imp.g_varchar2_table(92) := '814179E67777C8DE03FB0B5A6F83D91B5FF2A2CBE562339DBFFEDBDF93E96F78B324E7CE2BA88D822BC7E352B37C85B4DFF44E59F7CDEFC8C69BDE21ED662F3566DC0B6ECB2CB0C81C664877CC363FF13591407AF16259620E4D4D5476FA393DE952FF56';
wwv_flow_imp.g_varchar2_table(93) := '4EFFCEF7F00944B9C72400511EDD32C5A66F688706870A6ABDD51CAF5F79C515B268F34592367BA766E7B5A0E5AB513973AA5BB6DD719B9CF0F96978DAC7642A254BAEBD4ED67DFC9332FBAD6F971AB3D18F25125A54D147BCA1411ACDB1EA151FFC88AC';
wwv_flow_imp.g_varchar2_table(94) := '7BD7BBA575F61C89C562BEFBD0DCDA26B35E728388FF45C4C67F335FF12A695DBACC35F49EB13133739473AD432102D5102001A8867A88D7796278440AD9F8B799E3FB6B5F70992C7FC10BA5B1B5353491F73EFBAC3C71E71DD26F663AFC767A86395E7E';
wwv_flow_imp.g_varchar2_table(95) := 'D1E7FF5AE6BCF12D9232331DD5D8F09FDBD7785393B45CFA4259F795AFCBFAF7BC4F9ACC618773EB9CFB7BB2B64E56BFFF2F45938873CBF8FD6C814473B32C7DD59F4922E9FC21487A2E80FEDD9CBD24BF854320DABD240188F6F89634BA937ACF799F7B';
wwv_flow_imp.g_varchar2_table(96) := 'FE31B3EB387FE52A596A8EEFD74D9F56D27E94BBB1BE438764FBFDF7C948D6DF87EAD498BDE5F59FFBBCACF8D4672565F6F8CBDDBFA2DA377BFFCD5B2F91F55FFB962CBFE1655253EF7C57BBCED7BF516A96B99FE056541F22BA90DE2970F175EE5705E8';
wwv_flow_imp.g_varchar2_table(97) := '873A0D66FCBD9E22CA44580114200108E0A004B14B03E6CDEB80391EEEE74CFF742A252B2FB94466AE582166BB13C4701CFB347CE284ECF47157BCD30D4C33C7DC2F341BFE16330D1C3BFD6480BFC7D369E978F5EB64A33934306FE346333E67F4DA0CD6';
wwv_flow_imp.g_varchar2_table(98) := '2293B04DB9E4D2004710C0AEC5E332E3C52F91645D8363E7980570A4097441D43B470210F5112E417C23CFDDD6D74F53CD664AB4F3F22BA471C60C3FD50355276B8EF5EFFAFDBD3266E2F5EA984EF976BEEA35B2CA6CFCD31D1D5ED583556EB6F9359D9D';
wwv_flow_imp.g_varchar2_table(99) := 'B2F07D7F291BDEFB7E996EF6F6A72F5E2CCB5FF23299F3863749ACA62658FD0D416F12E650CBA2175F3F7E7B65A7EEEA074285E16E914EFDE7F9E8099000446F4C4B1E91DEE447EF71EED570FBCC0E59FEA22BC64FF2F3AA1BB4F2DCC080ECB8FBEEF18F';
wwv_flow_imp.g_varchar2_table(100) := 'E9F5EA5BC3B476D9F8C94FCB8C1B5F2E31B3F7E7553FA8E5B164529AB66C95559FB94556FDD55F4BC76B5ECB257F9318ACE966D6ABAEB5D5B105BD5C563F0ADBB102050113887E77E2D10F91082723A09FE0A77B2E5E6DCC5DBC44165C7CB1C493953FE3';
wwv_flow_imp.g_varchar2_table(101) := 'DDAB6F5EE5F94C56F6DDF77BE91DF6BEB261CAA2C5B2EEE3374B9DD96BF66A3734E531D3537D986F7C152F909ADE2E1D1B2E746D406F11AC9F97E15A8942042A2440025021E830AE463FCAF7E8D0B067D7A7B5CF90596B2F90B06E438E3DF6881CEBEEF6';
wwv_flow_imp.g_varchar2_table(102) := '8CB365EE3C59F99EF74BAA236453FE9E9151A15402D3B75E22F194F315013A03A03301A55A1FED944FC0869649006C18E52262D49396F45EE65E8B3637B7C802338D1CD6AD7FCFC103B277EF5EAF30A5D64CFBAFFEF0472539337CE736780647859209D4';
wwv_flow_imp.g_varchar2_table(103) := 'CE9B2FD356AD716C4FCF01E06A00471E0A2A2C40025061F0B0AC4EF7FCBDDEA852E618F2C2AD5B2511C2697F1D87D1911179E69147F447D747C3ACD9B2FEA31F93D4B4E9AEF52844406F9B3C5B1362178A81312E0774E10948911DDD2001B0639C0B8A52';
wwv_flow_imp.g_varchar2_table(104) := 'CFFA3F3E3CE2BA4C3C1E97E5175F2AB50D0DAEF5825CB8FFB1C7647474D4B58BA9D636E97CDB3B243D7B8E6B3D0A11382DD0B862852463CE6FAD7A492DE7019CD6E27B35059C5FA5D5EC15EBAEAA40D7C8A8785DEF3F6FF51A699836B5AAFD9CCCCA07BB';
wwv_flow_imp.g_varchar2_table(105) := '4E4A978FFBFBAF7CC73B45DFD027B32E96B54B206192C6A669CE37BF1AC9E584598060BF266CE91D09802D23ED334EDD3B39651200B7EA53DADB65FAE2256E55025D9637BB5F071E79C8B38FF3AFBB5E5AD75EE0598F0A089C256066C7DA962E3DEBA933';
wwv_flow_imp.g_varchar2_table(106) := '7FD1F36B7AC7C6CE7C8A9F11A88A00094055D883BB52BDCFBF7E8299530F631293F966A3188F39D508FEF37AE25F4F4FAF6B479BCC71FFF97FF65A89C5421CA86B84149653A0B973A5B87D16C48049004C1E5ACE2ED076D102F62C480260CF587B46AA7B';
wwv_flow_imp.g_varchar2_table(107) := '255E27FE4D9FD52135CDCD9E6D05B9C2E1EDDB5D0F71246AD3E6B8FF4DE276395790E3A36FD517A85FBA4CD24D4D8E1D1936870132E6E1588102042A2040025001E430AC42A725BDA6FEF5C4A6999DABC2108E631F878E1E95DEDE1EC7722D987FF57552';
wwv_flow_imp.g_varchar2_table(108) := 'BF7CA5FEC80381A204526606A9717ABBE3B2FAF7C60C80234F550B6C5A3909804DA3ED12AB1EFBD71900972A3273DE3CA96B09EFDEBF1EFB3FB863BB5B8852575F2FB32EBF4284997FE15FF102FAF269699FE1DA4036470AE00A4461D9054800CA4E1C8E';
wwv_flow_imp.g_varchar2_table(109) := '15E85DFF74AFC4A9B7F1584C6676763A1587E2F9C15327A5FBC409D7BE2EBAFE064972BDBFAB1185FE04EAA7BBDF3722670E44F96B895A9513B06B4D2400768DB763B43A03E058680AA6CF9E2309B3776C7E0CED57F7FEFD92D3690087086AA74C95A957';
wwv_flow_imp.g_varchar2_table(110) := '5FE350CAD3081426906C683013493A1730F1721966002686E1D98A099000548C3AB82BD2DB93BA7DDA5FCCBC8DB585FDFEF7E6CDF6C48103AE8330FFE24BF8343C57210A0B1148A46BC54C9C392EE276B58DE342149455C0B6C649006C1BF109E2D533FF';
wwv_flow_imp.g_varchar2_table(111) := '350998A068FCA974222E8D1DB3C67F0EEBFF868F1D959131E76BAF9BA7B78B7E904B58E3A3DFC11388A76B5C3BC58702B9F25058010112800A20077D157D1EF7266F99362DB4F7FB3F6D7FEAE00173C4D5F9A4ABF6159D929C3DFB7475BE23306981783A';
wwv_flow_imp.g_varchar2_table(112) := '2D3197563804E082539522FB564A0260DF989F15B1EE85F4BBEC196BE59690EFFD67B339E93A724443717CB45DB85124CE9F83231005050BC4F510804B0AE036EB56F0CA580081220478C72B022D4A8BE8B1FF61B381748BA971E64CB7E2C0978D749F92';
wwv_flow_imp.g_varchar2_table(113) := 'C151E7E9FFBAB6A952BF7C79E0E3A083E11288D5A4256E0E9F39F59A04C049A63ACFDBB85612001B47FD8C9847CCC6DFED837FEA9A9A255E577FC612E1FBB1EFF831D7E9FF8ECD9B2456DF10BEC0E871E005DCAE3A097CE7E960E4054800223FC4EE018E';
wwv_flow_imp.g_varchar2_table(114) := 'E6B2AE15EA5A5B25EC2F929EE3C79D638CC564EA860B45CC77E11F022514C88D8E48CEE576BFB112AE8BA6262B60E7F2617F6FB773D44A18B5D78948B5B57522217EA7CA9B37E0E153A7C4E95FAAA6466AE72F742AE679048A16C80E0DBA2E9B20E974F5';
wwv_flow_imp.g_varchar2_table(115) := 'A1B0FC02F1F2AF82350459C0ED3864CC6CF96BEA6BCDFF831C817BDFC67AFB246B9200A75A75AD6DA1BFC191536C3C5F5D81CCE090B8DC774A4800AA3B3E67AEDDD69F49006C1DF9E7E276BE304E4477506A6BC37DFC7F6CA05F722E41D67BDCAF5DF887';
wwv_flow_imp.g_varchar2_table(116) := '409102D9BE3ED72563B1986B398508945B8004A0DCC2016FDFED24A5B8C42455571BF008DCBB373230206EF75C6F98E9FE812DEEAD538A80B3C0685FAFEBC9A7CC0038DB55B6C4DEB5C5ED0D9DC875C738EF3247A96F50A9743AD450638303AED3B0E9B6';
wwv_flow_imp.g_varchar2_table(117) := 'B650C747E7832B30D2EF3E03908C330310DCD1B3A3672400768CB373942ED390FAFE144F87770640139C918141D7BDB09AA6F07EBCB1F3A052526D017DED0DF5F6BA76A3861B4FB9FA54AAD0E6F59000583CFABAFFA10F27022DD3875379E09F37EFC223';
wwv_flow_imp.g_varchar2_table(118) := '1E77394C70FD7FE08731941D34336B03DDDDAE5D270170E5A1B00202240015400EF22ADC36F059B301CD8E8C04B9FB9E7D1B1D75EE7F7A7ABBC4437E8E83270015AA223076E2840CF7F638AE5B0FAF25E2BCFD3A0255ACC0EE15F10AB47BFC25EE720840';
wwv_flow_imp.g_varchar2_table(119) := '4F9E0B7302A02738665C66001235359208F1210ECB5FBA810EBFF789C765ACC73901A84D24B80C30D0236847E7E2768449944E02BA27E254A61BD091E121A7E2C03F3F9ACFC9A84B02104F9904A0A535F071D0C1F0091C7FF001C9679DEFB2D9904C8ADB';
wwv_flow_imp.g_varchar2_table(120) := 'EC5BF8220E678F6DEF350980E5AF00B704C01C0190B191E1C00B693F73D99C64060644A75E07F6EF93634F3E29FBEEBB4FDC6EC59A482525DECC4980811FE09075309FC94AF78E1D8EBDD659B706F3DA73AC40010215122001A8107450579374390EA933';
wwv_flow_imp.g_varchar2_table(121) := '00A3C323A21BD820F53F6F3A34D23F20BD070FC8E1C71E95DDB7DD264FFCE47FCB23BFFAA53C74E71DF2C41FFE207BB66F939E23875DBB9D1D1D936CB7F36D825D17A610010781A11DDB64C465E6ACC6FCCDD59943000E8BF374C50458110980E5AF01B7';
wwv_flow_imp.g_varchar2_table(122) := '1900A5191E0AC62100BD9B5FF7E1C3B2F7C13FC853BFF8993CF99B5FC98E071E90FDBB7649D7A9933264A65BB39A1968A77D3EF2D98C643D2ED5F2D914D5101817C89BD7E1893F3C30FEB3D3FF4673391934B3044EE53C8F40A50448002A251DD0F524E3';
wwv_flow_imp.g_varchar2_table(123) := 'EE4722F552A602B7ABA58BD46CF5B35D5D72ECD147E5F19FFE44B6DF7B8F1CDDB74FFA4D523266DE440BDDE09FDBB19C79B3CE8D8E9EFB34BF2350B440EEE44939F6F863AECBEBCC5AB779DD8D98D79F6B450ACB2A40E322240096BF0AD2F184C45DAE04';
wwv_flow_imp.g_varchar2_table(124) := '183453E47A18A0924C79733C7FD06CE8F7DEFA6B79D84CE9EFD9BD4B865D2EE72BB66F4993D9A49A9A8A5D9CE510384F60ECE851E9704EFC4A00001000494441543F7AE4BCE7CF7D421380ED3D7DB2B3B74F7ACCA1284D0ACEADC3EF08945B205EEE15D0';
wwv_flow_imp.g_varchar2_table(125) := '7EB0055289B8D47B1C8FECF3F186568A28F5E4A9813D7B64D76F7F2D4F3EF4A01C356F8E93DDCB77EBD7B4A54BA466DE02B72A94215090C0C831EF8DFFE906F39237870232B2B7BF5FF60F0C48FF58E67411DFCB2EC00A54800440152C7E24CDDE7F532A';
wwv_flow_imp.g_varchar2_table(126) := 'E52A3050810460E0D021D975EB6FE4C9871F9693E60DB1DC7B44533B6649C7D5D709D76209FF4A28901976BEF194DB6A74166077DF1F6704063324026E5694954E8004A07496A16D49138098CB96B0EFF831C994E9A4A5DCE0A03C7BEFBDB2EDBEFBC637';
wwv_flow_imp.g_varchar2_table(127) := 'FCBA57544A488D4B1F7A982369129DD6858B64F55BDF2EABBFFE2DA959B0B094ABA22D04A471D52A899BD759B114BAF1DFD337C06C40B1803E97A3DA1F054800FEE860F5FF6B930989C59C0986C7C664B0EB847385224AF27A9C7FD72E79FC37BF968387';
wwv_flow_imp.g_varchar2_table(128) := '0F49269F2BA295E716319D4FB7B4CA8CE59DB2F0924B65D955D7C8AA1B5F21EBDFF816D9F8E7EF94CDEFFF805CF4B19B65CB676F91B5E6FBB42BAF1297709F6B946F08142E9036879456BDF52649B7B414BEF0734BE8DF82CE06ECEB1F104E147C0E856F';
wwv_flow_imp.g_varchar2_table(129) := '65112001280B6BB81AD58DA1DB75C93A1D7FF2B0FB35F585449C1B1894AE7BEF92ED4F3C2EC39398EEACA9AF97F665CB65F52B5F2D1B3EF41159FE894FCAFC77BF4F66BDE56D32FD557F262DD75E270D2F7C91D46DDE22E9356B2569F6FEE39CF457C850';
wwv_flow_imp.g_varchar2_table(130) := '51B7508198C854F39A5BFF918FCBA26BAE958629530B6DE1F9FADDA3A3A2B301A746B852E5799492FC4023A70548004E4B58FEBDB5A6C655E0C4BE7D92316F48AE957C148E1E3D2ADBEFB84D761F3B2E7A3DB48F45CEAA92361BF005975F299BCCC67ECB';
wwv_flow_imp.g_varchar2_table(131) := '77FE4E569ABDFA69666F3FBD78894C66EAF5AC95F00B029314A835C9E6BC37BD55367DEB3BB2F1431F93591B364A2C5EF8DBED482E3B7E82E0818101D1447C92DD627104CE1228FC1579D6E2FC121581C65452F40E654EF164B31939B663BB53B1E7F3F9';
wwv_flow_imp.g_varchar2_table(132) := '5C5E8E3FF5A43C658EF7F70E17767BE1784D5A3AD66D904D377F46367FE9EB32DFECE137AC5E2BF1BA3AE11F0281164826A571C30659FA177F295BBFF86559F1D297C994F90B249E4816D4ED93661660776FDFF85503052D48E5F30478E24F02F13FFDC8';
wwv_flow_imp.g_varchar2_table(133) := '4F360BA41309D124C0CDE0E0CE5D32D0D7E75665C2B2DCE898EC3353FECF6CDB26BA473361258727DBCC14FFFAF7BC57969929FE8655AB24D1D62A31D35787EA3C8D402005629A60CF9B2F335FF33A59F399BF920BDEFC1699627E2FA4B383D9ACECEAED';
wwv_flow_imp.g_varchar2_table(134) := '97AE91E2AE3428645DD4B5438004C08E71F68CD21CBA9436B3A7ED56319FCFC9C1C71F77AB725E59666858B69929FFA3478F9D57E6F6C494050BE4C20F7E582EF8CC2DD2B471B314337DEAD63E6508544B20565B2B2D575C256BCC8CC0FAB7DC244D8DFE';
wwv_flow_imp.g_varchar2_table(135) := '6F469597BC3C3B3024478686CC4FD58A20CCEBA5EF670AC4CFFC859FED16D04F28ABF3D8BBEE3E7258FABABA7C41E939034FDF7987F4F99D3588C5A479C1225967A64B577FF273D274E126E1747DE15F440534A96DB9EA6A59F7F92FCAD2ABAF95446DBD';
wwv_flow_imp.g_varchar2_table(136) := 'AF483509386A12EB13051E4AF3D53895AC122001B06AB8DD83D5598019E6B8BA5E33EF5673FFA38FC99839A6EF5627373A2A3BCCC67F70A0DFADDAF3657A4BDE652F7F95ACBBF953D27AD11689D7737CFF791C7E88B440A27D86CC7EE39B65F3873E2CB3';
wwv_flow_imp.g_varchar2_table(137) := '57749A9C57FF12BD433E3C382C870783F1615DDEBD0D460D7A71B60009C0D91ED6FFD6529392291E5704F4779F94434F3FE538059933C7FC77FEEE77D2E7F393F6D2D3DB65C3676F9159AF78A5C41B1AAC1F03002C1488C725BD72952CFDF4E764DD3BFE';
wwv_flow_imp.g_varchar2_table(138) := '5C52C9942782CE041C33B300C7CDC3B332151098408004600214DB9F6AAFABF5DC0B39B27D9B1CDDB7FF3C2A3DDBFF99DFDF23DD3DDDE7954DF444BB9EDD6F8E85D675CC9AA898E710B04EA0E5B2CB65E3C73E2EAD73E6FA8AFD9099056026C00F1575CE';
wwv_flow_imp.g_varchar2_table(139) := '152001385784DF2565F646A6D5A63D25F63FF407E939E77C80830F3F245D27FCDD3570DE8B2E97E5EF7AAF24D9EBF7B4A6825D02E995AB65D5BBDE23D3972DF715F8F1E111AE0EF02545A533054800CED4E0E7E705669859004D049E7F62821FF2F9BCEC';
wwv_flow_imp.g_varchar2_table(140) := 'BCE71EE9EFEB1F3F27E0E433CFC8A17D7B27A879FE532B5FFB7A59F4F6774AA29129FFF37578060191D48285B2F2431F95B917ACF3E4D0C3017A7540DFD898675D5B2B10F7F902F1F39FE219044412B198CCAEF73E2B393B362ADBEFB94B9EDDBF5F763F';
wwv_flow_imp.g_varchar2_table(141) := 'F6A8275D2A55231BDFF96E697FC90D9E75A98080ED02B1C64659FCD14F48E76B5FE779584E93003D1C903589B9ED6EC4EF4F8004C09F9395B5F484C08E3AEFB3F133030372D41C0EC8E5DC3FD047AF2E58F3C6374AE30B2EB3D293A011285660C6F53748';
wwv_flow_imp.g_varchar2_table(142) := 'E72B5FE9B9F870362BCF0E0C3A9EA0EBD940642B10D84402240013A9F0DCF3027A42E0D4B4F7F900CF2FE0F2C38A97DD28CD575CED52832204109850C0CCC8B5BFFC55B2ECE28B3D67024E8D8E4AD730770B9CD09127CF122001388B835F261298595F27';
wwv_flow_imp.g_varchar2_table(143) := '8DC9C2EE5D7E6E3B73376F96F657BDE6DCA7F91D01040A1098F5B63F97B99D2B3C97D0CB0347CC6C8067454B2A10E6C402240013BBF0EC190249B3F731AFB141D2F1C419CFFAFF71C68A4E59F8A6B7F95F809A082030B1406DADCC7DCDEB65AAC765B363';
wwv_flow_imp.g_varchar2_table(144) := 'E670DC017328804F109C989167FF284002F04707FEEF21A05704CC6EA81BBF44D0A3EA59C575AD6DB2E42D6F93786BEB59CFF30B02081427905ABC4496BDE18D92F6F844C1814C46BACDE180E2D612A5A588C5498004C04986E7CF13684AA57C5D19707A';
wwv_flow_imp.g_varchar2_table(145) := 'C144AA462EF8C00725E5F38626A797E33B0208B80BA42F582F6BDE7A93E889B56E35F53303F4C440B73A94D92B400260EFD8171579632A290D3ECF0758F2E2174BEDD26545AD87851040C05DA0F14597CBA24D9B5D2B8D9A4301272C3F21D015C8F24212';
wwv_flow_imp.g_varchar2_table(146) := '00CB5F008586AFF707684BD7782E366DE1229979C3CB3DEB510101048A17E878CDEBA4D5E37C00BD2A807B03146F1CE5254900A23CBA65882D6FDA3C39326AFEEFFC1593982C7CE90D122BD1E583CE6BA20401BB05F49304E75F7B9DF98B8B3942E88980';
wwv_flow_imp.g_varchar2_table(147) := 'F65E16E8C8428111200130087CF917D0B38B073319D705DA57AD96FA556B5CEB50880002A51168D974914C9BD5E1DA9826ED5C16E84A646521098095C35E7CD07EF62416DCF80A89F9B88D70F1BD60490410382D106F6A9205AF7895EB2CC0482E2B7A28';
wwv_flow_imp.g_varchar2_table(148) := 'E0F432B67C274E77011200771F4ACF1018CA643D2F2B9ABB7AADD4AD5871C652FC880002E51668D8BC45DA172F725D4DCFE818B7087615B2AF9004C0BE312F3AE253A323A267153B3590A8A995B9AFF0BE5FB9D3F23C8F0002450AC46232FFFA1B24ED72';
wwv_flow_imp.g_varchar2_table(149) := 'DE8D5E0ED863D57D018AB4B4683112008B067B32A1EAC97F3D660FC2AD8D996B564B0D97FDB911518640D904EA376D96D9EB36B8B6AFE702E84981AE9528B446206E4DA4043A2981A14CC675EF3F994AC9ACABAE99D43A58180104262730F3DAEB5C1BE8';
wwv_flow_imp.g_varchar2_table(150) := '1FCBC890259F11E00A41E1B80009C03803FFF312E8336F1C6E755AE72F90DAD973DCAA508600026516484C9B26B50D8D8E6BC94B5E063CFE961D17A62072022400911BD2D20794C9E7A57F6CCCB5E169ABD748A2B5D5B50E850820505E817853B3CCBC70';
wwv_flow_imp.g_varchar2_table(151) := 'A3EB4A06B3EE97F1BA2E1C9A423AEA4720EEA71275EC1618CE643DA70D5B57AFB61B89E8110880402C9190E91B37BB5F1298CD9979800074962E545D8004A0EA4310FC0E0C993D06B75B89D6D4D74BCDDCF9C10F841E22608140DDF2E5E63040BD63A47A';
wwv_flow_imp.g_varchar2_table(152) := '258F26F58E1522504008FE044800FC39595D4B4F1C720398B67499C46BEBDCAA50860002151288D7D549CB02E77B02E85500FD19F7437A15EA2AABA9B20009409507200CABD73D06A77EC6637169DF608E393ADF8ADC69519E47008132094C5FBF5EF470';
wwv_flow_imp.g_varchar2_table(153) := '8053F3BDA363A289805379B89FA7F77E054800FC4A595A4FAFFF777BA3A86F6E91C6B56B2DD5216C048229D0B068B1A49A9A1D3B3794CD8ADB613DC705298894000940A486B3F4C1E887FFB8BD51D4B6B54A72EAB4D2AF98161140A068819AB9F3A4AE6D';
wwv_flow_imp.g_varchar2_table(154) := '8AE3F2FA37AD7FDB8E15425C40D7FD0B9000F8B7B2B2E650266BA60A9D436F98E2FC26E3BC14250820504E81583A2DF52639775B875EDEEB564E59F405E2D10F91088B15D0E97FFD0851BD7988531BC916AEFD77B2E17904AA25A0A7E4D4B6B68ADBBF4C';
wwv_flow_imp.g_varchar2_table(155) := '2EE7561CD232BA5D88000940215A96D5CDE7F3A21F20E216764D93F35DC7DC96A30C0104CA2B50EB313B97C9698A5FDE3ED07AB0054800823D3E55ED9DEE1FB85D01A09D4B3534E8371E0820103081DAB6A91233FF39754BCF03702A0BEBF3F4BB300112';
wwv_flow_imp.g_varchar2_table(156) := '80C2BCACAAAD33005E6F12893A1200AB5E14041B1A81547393C462CEDD753BB4E7BC14255112200188D268963816BDFCCF1C05706D35D9D4E45A4E210208544720114F485C9C3380E81D01A88E7398D71A0F73E7E97BF905DCF61262B19824EA9D6F392A';
wwv_flow_imp.g_varchar2_table(157) := 'FC430081EA0998ECDDFC893AAEDF6B76CF71410A222340021099A12C7D207A8A903E9C5A4E249312330FA7729E4700812A0AE472AE3300514B00AA281DDA5593008476E8CADF71B30321FA705A534EE710DD2A382DC8F308205076817C2E2B7CEE5FD999';
wwv_flow_imp.g_varchar2_table(158) := '43BD021280500F5FF93BEF760820A76F307CA848F9078135205084403E9B754DE08B6832C08BD0B5620448008A51B36499443C2609B7838866EF3F373824FC430081E009E432260190BC63C75CFFB61D97A2204A022400511ACD12C7A2E70F27E3EE2F91';
wwv_flow_imp.g_varchar2_table(159) := '4C5F6F89D74A730820500A013D04E0D64E941200B738297316707F77775E8E120B04E266EFBFC6230118EBEFB740821011089F402E9371D9FF17D1BFEFF045458F4B294002504ACD88B51533F1A43C1280ECC080A9C5170208044D203B32EA7A0E407466';
wwv_flow_imp.g_varchar2_table(160) := '0082261F9EFE90008467AC2ADED3582C26A9784CF43FA7958FF6F73915F13C0208545160F864979901703E072069FEB6ABD83D561D00011280000C4250BB10331D4B2712E6FFCE5F63031C0270D6A10481EA08E866BFEFF021D795476506C035480A5D05';
wwv_flow_imp.g_varchar2_table(161) := '48005C79284C9B43006E3B0A631C02E0458240E004B2478E48DF91A3AEFD4A99BF6DD70A14465E800420F2433CB900F54DC26D4F61A0AB4BB2BD5C093039659646A0B402C3070FC850F729C74663E6C09EFE6D3B56084D011D9D8C0009C064F42C58361E';
wwv_flow_imp.g_varchar2_table(162) := '8B49D23C9C421DECEE96A1ED4F3B15F33C020854416070EF1EC90C0D3AAEB92E1177BFC787E3921444498004204AA359A6586A9309C796336363D2F5C0038EE514208040E5057AF73CE3BAD2A69A54241200D72029F4142001F024A242ADC78980479F7E';
wwv_flow_imp.g_varchar2_table(163) := '52F22323402180401004B25939B57FBF634F7456AF3995722CA7C01E0112007BC6BAE8483501D063864E0D0CF6F4C8E8BEBD4EC53C8F0002151418397840065DCECBD1737AF46FBA825D2AD3AA6876B20224009315B460797DB3D063866EA1F63CFA8848';
wwv_flow_imp.g_varchar2_table(164) := '2EE7568532041028B7405EE4E8BDF7483EEFFCB7A87FCF3A0B50EEAED07EF0054800823F4655EFA19E2DDCE03165D8B57D9B647B7BAADE573A8080CD02D9FE5E3978D75DAE044DA9A46B79580AE9E7E4054800266F68450BAD35EEC70C4FECDC21C3BBDD';
wwv_flow_imp.g_varchar2_table(165) := '4F3CB2028A2011A8A240EF03F7C9686FB76B0FEA122400AE40161592005834D89309B52E9914B70F06CAE6F372FC817B27B30A964500814908E4FAFBE59799040F0000100049444154D9DFFDCEB585FA4442D28928BCED0BFF4A20C02BA1048836341133';
wwv_flow_imp.g_varchar2_table(166) := '417A9D397CE0FEFB65F8F1C74C4DBE1040A0D20283DB9E96EE03CE67FF6B7F5A6A6A440FE9E9CF3C102001E035E05B40DF3CF40C62A705B2998CECFFF18F249F753E01C969599E470081C9091CFAEDAF25333AEAD8484C62D29AAE712C0F53017D2D8D00';
wwv_flow_imp.g_varchar2_table(167) := '0940691CAD68A53E9990067328C02DD8237A2EC0B6A7DCAA508600022516183B764C0E9B1900B766F53C1EB7C3786ECB52164D011280688E6B59A2D24B87DA3CF62072F9BC1CD05980A1A1B2F481461140E01C81BCC8B3FFFA0333F3963DA7E04FBF2663';
wwv_flow_imp.g_varchar2_table(168) := '71995A9BFED313A1FE89CE974A8004A0549296B4A38701BCF6220E993D91817BEFB144843011A8AE40FFBD77C9FE3FDCEFDA89969A94D47BCCDE09FFAC132001B06EC8271770CC2CDE5E576BFEEFFEB5EF37BF92DCA993EE95284500814909648F1D95DD';
wwv_flow_imp.g_varchar2_table(169) := '3FFE0FD19937B786A699BD7FFDDB75AB139632FA593A011280D2595AD3D29474DA736FE2F8C103D2F5C37FB3C6844011A886C0E1FFFD633975F890EBAA1BCD9EBFDEFDCFB51285560AC4AD8C9AA02725A07B12337DCC023C73D7EF64C8CC044C6A652C8C';
wwv_flow_imp.g_varchar2_table(170) := '0002130AF43FF80779E66EF7BBFEE9793BD37DFCAD4EB882403E49A74A294002504A4D8BDA6A4AA5448F2BBA853C94CDCAD33FF867197BEC11B76A9421804081027A786DFB3FFDA3E4B219D725F5DE1DFA70AD44A1B502716B2327F0490BCCAEAF17AFA9';
wwv_flow_imp.g_varchar2_table(171) := 'C5DEB131D9F5FD7F948CC734E5A43B4303085822903789F5C11FFD50FA7ADC3F7B436FF833ABBE2E522A04535A011280D27A5AD59ABEC1E8C9455E411FEDEA92FDFFF0F7921F1AF6AA4A39020878081C33C7FD9FB9FD56D75A7AC3AE790D0DDCF5CF5589';
wwv_flow_imp.g_varchar2_table(172) := '4212005E039312D01302A7A6BDAF2FDEBF7B971CFB5FFF2279332330A915B23002B60AE4F372ECE73F93ED3FF9B1A7C00C73DCBF31729FFAE71936150A14200128108CEA670BE809811D669AD1EBDE00BAD48EDFFE567A74CF25AFBFF1400001DF02E66F';
wwv_flow_imp.g_varchar2_table(173) := 'E6D4EF6E97A7FEE73F4BCE2389D6B3FE3531F7DD3615AD152001B076E84B17B84E37CE69A89798F9CFAD55FDC4C0C77FF0CF72EAC73F14C9F179016E56942170A6C089DFFC521EFBA7EF8B985980339F9FE8E7B98D0DA27F93139585F939FA5E7A011280';
wwv_flow_imp.g_varchar2_table(174) := 'D29B5AD9A25E15E0E7D240FDC0A0C77FF44339FCFF7D5F721E2731590949D0089C2190371BFC9377DC264FFFDBFF2FF98CFB19FFBA984EFDFB998DD3BA3C102001E035503201BD43A09F4B8E72F99C6CBFF5B7B2F7BFFCBD648F1C29D9FA6908812809E8';
wwv_flow_imp.g_varchar2_table(175) := 'F932C77EF97379E2BF7D5FB23E3E5B63665D9DE8234A067F8A859FCA214002500E558BDBD443017E920025DAFFD8A3F2F4D7BE2C633BB7EBAF3C1040E03981B19327E5E96F7F439EFE97FF21391F7BFE7A22AEEEFD3FB738DF10F0254002E08B894A7E05';
wwv_flow_imp.g_varchar2_table(176) := 'F4D2C0D90DF5E2771AF2C4C92E79E8EB5F95817BEFF6757CD36F3FA887402805CC947FFFA30FCB435FBC458E3DF9A4AF10A6D7D68A26DEBE2A87B412DD2E8F000940795CAD6E5537FEF31B1B241D4FF872181A1D9587FEFEFF91233FFC77CF339C7D3548';
wwv_flow_imp.g_varchar2_table(177) := '25044228901F199183FFF14379F03B7F23432631F613C2B4745AB8D98F1F29EA4C24400230910ACF4D5A403F7A7456439DEFB391B366CF67DB8F7F288F7CF2E3D273C7ED92CF7295C0A40781064223307AF8B03CFEE52FCAAE1FFDBBE47D5E21D35A5323';
wwv_flow_imp.g_varchar2_table(178) := 'B3CD6C5B68822CBAA32C582E01128072C9D2AEE8B9008B9B9AA42EE16F2640C97A8F1F9387FFF11FE4892F7C4E7AEFBE5BF20303FA340F04A2276092DED1238765DF0FFE87DC77CB67E4E4DE3DBE636C331BFF796696CDF70254446002011280095078AA';
wwv_flow_imp.g_varchar2_table(179) := '740275C984CC6D6810BD394921AD769937C347FECBDFCBD3DFFDB60C3EF42077102C048FBA8116D04BFB460E1F92BDFFFCDFE5E16F7E5DF6FCFC67921D1EF6DD67DDF8EBB5FE31DF4B84BB22BD2F9F000940F96C69F939014D02163537C99474CD73CFF8';
wwv_flow_imp.g_varchar2_table(180) := 'FB96CB65E5D8B6A7E5FEBFFD1B79EC739F96DEDB7E2BB9FE3E7F0B530B818009E44D7F0677EE90A7BEF54DB9D71CEADAFBAB5FC89099F1324FFBFA4AC6E2A2F7F7D73D7F36FEBEC8A8E4214002E00144716904F40D6B8E990998638E59EA1B59A1AD9E3A';
wwv_flow_imp.g_varchar2_table(181) := 'F4AC3CFCFDFF2A0FDDFC3179E61B5F91533FFD4F19DDB15DFCDC1CA5D075511F81520964BBBB65E089C7E4F07FFC481EFFE22DF2C097BE20C71F7FA4E02B5EF4A3B7173635485B814974A9E2A85E3BACB99C022400E5D4A5EDB3043409D0EB9517373716';
wwv_flow_imp.g_varchar2_table(182) := '7C48401BCA4B5EFAFBFA64FF134FC8A3FFFA0379F87BDF95BDDFFD8EF4986420630E19E47A7B25373424F99151E1244215E351298198399EAFB7B7D6D75EF6C409E9BDFFF7B2F75FFEBB3CFA77DF9587FFEFBF93ED3FFC5F7272D74EC96BBD023A1593D8';
wwv_flow_imp.g_varchar2_table(183) := 'F8CD7D1634364A7D3259C0925445C05B8004C0DB881A2516A84D24440F09E8A5829379531BEAED967D8F3E2C8FFCEBFF94DFDFF23979F8D337CBCE6F7C550EFCB77F94133FF9B1F4DC73B70CEDD821A3C78F4BCE1C63CD9B3878989D4F1C4C2A59BC432E';
wwv_flow_imp.g_varchar2_table(184) := '9B954C7FBF8C1E3B2603CFEC969E871F9263B7DF2A077EF4EFF2F837BF26F7DCFC5179E8FFFA9EECFDC5CFA577E776C91479226BBDF93B596A0E9DD97C831FF352E5AB8C02240065C4A56967819829D2CB981636358ADEC82466F674CC53457DE5CDDB79';
wwv_flow_imp.g_varchar2_table(185) := '269F93BEDE1E39BC7B973C73D7EFE4C91FFE9B3CF20FFFAFDCFFD5BF96FB4C6270FFC73E240F7DE443F2E8273E2A8F9AC3083C3E864381AF83476EFE883C6C5E47F77FF8FDF2FB8F7F44EEFFECA7E4A1AFFCB53CF2BDEFC853FFF45F65F78F7F2427776C';
wwv_flow_imp.g_varchar2_table(186) := '93ACC7A7F5F97991EBF5FD9A24D725137EAA530781A20448008A6263A152092463B1F11B9974B6368BEEE9F8BD7990E7FACD546B3E9793BCD95BCB8E0CCBB0393CD077E298741F392CDD870FF1C0A0E0D740CFE123D26BF6FA87BB7BCC5E7DBF64868724';
wwv_flow_imp.g_varchar2_table(187) := '3BAA879BB2054FED4FF4FAD5BB686A32BCA2A579FCFAFE84F9DB98A89E3DCF1169B9054800CA2D4CFBBE04F4CD4F3FC8444F746AAFADF57D2B615F8D530981000B68D2ABAFF9058D0DE3C970DA4CFD07B8BB742D42022400111ACC2884A26F7E1DF575B2';
wwv_flow_imp.g_varchar2_table(188) := 'A2B545F4C4A742EF1F10050362B043406F90A5E7C1AC30B35FFA9AAFE724BFB3069E5FCA2F4002507E63D6508440CC2CA3973E2D686A143D4F40AF1E28E6F241D30C5F080442206EA6F475A64BCF7DD1EBF9F575AD3F07A27374C24A0112002B873D3C41';
wwv_flow_imp.g_varchar2_table(189) := 'EB7150BDA5B0DE3F60B9EE29D5D57178203CC3677D4FF5F5DB944A8D4FEDEB19FD9D66664BF7FAF57A7E4D06AC077204A0A0120224009550661D2511D01306DBEB6A65694BF3F8AC809E29AD6FAE7A5921B3032521A691020574AF5E5F7B35F1F8F8675E';
wwv_flow_imp.g_varchar2_table(190) := '3498697C4D58F513FA963437C972F35AD563FB7A729FBE4E7566ABC055501D81B2099000948D9686CB25A08980BEC9EA27A12D328708F4A17B55FAA6AB870DF4FA693DBEAA6FB83C128241690CF435A5C7E9F5B5A787A4F4AA157DCDE9EC944EE72F361B';
wwv_flow_imp.g_varchar2_table(191) := '7CDDE8EBCFBAC1D76440F7F2354928D7DF4254DB25AECA08900054C699B5945140DF641B53C9F1FB09CC6F6C147D23E6D18483D92097FC7560124E3D2F45934FBD6A4513014D3A35C9D2E9FE32BECC691A81920B9000949C9406AB29A053ACBAC7A56FC6';
wwv_flow_imp.g_varchar2_table(192) := '3A53C023261894C6405F53FADAD2D7983EAAF93A8FF6BA89AE520224009592663D08208000020804488004204083415710400001DB0588BF7202240095B3664D08208000020804468004203043414710400001DB0588BF9202240095D4665D0820800002';
wwv_flow_imp.g_varchar2_table(193) := '0804448004202003413710400001DB0588BFB202240095F5666D082080000208044280042010C3402710400001DB0588BFD20224009516677D08208000020804408004200083401710400001DB0588BFF20224009537678D082080000208545D8004A0EA';
wwv_flow_imp.g_varchar2_table(194) := '43400710400001DB0588BF1A022400D550679D08208000020854598004A0CA03C0EA11400001DB0588BF3A022400D57167AD08208000020854558004A0AAFCAC1C010410B05D80F8AB254002502D79D68B00020820804015054800AA88CFAA11400001DB';
wwv_flow_imp.g_varchar2_table(195) := '0588BF7A022400D5B367CD082080000208544D8004A06AF4AC18010410B05D80F8AB294002504D7DD68D00020820804095044800AA04CF6A11400001DB0588BFBA022400D5F567ED08208000020854458004A02AECAC14010410B05D80F8AB2D400250ED';
wwv_flow_imp.g_varchar2_table(196) := '1160FD08208000020854418004A00AE8AC12010410B05D80F8AB2F400250FD31A007082080000208545C8004A0E2E4AC10010410B05D80F883204002108451A00F08208000020854588004A0C2E0AC0E010410B05D80F883214002108C71A01708208000';
wwv_flow_imp.g_varchar2_table(197) := '020854548004A0A2DCAC0C010410B05D80F883224002109491A01F08208000020854508004A082D8AC0A010410B05D80F883234002109CB1A027082080000208544C8004A062D4AC08010410B05D80F88324400210A4D1A02F08208000020854488004A0';
wwv_flow_imp.g_varchar2_table(198) := '42D0AC06010410B05D80F88325400210ACF1A03708208000020854448004A022CCAC04010410B05D80F88326400210B411A13F08208000020854408004A002C8AC02010410B05D80F88327400210BC31A147082080000208945D8004A0ECC4AC00010410';
wwv_flow_imp.g_varchar2_table(199) := 'B05D80F88328400210C451A14F08208000020894598004A0CCC0348F000208D82E40FCC114200108E6B8D02B041040000104CA2A400250565E1A470001046C1720FEA00A9000047564E8170208208000026514200128232E4D23800002B60B107F700548';
wwv_flow_imp.g_varchar2_table(200) := '00823B36F40C010410400081B2099000948D968611400001DB05883FC8022400411E1DFA8600020820804099044800CA044BB308208080ED02C41F6C011280608F0FBD430001041040A02C0224006561A551041040C07601E20FBA000940D04788FE2180';
wwv_flow_imp.g_varchar2_table(201) := '00020820500601128032A0D22402082060BB00F1075F800420F863440F11400001041028B9000940C9496910010410B05D80F8C3204002108651A28F08208000020894588004A0C4A03487000208D82E40FCE110200108C738D14B0410400001044A2A40';
wwv_flow_imp.g_varchar2_table(202) := '0250524E1A430001046C1720FEB00890008465A4E827020820800002251420012821264D21800002B60B107F78044800C23356F41401041040008192099000948C928610400001DB05883F4C022400611A2DFA8A000208208040890448004A0449330820';
wwv_flow_imp.g_varchar2_table(203) := '8080ED02C41F2E011280708D17BD450001041040A0240224002561A411041040C07601E20F9B000940D8468CFE22800002082050020112801220D20402082060BB00F1874F8004207C63468F11400001041098B40009C0A4096900010410B05D80F8C328';
wwv_flow_imp.g_varchar2_table(204) := '400210C651A3CF0820800002084C5280046092802C8E000208D82E40FCE114200108E7B8D16B0410400001042625400230293E16460001046C1720FEB00A90008475E4E8370208208000029310200198041E8B22800002B60B107F78054800C23B76F41C';
wwv_flow_imp.g_varchar2_table(205) := '010410400081A20548008AA66341041040C07601E20FB300094098478FBE23800002082050A400094091702C86000208D82E40FCE116200108F7F8D17B0410400001048A122001288A8D8510400001DB05883FEC022400611F41FA8F0002082080401102';
wwv_flow_imp.g_varchar2_table(206) := '240045A0B10802082060BB00F1875F800420FC634804082080000208142C40025030190B20800002B60B107F14044800A2308AC480000208208040810224000582511D0104CBA638100000034C4944415410B05D80F8A3214002108D71240A0410400001';
wwv_flow_imp.g_varchar2_table(207) := '040A12200128888BCA08208080ED02C41F15011280A88C24712080000208205080000940015854450001046C1720FEE808900044672C8904010410400001DF022400BEA9A888000208D82E40FC5112200188D268120B0208208000023E0548007C42510D';
wwv_flow_imp.g_varchar2_table(208) := '010410B05D80F8A325400210ADF1241A0410400001047C099000F862A21202082060BB00F1474D8004206A234A3C082080000208F8102001F0814415041040C07601E28F9E000940F4C69488104000010410F0142001F024A20202082060BB00F1475180';
wwv_flow_imp.g_varchar2_table(209) := '04208AA34A4C082080000208780890007800518C000208D82E40FCD114200188E6B81215020820800002AE022400AE3C1422800002B60B107F54054800A23AB2C4850002082080808B0009800B0E4508208080ED02C41F5D011280E88E2D912180000208';
wwv_flow_imp.g_varchar2_table(210) := '20E0284002E048430102082060BB00F14759800420CAA34B6C0820800002083808900038C0F03402082060BB00F1475B800420DAE34B740820800002084C28400230210B4F22800002B60B107FD4054800A23EC2C4870002082080C00402240013A0F014';
wwv_flow_imp.g_varchar2_table(211) := '02082060BB00F1475F800420FA634C840820800002089C274002701E094F20800002B60B10BF0D022400368C3231228000020820708E0009C03920FC8A000208D82E40FC76089000D831CE44890002082080C0590224006771F00B02082060BB00F1DB22';
wwv_flow_imp.g_varchar2_table(212) := '400260CB481327020820800002670890009C81C18F08208080ED02C46F8F0009803D634DA40820800002083C2F4002F03C053F20800002B60B10BF4D022400368D36B1228000020820F09C0009C073107C430001046C17207EBB044800EC1A6FA2450001';
wwv_flow_imp.g_varchar2_table(213) := '041040605C8004609C81FF21800002B60B10BF6D022400B68D38F1228000020820600448000C025F08208080ED02C46F9F0009807D634EC40820800002080809002F02041040C07A01006C142001B071D4891901041040C07A011200EB5F0200208080ED';
wwv_flow_imp.g_varchar2_table(214) := '02C46FA70009809DE34ED40820800002960B900058FE02207C0410B05D80F86D152001B075E4891B01041040C06A011200AB879FE01140C07601E2B7578004C0DEB1277204104000018B0548002C1E7C42470001DB0588DF660112009B479FD811400001';
wwv_flow_imp.g_varchar2_table(215) := '04AC152001B076E8091C01046C17207EBB05FE0F000000FFFFCEF6AECD00000006494441540300C1A5A4967427321A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(832992351595534958)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(832993672017534958)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(833565042395539544)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(833565042395539544)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(833565778700539545)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(833565304707539544)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/camere_nr_camera
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(833104421703536808)
,p_lov_name=>'CAMERE.NR_CAMERA'
,p_static_id=>'camere-nr-camera'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CAMERE'
,p_return_column_name=>'ID_CAMERA'
,p_display_column_name=>'NR_CAMERA'
,p_default_sort_column_name=>'NR_CAMERA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:UmESqGWfZU1fdWsMYNvVmaeLidokWBuCHrgBE3UKS3k'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/camine_cod_camin
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(833036649172535716)
,p_lov_name=>'CAMINE.COD_CAMIN'
,p_static_id=>'camine-cod-camin'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CAMINE'
,p_return_column_name=>'ID_CAMIN'
,p_display_column_name=>'COD_CAMIN'
,p_default_sort_column_name=>'COD_CAMIN'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:oKibgjvVzcfxJB4e-GKxpvQ9PG7xlQNzInRbvp0E0cw'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/cazari_an_universitar
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(833321796332537182)
,p_lov_name=>'CAZARI.AN_UNIVERSITAR'
,p_static_id=>'cazari-an-universitar'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CAZARI'
,p_return_column_name=>'ID_CAZARE'
,p_display_column_name=>'AN_UNIVERSITAR'
,p_default_sort_column_name=>'AN_UNIVERSITAR'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:PsZsqVkptjyug3Gvrh9Y_NGnvQyXUQeTluaEXVgrv3I'
,p_created_on=>wwv_flow_imp.dz('20260516174130Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174130Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/staff_nume
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(833371340742538290)
,p_lov_name=>'STAFF.NUME'
,p_static_id=>'staff-nume'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'STAFF'
,p_return_column_name=>'ID_STAFF'
,p_display_column_name=>'NUME'
,p_default_sort_column_name=>'NUME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:W5AxcLinfp2OM0TjtBWfRgnT7jIjodRuYnmvlparYkY'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/studenti_nr_matricol
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(833103734430536807)
,p_lov_name=>'STUDENTI.NR_MATRICOL'
,p_static_id=>'studenti-nr-matricol'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'STUDENTI'
,p_return_column_name=>'ID_STUDENT'
,p_display_column_name=>'NR_MATRICOL'
,p_default_sort_column_name=>'NR_MATRICOL'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:klavKP9JBBr4ma-aD639j7gGrCJTmq7IxrfifQd29VA'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tipuri_sporuri_nume_spor
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(833372033269538291)
,p_lov_name=>'TIPURI_SPORURI.NUME_SPOR'
,p_static_id=>'tipuri-sporuri-nume-spor'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TIPURI_SPORURI'
,p_return_column_name=>'ID_SPOR'
,p_display_column_name=>'NUME_SPOR'
,p_default_sort_column_name=>'NUME_SPOR'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:tExZX16wiisDWF0B6Nk2AcIR-9-WLPcmel5KDKIhk08'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(832993901793534960)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(832988686670534946)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516201730Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(833382190859538309)
,p_short_name=>'Angajat Sporuri'
,p_static_id=>'angajat-sporuri'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(833440765906539409)
,p_short_name=>'Avizier'
,p_static_id=>'avizier'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(833064711666536094)
,p_short_name=>'Camere'
,p_static_id=>'camere'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20260516174120Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174120Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(833029565218535373)
,p_short_name=>'Camine'
,p_static_id=>'camine'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260516174112Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174112Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(833118962678536838)
,p_short_name=>'Cazari'
,p_static_id=>'cazari'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(833336543439537210)
,p_short_name=>'Facturi Cazare'
,p_static_id=>'facturi-cazare'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(832988956993534947)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(833049392270535737)
,p_short_name=>'Lista Preturi Camin'
,p_static_id=>'lista-preturi-camin'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(833427018700539050)
,p_short_name=>'Personal Camin'
,p_static_id=>'personal-camin'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(833413431872538690)
,p_short_name=>'Plati Salarii'
,p_static_id=>'plati-salarii'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20260516174146Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174146Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(833354770459537579)
,p_short_name=>'Staff'
,p_static_id=>'staff'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(833101361727536471)
,p_short_name=>'Studenti'
,p_static_id=>'studenti'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(833368081905537939)
,p_short_name=>'Tipuri Sporuri'
,p_static_id=>'tipuri-sporuri'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(832989632372534948)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:RQZ7_KKNFF7leXIrwskeQw4WaazlZwly2sNGWk8hwQo'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(832987922592534945)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/no_authentication
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(833301656523896391)
,p_name=>'No Authentication'
,p_static_id=>'no-authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'username', 'user')).to_clob
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:ykZwttbEbVjs5aI8lhrwjZ85AmDRc3mIj-aYw7b2GmM'
,p_created_on=>wwv_flow_imp.dz('20260516174335Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174454Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/shared_components/security/authentications/nimic
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(832988226446534945)
,p_name=>'nimic'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_DAD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'username', 'nobody')).to_clob
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:BELSsEkDJ9lFuI1f1NHOqqiOHWlBXoDCADyYcpO-XmQ'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174824Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'ASE Dormitory System'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833001634727534974)
,p_plug_name=>'ASE Dormitory System'
,p_static_id=>'ase-dormitory-system'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833564692750539543)
,p_plug_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(833558373130539534)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2888245825625742894
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Camine'
,p_alias=>'CAMINE1'
,p_step_title=>'Camine'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833028960308535372)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(832988686670534946)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260516174112Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174112Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833024300357535358)
,p_plug_name=>'Camine'
,p_static_id=>'camine'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'CAMINE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260516174112Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(833024407635535358)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP:P3_ID_CAMIN:\#ID_CAMIN#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>833024407635535358
,p_created_on=>wwv_flow_imp.dz('20260516174112Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833026889910535368)
,p_db_column_name=>'ADRESA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Adresa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174112Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833026066697535365)
,p_db_column_name=>'COD_CAMIN'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cod Camin'
,p_column_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:22,RR:IR_ID_CAMIN:\#COD_CAMIN#\'
,p_column_linktext=>'#COD_CAMIN#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174112Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833025639567535363)
,p_db_column_name=>'ID_CAMIN'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Camin'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260516174112Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833027205321535369)
,p_db_column_name=>'IF_MIXT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'If Mixt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174112Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833026460470535367)
,p_db_column_name=>'NUME_CAMIN'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nume Camin'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174112Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(833443522824539415)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CAMIN:NUME_CAMIN:ADRESA:IF_MIXT'
,p_sort_column_1=>'COD_CAMIN'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833027634457535370)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833024300357535358)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
,p_created_on=>wwv_flow_imp.dz('20260516174112Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174112Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(833028019321535371)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(833024300357535358)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260516174112Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174112Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(833028489109535371)
,p_event_id=>wwv_flow_imp.id(833028019321535371)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833024300357535358)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174112Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174112Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Camine'
,p_alias=>'CAMINE'
,p_page_mode=>'MODAL'
,p_step_title=>'Camine'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516203653Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833015967072535068)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174109Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833012049446535063)
,p_plug_name=>'Camine'
,p_static_id=>'camine'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'CAMINE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833016305239535068)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833015967072535068)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174109Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(833016833591535069)
,p_button_id=>wwv_flow_imp.id(833016305239535068)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174109Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833018170251535070)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(833015967072535068)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_ID_CAMIN'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174109Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833017305163535069)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(833015967072535068)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_ID_CAMIN'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174112Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833017759049535070)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(833015967072535068)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_ID_CAMIN'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174109Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833013657806535065)
,p_name=>'P3_ADRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(833012049446535063)
,p_item_source_plug_id=>wwv_flow_imp.id(833012049446535063)
,p_prompt=>'Adresa'
,p_source=>'ADRESA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833012890679535064)
,p_name=>'P3_COD_CAMIN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(833012049446535063)
,p_item_source_plug_id=>wwv_flow_imp.id(833012049446535063)
,p_prompt=>'Cod Camin'
,p_source=>'COD_CAMIN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833012364899535064)
,p_name=>'P3_ID_CAMIN'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(833012049446535063)
,p_item_source_plug_id=>wwv_flow_imp.id(833012049446535063)
,p_prompt=>'Id Camin'
,p_source=>'ID_CAMIN'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833014021607535066)
,p_name=>'P3_IF_MIXT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(833012049446535063)
,p_item_source_plug_id=>wwv_flow_imp.id(833012049446535063)
,p_prompt=>'If Mixt'
,p_source=>'IF_MIXT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833013260027535065)
,p_name=>'P3_NUME_CAMIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(833012049446535063)
,p_item_source_plug_id=>wwv_flow_imp.id(833012049446535063)
,p_prompt=>'Nume Camin'
,p_source=>'NUME_CAMIN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(868833458568496006)
,p_name=>'Ascunde_Element'
,p_static_id=>'ascunde-element'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_IF_MIXT'
,p_condition_element=>'P3_IF_MIXT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260516203653Z')
,p_updated_on=>wwv_flow_imp.dz('20260516203653Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(868833693917496008)
,p_event_id=>wwv_flow_imp.id(868833458568496006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_IF_MIXT'
,p_created_on=>wwv_flow_imp.dz('20260516203653Z')
,p_updated_on=>wwv_flow_imp.dz('20260516203653Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(868833512719496007)
,p_event_id=>wwv_flow_imp.id(868833458568496006)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_IF_MIXT'
,p_created_on=>wwv_flow_imp.dz('20260516203653Z')
,p_updated_on=>wwv_flow_imp.dz('20260516203653Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833019359191535071)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>833019359191535071
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174109Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833018530973535070)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(833012049446535063)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Camine'
,p_static_id=>'initialize-form-camine'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>833018530973535070
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174109Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833018939218535071)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(833012049446535063)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Camine'
,p_static_id=>'process-form-camine'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>833018939218535071
,p_created_on=>wwv_flow_imp.dz('20260516174109Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174109Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Lista Preturi Camin'
,p_alias=>'LISTA-PRETURI-CAMIN1'
,p_step_title=>'Lista Preturi Camin'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833048754750535736)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(832988686670534946)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833044073617535724)
,p_plug_name=>'Lista Preturi Camin'
,p_static_id=>'lista-preturi-camin'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'LISTA_PRETURI_CAMIN'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(833044138816535724)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_ID_PRET:\#ID_PRET#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>833044138816535724
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833046295607535731)
,p_db_column_name=>'AN_UNIVERSITAR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'An Universitar'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833045850313535730)
,p_db_column_name=>'ID_CAMIN'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Camin'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(833036649172535716)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833045449736535728)
,p_db_column_name=>'ID_PRET'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Pret'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833046640795535732)
,p_db_column_name=>'PRET_BUGET'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Pret Buget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833047035660535734)
,p_db_column_name=>'PRET_TAXA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Pret Taxa'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(833451939940539423)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CAMIN:AN_UNIVERSITAR:PRET_BUGET:PRET_TAXA'
,p_sort_column_1=>'ID_CAMIN'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833047480754535735)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833044073617535724)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(833047858795535735)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(833044073617535724)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(833048232357535736)
,p_event_id=>wwv_flow_imp.id(833047858795535735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833044073617535724)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Lista Preturi Camin'
,p_alias=>'LISTA-PRETURI-CAMIN'
,p_page_mode=>'MODAL'
,p_step_title=>'Lista Preturi Camin'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260516174115Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833039943743535720)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833035855713535713)
,p_plug_name=>'Lista Preturi Camin'
,p_static_id=>'lista-preturi-camin'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'LISTA_PRETURI_CAMIN'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833040314471535720)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833039943743535720)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(833040820024535720)
,p_button_id=>wwv_flow_imp.id(833040314471535720)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833042145445535722)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(833039943743535720)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_ID_PRET'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833041347354535721)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(833039943743535720)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_ID_PRET'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833041782069535721)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(833039943743535720)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_ID_PRET'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833037249338535717)
,p_name=>'P5_AN_UNIVERSITAR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(833035855713535713)
,p_item_source_plug_id=>wwv_flow_imp.id(833035855713535713)
,p_prompt=>'An Universitar'
,p_source=>'AN_UNIVERSITAR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>9
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833036582834535716)
,p_name=>'P5_ID_CAMIN'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(833035855713535713)
,p_item_source_plug_id=>wwv_flow_imp.id(833035855713535713)
,p_prompt=>'Id Camin'
,p_source=>'ID_CAMIN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAMINE.COD_CAMIN'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833036160457535715)
,p_name=>'P5_ID_PRET'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(833035855713535713)
,p_item_source_plug_id=>wwv_flow_imp.id(833035855713535713)
,p_prompt=>'Id Pret'
,p_source=>'ID_PRET'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833037680967535717)
,p_name=>'P5_PRET_BUGET'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(833035855713535713)
,p_item_source_plug_id=>wwv_flow_imp.id(833035855713535713)
,p_prompt=>'Pret Buget'
,p_source=>'PRET_BUGET'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833038048315535718)
,p_name=>'P5_PRET_TAXA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(833035855713535713)
,p_item_source_plug_id=>wwv_flow_imp.id(833035855713535713)
,p_prompt=>'Pret Taxa'
,p_source=>'PRET_TAXA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833043310064535723)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>833043310064535723
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833042534952535722)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(833035855713535713)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Lista Preturi Camin'
,p_static_id=>'initialize-form-lista-preturi-camin'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>833042534952535722
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833042957924535722)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(833035855713535713)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Lista Preturi Camin'
,p_static_id=>'process-form-lista-preturi-camin'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>833042957924535722
,p_created_on=>wwv_flow_imp.dz('20260516174116Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174116Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Camere'
,p_alias=>'CAMERE1'
,p_step_title=>'Camere'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833064187276536094)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(832988686670534946)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260516174120Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174120Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833059504947536080)
,p_plug_name=>'Camere'
,p_static_id=>'camere'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'CAMERE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(833059688362536080)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_ID_CAMERA:\#ID_CAMERA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>833059688362536080
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833062450931536091)
,p_db_column_name=>'CAPACITATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Capacitate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174120Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833062099495536089)
,p_db_column_name=>'ETAJ'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Etaj'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174120Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833060984600536085)
,p_db_column_name=>'ID_CAMERA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Camera'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833061345938536087)
,p_db_column_name=>'ID_CAMIN'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Camin'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(833036649172535716)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174120Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833061665572536088)
,p_db_column_name=>'NR_CAMERA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nr Camera'
,p_column_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:10,RR:IR_ID_CAMERA:\#NR_CAMERA#\'
,p_column_linktext=>'#NR_CAMERA#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174120Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(833460602405539433)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CAMIN:NR_CAMERA:ETAJ:CAPACITATE'
,p_sort_column_1=>'ID_CAMIN'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833062815670536092)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833059504947536080)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
,p_created_on=>wwv_flow_imp.dz('20260516174120Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174120Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(833063220460536093)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(833059504947536080)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260516174120Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174120Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(833063618899536093)
,p_event_id=>wwv_flow_imp.id(833063220460536093)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833059504947536080)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174120Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174120Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Camere'
,p_alias=>'CAMERE'
,p_page_mode=>'MODAL'
,p_step_title=>'Camere'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833055444466536076)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174119Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833051487820536072)
,p_plug_name=>'Camere'
,p_static_id=>'camere'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'CAMERE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833055870264536077)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833055444466536076)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174119Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(833056376650536077)
,p_button_id=>wwv_flow_imp.id(833055870264536077)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174119Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833057611772536078)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(833055444466536076)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID_CAMERA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174119Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833056812012536078)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(833055444466536076)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_ID_CAMERA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174120Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833057241023536078)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(833055444466536076)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID_CAMERA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174119Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833053519161536075)
,p_name=>'P7_CAPACITATE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(833051487820536072)
,p_item_source_plug_id=>wwv_flow_imp.id(833051487820536072)
,p_prompt=>'Capacitate'
,p_source=>'CAPACITATE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833053198641536074)
,p_name=>'P7_ETAJ'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(833051487820536072)
,p_item_source_plug_id=>wwv_flow_imp.id(833051487820536072)
,p_prompt=>'Etaj'
,p_source=>'ETAJ'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833051860773536073)
,p_name=>'P7_ID_CAMERA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(833051487820536072)
,p_item_source_plug_id=>wwv_flow_imp.id(833051487820536072)
,p_prompt=>'Id Camera'
,p_source=>'ID_CAMERA'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833052203193536073)
,p_name=>'P7_ID_CAMIN'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(833051487820536072)
,p_item_source_plug_id=>wwv_flow_imp.id(833051487820536072)
,p_prompt=>'Id Camin'
,p_source=>'ID_CAMIN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAMINE.COD_CAMIN'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833052731867536074)
,p_name=>'P7_NR_CAMERA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(833051487820536072)
,p_item_source_plug_id=>wwv_flow_imp.id(833051487820536072)
,p_prompt=>'Nr Camera'
,p_source=>'NR_CAMERA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833058833950536079)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>833058833950536079
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174119Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833058047076536079)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(833051487820536072)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Camere'
,p_static_id=>'initialize-form-camere'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>833058047076536079
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174119Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833058496862536079)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(833051487820536072)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Camere'
,p_static_id=>'process-form-camere'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>833058496862536079
,p_created_on=>wwv_flow_imp.dz('20260516174119Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174119Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Studenti'
,p_alias=>'STUDENTI1'
,p_step_title=>'Studenti'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833100749128536470)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(832988686670534946)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833092303006536444)
,p_plug_name=>'Studenti'
,p_static_id=>'studenti'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'STUDENTI'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(833092471478536444)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_ID_STUDENT:\#ID_STUDENT#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>833092471478536444
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833097042212536460)
,p_db_column_name=>'AN_CURENT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'An Curent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833097436338536462)
,p_db_column_name=>'AN_INCEPUT_STUDII'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'An Inceput Studii'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833095401684536454)
,p_db_column_name=>'CNP'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cnp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833098678486536466)
,p_db_column_name=>'EMAIL'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833096222209536457)
,p_db_column_name=>'FACULTATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Facultate'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833097838539536463)
,p_db_column_name=>'FORMA_FINANTARE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Forma Finantare'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833093736970536448)
,p_db_column_name=>'ID_STUDENT'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Student'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833094287969536450)
,p_db_column_name=>'NR_MATRICOL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nr Matricol'
,p_column_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:10,RR:IR_ID_STUDENT:\#NR_MATRICOL#\'
,p_column_linktext=>'#NR_MATRICOL#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833094676656536452)
,p_db_column_name=>'NUME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nume'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833095001680536453)
,p_db_column_name=>'PRENUME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Prenume'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833095862677536456)
,p_db_column_name=>'SEX'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Sex'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833096692808536459)
,p_db_column_name=>'SPECIALIZARE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Specializare'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833098207301536465)
,p_db_column_name=>'STATUS_STUDENT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Status Student'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833099040337536468)
,p_db_column_name=>'TELEFON'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Telefon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(833469362083539441)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NR_MATRICOL:NUME:PRENUME:CNP:SEX:FACULTATE:SPECIALIZARE:AN_CURENT:AN_INCEPUT_STUDII:FORMA_FINANTARE:STATUS_STUDENT:EMAIL:TELEFON'
,p_sort_column_1=>'NR_MATRICOL'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833099404774536469)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833092303006536444)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(833099811879536469)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(833092303006536444)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(833100286441536470)
,p_event_id=>wwv_flow_imp.id(833099811879536469)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833092303006536444)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Studenti'
,p_alias=>'STUDENTI'
,p_page_mode=>'MODAL'
,p_step_title=>'Studenti'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260516174122Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516202532Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833088211740536439)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833078119663536427)
,p_plug_name=>'Studenti'
,p_static_id=>'studenti'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'STUDENTI'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833088638215536439)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833088211740536439)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(833089120846536440)
,p_button_id=>wwv_flow_imp.id(833088638215536439)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833090467371536441)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(833088211740536439)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_ID_STUDENT'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833089618697536440)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(833088211740536439)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_ID_STUDENT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833090016909536441)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(833088211740536439)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_ID_STUDENT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833081696362536432)
,p_name=>'P9_AN_CURENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'An Curent'
,p_source=>'AN_CURENT'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833082042984536432)
,p_name=>'P9_AN_INCEPUT_STUDII'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'An Inceput Studii'
,p_source=>'AN_INCEPUT_STUDII'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833080069468536430)
,p_name=>'P9_CNP'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'Cnp'
,p_source=>'CNP'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>13
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833083256283536434)
,p_name=>'P9_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833080830310536431)
,p_name=>'P9_FACULTATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'Facultate'
,p_source=>'FACULTATE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833082400487536433)
,p_name=>'P9_FORMA_FINANTARE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'Forma Finantare'
,p_source=>'FORMA_FINANTARE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833078490734536428)
,p_name=>'P9_ID_STUDENT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'Id Student'
,p_source=>'ID_STUDENT'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833078819278536429)
,p_name=>'P9_NR_MATRICOL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'Nr Matricol'
,p_source=>'NR_MATRICOL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833079201286536429)
,p_name=>'P9_NUME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'Nume'
,p_source=>'NUME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833079622063536430)
,p_name=>'P9_PRENUME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'Prenume'
,p_source=>'PRENUME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833080477973536430)
,p_name=>'P9_SEX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'Sex'
,p_source=>'SEX'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833081298501536431)
,p_name=>'P9_SPECIALIZARE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'Specializare'
,p_source=>'SPECIALIZARE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833082844009536434)
,p_name=>'P9_STATUS_STUDENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'Status Student'
,p_source=>'STATUS_STUDENT'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833083639473536435)
,p_name=>'P9_TELEFON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_item_source_plug_id=>wwv_flow_imp.id(833078119663536427)
,p_prompt=>'Telefon'
,p_source=>'TELEFON'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(868833375818496005)
,p_validation_name=>'Validare_CNP'
,p_static_id=>'validare-cnp'
,p_validation_sequence=>10
,p_validation=>'P9_CNP'
,p_validation2=>'^[0-9]{13}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>unistr('CNP-ul trebuie s\0103 con\021Bin\0103 exact 13 cifre!')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260516202532Z')
,p_updated_on=>wwv_flow_imp.dz('20260516202532Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833091603339536443)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>833091603339536443
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833090801670536442)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(833078119663536427)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Studenti'
,p_static_id=>'initialize-form-studenti'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>833090801670536442
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833091263559536442)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(833078119663536427)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Studenti'
,p_static_id=>'process-form-studenti'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>833091263559536442
,p_created_on=>wwv_flow_imp.dz('20260516174123Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174123Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Cazari'
,p_alias=>'CAZARI1'
,p_step_title=>'Cazari'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833118351466536838)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(832988686670534946)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833112813766536821)
,p_plug_name=>'Cazari'
,p_static_id=>'cazari'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'CAZARI'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(833112964722536821)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_ID_CAZARE:\#ID_CAZARE#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>833112964722536821
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833115402860536831)
,p_db_column_name=>'AN_UNIVERSITAR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'An Universitar'
,p_column_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:12,RR:IR_ID_CAZARE:\#AN_UNIVERSITAR#\'
,p_column_linktext=>'#AN_UNIVERSITAR#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833116202904536834)
,p_db_column_name=>'DATA_FINAL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Data Final'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833115845956536832)
,p_db_column_name=>'DATA_START'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Data Start'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833115090427536829)
,p_db_column_name=>'ID_CAMERA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id Camera'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(833104421703536808)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833114228232536826)
,p_db_column_name=>'ID_CAZARE'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Cazare'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833114651470536828)
,p_db_column_name=>'ID_STUDENT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Student'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(833103734430536807)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833116625660536835)
,p_db_column_name=>'STATUS_CAZARE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status Cazare'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(833488562246539461)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_STUDENT:ID_CAMERA:AN_UNIVERSITAR:DATA_START:DATA_FINAL:STATUS_CAZARE'
,p_sort_column_1=>'ID_STUDENT'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833117021255536836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833112813766536821)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:11::'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(833117457219536837)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(833112813766536821)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(833117867773536837)
,p_event_id=>wwv_flow_imp.id(833117457219536837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833112813766536821)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Cazari'
,p_alias=>'CAZARI'
,p_page_mode=>'MODAL'
,p_step_title=>'Cazari'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260516174126Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833108722071536814)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833102976262536805)
,p_plug_name=>'Cazari'
,p_static_id=>'cazari'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'CAZARI'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833109158175536814)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833108722071536814)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(833109692540536815)
,p_button_id=>wwv_flow_imp.id(833109158175536814)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833110927328536816)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(833108722071536814)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_ID_CAZARE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833110127201536815)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(833108722071536814)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P11_ID_CAZARE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833110568746536816)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(833108722071536814)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_ID_CAZARE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833105077640536809)
,p_name=>'P11_AN_UNIVERSITAR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_item_source_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_prompt=>'An Universitar'
,p_source=>'AN_UNIVERSITAR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>9
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833105835192536811)
,p_name=>'P11_DATA_FINAL'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_item_source_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_prompt=>'Data Final'
,p_source=>'DATA_FINAL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833105450934536810)
,p_name=>'P11_DATA_START'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_item_source_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_prompt=>'Data Start'
,p_source=>'DATA_START'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833104373058536808)
,p_name=>'P11_ID_CAMERA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_item_source_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_prompt=>'Id Camera'
,p_source=>'ID_CAMERA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAMERE.NR_CAMERA'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833103232860536806)
,p_name=>'P11_ID_CAZARE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_item_source_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_prompt=>'Id Cazare'
,p_source=>'ID_CAZARE'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833103644066536807)
,p_name=>'P11_ID_STUDENT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_item_source_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_prompt=>'Id Student'
,p_source=>'ID_STUDENT'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STUDENTI.NR_MATRICOL'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833106234999536811)
,p_name=>'P11_STATUS_CAZARE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_item_source_plug_id=>wwv_flow_imp.id(833102976262536805)
,p_prompt=>'Status Cazare'
,p_source=>'STATUS_CAZARE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833112193913536820)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>833112193913536820
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833111325676536816)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(833102976262536805)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Cazari'
,p_static_id=>'initialize-form-cazari'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>833111325676536816
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833111733964536820)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(833102976262536805)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Cazari'
,p_static_id=>'process-form-cazari'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>833111733964536820
,p_created_on=>wwv_flow_imp.dz('20260516174127Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174127Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Facturi Cazare'
,p_alias=>'FACTURI-CAZARE1'
,p_step_title=>'Facturi Cazare'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833335951492537210)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(832988686670534946)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833330452169537193)
,p_plug_name=>'Facturi Cazare'
,p_static_id=>'facturi-cazare'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'FACTURI_CAZARE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(833330521186537193)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP:P13_ID_FACTURA:\#ID_FACTURA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>833330521186537193
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833333017467537202)
,p_db_column_name=>'ANUL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Anul'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833333871211537205)
,p_db_column_name=>'DATA_EMITERE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Data Emitere'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833332256003537199)
,p_db_column_name=>'ID_CAZARE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Cazare'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(833321796332537182)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833331898410537197)
,p_db_column_name=>'ID_FACTURA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Factura'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833332628210537200)
,p_db_column_name=>'LUNA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Luna'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833334257561537207)
,p_db_column_name=>'STATUS_FACTURA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status Factura'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833333486229537203)
,p_db_column_name=>'SUMA_PLATA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Suma Plata'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(833499034141539471)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CAZARE:LUNA:ANUL:SUMA_PLATA:DATA_EMITERE:STATUS_FACTURA'
,p_sort_column_1=>'ID_CAZARE'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833334622021537208)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833330452169537193)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:13::'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(833335097684537209)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(833330452169537193)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(833335406090537209)
,p_event_id=>wwv_flow_imp.id(833335097684537209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833330452169537193)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Facturi Cazare'
,p_alias=>'FACTURI-CAZARE'
,p_page_mode=>'MODAL'
,p_step_title=>'Facturi Cazare'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260516174130Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833326399089537188)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833320810307537180)
,p_plug_name=>'Facturi Cazare'
,p_static_id=>'facturi-cazare'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'FACTURI_CAZARE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260516174130Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833326711066537189)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833326399089537188)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(833327202934537189)
,p_button_id=>wwv_flow_imp.id(833326711066537189)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833328571770537190)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(833326399089537188)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_ID_FACTURA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833327702194537190)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(833326399089537188)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_ID_FACTURA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833328104586537190)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(833326399089537188)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_ID_FACTURA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833322773464537184)
,p_name=>'P13_ANUL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_item_source_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_prompt=>'Anul'
,p_source=>'ANUL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174130Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833323576418537185)
,p_name=>'P13_DATA_EMITERE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_item_source_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_prompt=>'Data Emitere'
,p_source=>'DATA_EMITERE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174130Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833321676667537182)
,p_name=>'P13_ID_CAZARE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_item_source_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_prompt=>'Id Cazare'
,p_source=>'ID_CAZARE'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAZARI.AN_UNIVERSITAR'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174130Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833321207235537181)
,p_name=>'P13_ID_FACTURA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_item_source_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_prompt=>'Id Factura'
,p_source=>'ID_FACTURA'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174130Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833322337538537184)
,p_name=>'P13_LUNA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_item_source_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_prompt=>'Luna'
,p_source=>'LUNA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174130Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833323982342537186)
,p_name=>'P13_STATUS_FACTURA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_item_source_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_prompt=>'Status Factura'
,p_source=>'STATUS_FACTURA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174130Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833323192022537185)
,p_name=>'P13_SUMA_PLATA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_item_source_plug_id=>wwv_flow_imp.id(833320810307537180)
,p_prompt=>'Suma Plata'
,p_source=>'SUMA_PLATA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174130Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833329760548537192)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>833329760548537192
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833328987805537191)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(833320810307537180)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Facturi Cazare'
,p_static_id=>'initialize-form-facturi-cazare'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>833328987805537191
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833329304256537191)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(833320810307537180)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Facturi Cazare'
,p_static_id=>'process-form-facturi-cazare'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>833329304256537191
,p_created_on=>wwv_flow_imp.dz('20260516174131Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174131Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Staff'
,p_alias=>'STAFF1'
,p_step_title=>'Staff'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833354196017537579)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(832988686670534946)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833348169327537561)
,p_plug_name=>'Staff'
,p_static_id=>'staff'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'STAFF'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(833348231843537561)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP:P15_ID_STAFF:\#ID_STAFF#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>833348231843537561
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833350729072537570)
,p_db_column_name=>'CNP'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cnp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833351913343537574)
,p_db_column_name=>'EMAIL_INSTITUTIONAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email Institutional'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833351134726537571)
,p_db_column_name=>'FUNCTIE_BAZA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Functie Baza'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833352326876537576)
,p_db_column_name=>'ID_SEF'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Id Sef'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833349530303537565)
,p_db_column_name=>'ID_STAFF'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Staff'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833349945390537567)
,p_db_column_name=>'NUME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nume'
,p_column_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:22,RR:IR_ID_STAFF:\#NUME#\'
,p_column_linktext=>'#NUME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833350334421537569)
,p_db_column_name=>'PRENUME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Prenume'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833351564760537573)
,p_db_column_name=>'SALARIU_BAZA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Salariu Baza'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(833510424480539483)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NUME:PRENUME:CNP:FUNCTIE_BAZA:SALARIU_BAZA:EMAIL_INSTITUTIONAL:ID_SEF'
,p_sort_column_1=>'NUME'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833352813314537578)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833348169327537561)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:15::'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(833353261756537578)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(833348169327537561)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(833353610646537578)
,p_event_id=>wwv_flow_imp.id(833353261756537578)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833348169327537561)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Staff'
,p_alias=>'STAFF'
,p_page_mode=>'MODAL'
,p_step_title=>'Staff'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260516174133Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833344010548537556)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833338192815537549)
,p_plug_name=>'Staff'
,p_static_id=>'staff'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'STAFF'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833344484193537557)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833344010548537556)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(833344943024537557)
,p_button_id=>wwv_flow_imp.id(833344484193537557)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833346221674537559)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(833344010548537556)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_ID_STAFF'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833345403282537558)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(833344010548537556)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P15_ID_STAFF'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833345859974537558)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(833344010548537556)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_ID_STAFF'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833339649815537552)
,p_name=>'P15_CNP'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_item_source_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_prompt=>'Cnp'
,p_source=>'CNP'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>13
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833340806127537553)
,p_name=>'P15_EMAIL_INSTITUTIONAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_item_source_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_prompt=>'Email Institutional'
,p_source=>'EMAIL_INSTITUTIONAL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833340061900537552)
,p_name=>'P15_FUNCTIE_BAZA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_item_source_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_prompt=>'Functie Baza'
,p_source=>'FUNCTIE_BAZA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833341247432537554)
,p_name=>'P15_ID_SEF'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_item_source_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_prompt=>'Id Sef'
,p_source=>'ID_SEF'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833338492209537550)
,p_name=>'P15_ID_STAFF'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_item_source_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_prompt=>'Id Staff'
,p_source=>'ID_STAFF'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833338814884537551)
,p_name=>'P15_NUME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_item_source_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_prompt=>'Nume'
,p_source=>'NUME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833339222081537551)
,p_name=>'P15_PRENUME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_item_source_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_prompt=>'Prenume'
,p_source=>'PRENUME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833340465785537553)
,p_name=>'P15_SALARIU_BAZA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_item_source_plug_id=>wwv_flow_imp.id(833338192815537549)
,p_prompt=>'Salariu Baza'
,p_source=>'SALARIU_BAZA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833347406349537560)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>833347406349537560
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833346649118537559)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(833338192815537549)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Staff'
,p_static_id=>'initialize-form-staff'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>833346649118537559
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833347010165537559)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(833338192815537549)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Staff'
,p_static_id=>'process-form-staff'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>833347010165537559
,p_created_on=>wwv_flow_imp.dz('20260516174134Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174134Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Tipuri Sporuri'
,p_alias=>'TIPURI-SPORURI1'
,p_step_title=>'Tipuri Sporuri'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833367469252537938)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(832988686670534946)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833363590367537928)
,p_plug_name=>'Tipuri Sporuri'
,p_static_id=>'tipuri-sporuri'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TIPURI_SPORURI'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(833363641399537928)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:RP:P17_ID_SPOR:\#ID_SPOR#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>833363641399537928
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833364982554537932)
,p_db_column_name=>'ID_SPOR'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Spor'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833365368527537934)
,p_db_column_name=>'NUME_SPOR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nume Spor'
,p_column_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:18,RR:IR_ID_SPOR:\#NUME_SPOR#\'
,p_column_linktext=>'#NUME_SPOR#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833365758452537935)
,p_db_column_name=>'PROCENT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Procent'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(833522306082539496)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NUME_SPOR:PROCENT'
,p_sort_column_1=>'NUME_SPOR'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833366199238537937)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833363590367537928)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:17::'
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(833366547028537937)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(833363590367537928)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(833366909041537937)
,p_event_id=>wwv_flow_imp.id(833366547028537937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833363590367537928)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Tipuri Sporuri'
,p_alias=>'TIPURI-SPORURI'
,p_page_mode=>'MODAL'
,p_step_title=>'Tipuri Sporuri'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260516174137Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833359445625537923)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833357054053537920)
,p_plug_name=>'Tipuri Sporuri'
,p_static_id=>'tipuri-sporuri'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'TIPURI_SPORURI'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833359802331537924)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833359445625537923)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(833360359137537924)
,p_button_id=>wwv_flow_imp.id(833359802331537924)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833361626305537925)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(833359445625537923)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P17_ID_SPOR'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833360877982537925)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(833359445625537923)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P17_ID_SPOR'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833361296400537925)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(833359445625537923)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P17_ID_SPOR'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833357378794537921)
,p_name=>'P17_ID_SPOR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(833357054053537920)
,p_item_source_plug_id=>wwv_flow_imp.id(833357054053537920)
,p_prompt=>'Id Spor'
,p_source=>'ID_SPOR'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833357783920537921)
,p_name=>'P17_NUME_SPOR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(833357054053537920)
,p_item_source_plug_id=>wwv_flow_imp.id(833357054053537920)
,p_prompt=>'Nume Spor'
,p_source=>'NUME_SPOR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833358147669537922)
,p_name=>'P17_PROCENT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(833357054053537920)
,p_item_source_plug_id=>wwv_flow_imp.id(833357054053537920)
,p_prompt=>'Procent'
,p_source=>'PROCENT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833362871485537927)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>833362871485537927
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833362001475537926)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(833357054053537920)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Tipuri Sporuri'
,p_static_id=>'initialize-form-tipuri-sporuri'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>833362001475537926
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833362417712537926)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(833357054053537920)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Tipuri Sporuri'
,p_static_id=>'process-form-tipuri-sporuri'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>833362417712537926
,p_created_on=>wwv_flow_imp.dz('20260516174138Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174138Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Angajat Sporuri'
,p_alias=>'ANGAJAT-SPORURI1'
,p_step_title=>'Angajat Sporuri'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833377645851538298)
,p_plug_name=>'Angajat Sporuri'
,p_static_id=>'angajat-sporuri'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ANGAJAT_SPORURI'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(833377718718538298)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:RP:P19_ID_ASOC:\#ID_ASOC#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>833377718718538298
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833379008815538302)
,p_db_column_name=>'ID_ASOC'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Asoc'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833379830527538306)
,p_db_column_name=>'ID_SPOR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id Spor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(833372033269538291)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833379476480538304)
,p_db_column_name=>'ID_STAFF'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Staff'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(833371340742538290)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(833528351580539503)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_STAFF:ID_SPOR'
,p_sort_column_1=>'ID_STAFF'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833381549282538308)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(832988686670534946)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833380201174538307)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833377645851538298)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:19::'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(833380683913538307)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(833377645851538298)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(833381053375538308)
,p_event_id=>wwv_flow_imp.id(833380683913538307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833377645851538298)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Angajat Sporuri'
,p_alias=>'ANGAJAT-SPORURI'
,p_page_mode=>'MODAL'
,p_step_title=>'Angajat Sporuri'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260516174141Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833370586387538288)
,p_plug_name=>'Angajat Sporuri'
,p_static_id=>'angajat-sporuri'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ANGAJAT_SPORURI'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833373526296538293)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833373914475538294)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833373526296538293)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(833374468215538294)
,p_button_id=>wwv_flow_imp.id(833373914475538294)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833375777488538295)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(833373526296538293)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_ID_ASOC'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833374938884538295)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(833373526296538293)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P19_ID_ASOC'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833375395294538295)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(833373526296538293)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_ID_ASOC'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833370829270538289)
,p_name=>'P19_ID_ASOC'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(833370586387538288)
,p_item_source_plug_id=>wwv_flow_imp.id(833370586387538288)
,p_prompt=>'Id Asoc'
,p_source=>'ID_ASOC'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833371906091538291)
,p_name=>'P19_ID_SPOR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(833370586387538288)
,p_item_source_plug_id=>wwv_flow_imp.id(833370586387538288)
,p_prompt=>'Id Spor'
,p_source=>'ID_SPOR'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIPURI_SPORURI.NUME_SPOR'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833371280816538290)
,p_name=>'P19_ID_STAFF'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(833370586387538288)
,p_item_source_plug_id=>wwv_flow_imp.id(833370586387538288)
,p_prompt=>'Id Staff'
,p_source=>'ID_STAFF'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STAFF.NUME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833376950423538297)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>833376950423538297
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833376149824538296)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(833370586387538288)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Angajat Sporuri'
,p_static_id=>'initialize-form-angajat-sporuri'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>833376149824538296
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833376501716538296)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(833370586387538288)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Angajat Sporuri'
,p_static_id=>'process-form-angajat-sporuri'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>833376501716538296
,p_created_on=>wwv_flow_imp.dz('20260516174142Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174142Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Plati Salarii'
,p_alias=>'PLATI-SALARII1'
,p_step_title=>'Plati Salarii'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833412807439538690)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(832988686670534946)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260516174146Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174146Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833406903066538672)
,p_plug_name=>'Plati Salarii'
,p_static_id=>'plati-salarii'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PLATI_SALARII'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(833407080249538672)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP:P21_ID_PLATA:\#ID_PLATA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>833407080249538672
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833409592107538681)
,p_db_column_name=>'ANUL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Anul'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833409999323538683)
,p_db_column_name=>'DATA_PLATII'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Data Platii'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833408320743538676)
,p_db_column_name=>'ID_PLATA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Plata'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833408782294538678)
,p_db_column_name=>'ID_STAFF'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Staff'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(833371340742538290)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833409178855538680)
,p_db_column_name=>'LUNA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Luna'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833410327108538684)
,p_db_column_name=>'SALARIU_BAZA_ISTORIC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Salariu Baza Istoric'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833411111587538687)
,p_db_column_name=>'SALARIU_FINAL_NET'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Salariu Final Net'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174146Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833410762504538685)
,p_db_column_name=>'TOTAL_SPORURI_LEI'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Total Sporuri Lei'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(833534034127539508)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_STAFF:LUNA:ANUL:DATA_PLATII:SALARIU_BAZA_ISTORIC:TOTAL_SPORURI_LEI:SALARIU_FINAL_NET'
,p_sort_column_1=>'ID_STAFF'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833411514343538688)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833406903066538672)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:21::'
,p_created_on=>wwv_flow_imp.dz('20260516174146Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174146Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(833411990377538689)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(833406903066538672)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260516174146Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174146Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(833412379992538689)
,p_event_id=>wwv_flow_imp.id(833411990377538689)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833406903066538672)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174146Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174146Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Plati Salarii'
,p_alias=>'PLATI-SALARII'
,p_page_mode=>'MODAL'
,p_step_title=>'Plati Salarii'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260516174144Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833402872157538665)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174145Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833393442755538657)
,p_plug_name=>'Plati Salarii'
,p_static_id=>'plati-salarii'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PLATI_SALARII'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833403240333538665)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833402872157538665)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174145Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(833403702106538666)
,p_button_id=>wwv_flow_imp.id(833403240333538665)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174145Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833405052184538667)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(833402872157538665)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_ID_PLATA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174145Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833404260108538666)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(833402872157538665)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P21_ID_PLATA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174146Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833404608074538667)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(833402872157538665)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_ID_PLATA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174145Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833395775669538660)
,p_name=>'P21_ANUL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_item_source_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_prompt=>'Anul'
,p_source=>'ANUL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833396485318538660)
,p_name=>'P21_DATA_PLATII'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_item_source_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_prompt=>'Data Platii'
,p_source=>'DATA_PLATII'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833394126494538658)
,p_name=>'P21_ID_PLATA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_item_source_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_prompt=>'Id Plata'
,p_source=>'ID_PLATA'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833394602121538659)
,p_name=>'P21_ID_STAFF'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_item_source_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_prompt=>'Id Staff'
,p_source=>'ID_STAFF'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STAFF.NUME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833395371326538659)
,p_name=>'P21_LUNA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_item_source_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_prompt=>'Luna'
,p_source=>'LUNA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833397417603538661)
,p_name=>'P21_SALARIU_BAZA_ISTORIC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_item_source_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_prompt=>'Salariu Baza Istoric'
,p_source=>'SALARIU_BAZA_ISTORIC'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833399187430538662)
,p_name=>'P21_SALARIU_FINAL_NET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_item_source_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_prompt=>'Salariu Final Net'
,p_source=>'SALARIU_FINAL_NET'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833398260770538661)
,p_name=>'P21_TOTAL_SPORURI_LEI'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_item_source_plug_id=>wwv_flow_imp.id(833393442755538657)
,p_prompt=>'Total Sporuri Lei'
,p_source=>'TOTAL_SPORURI_LEI'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833406292602538671)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>833406292602538671
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174145Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833405446518538667)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(833393442755538657)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Plati Salarii'
,p_static_id=>'initialize-form-plati-salarii'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>833405446518538667
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174145Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833405819204538668)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(833393442755538657)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Plati Salarii'
,p_static_id=>'process-form-plati-salarii'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>833405819204538668
,p_created_on=>wwv_flow_imp.dz('20260516174145Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174145Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Personal Camin'
,p_alias=>'PERSONAL-CAMIN1'
,p_step_title=>'Personal Camin'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833426448365539049)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(832988686670534946)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833422187254539038)
,p_plug_name=>'Personal Camin'
,p_static_id=>'personal-camin'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PERSONAL_CAMIN'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(833422271745539038)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:RP:P23_ID_CONTRACT:\#ID_CONTRACT#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>833422271745539038
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833424782788539047)
,p_db_column_name=>'DATA_START_CONTRACT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Data Start Contract'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833424308420539045)
,p_db_column_name=>'ID_CAMIN'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id Camin'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(833036649172535716)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833423545630539042)
,p_db_column_name=>'ID_CONTRACT'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Contract'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833423951273539044)
,p_db_column_name=>'ID_STAFF'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Staff'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(833371340742538290)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(833547227970539522)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_STAFF:ID_CAMIN:DATA_START_CONTRACT'
,p_sort_column_1=>'ID_STAFF'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833425159165539048)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833422187254539038)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:23::'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(833425546537539048)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(833422187254539038)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(833425983270539049)
,p_event_id=>wwv_flow_imp.id(833425546537539048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833422187254539038)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Personal Camin'
,p_alias=>'PERSONAL-CAMIN'
,p_page_mode=>'MODAL'
,p_step_title=>'Personal Camin'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260516174148Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833418073512539033)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833414964333539028)
,p_plug_name=>'Personal Camin'
,p_static_id=>'personal-camin'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PERSONAL_CAMIN'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833418431408539033)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833418073512539033)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(833418914454539034)
,p_button_id=>wwv_flow_imp.id(833418431408539033)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833420244714539035)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(833418073512539033)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P23_ID_CONTRACT'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833419493435539035)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(833418073512539033)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P23_ID_CONTRACT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833419814269539035)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(833418073512539033)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P23_ID_CONTRACT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833416479447539031)
,p_name=>'P23_DATA_START_CONTRACT'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(833414964333539028)
,p_item_source_plug_id=>wwv_flow_imp.id(833414964333539028)
,p_prompt=>'Data Start Contract'
,p_source=>'DATA_START_CONTRACT'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833416083527539031)
,p_name=>'P23_ID_CAMIN'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(833414964333539028)
,p_item_source_plug_id=>wwv_flow_imp.id(833414964333539028)
,p_prompt=>'Id Camin'
,p_source=>'ID_CAMIN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAMINE.COD_CAMIN'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833415266383539029)
,p_name=>'P23_ID_CONTRACT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(833414964333539028)
,p_item_source_plug_id=>wwv_flow_imp.id(833414964333539028)
,p_prompt=>'Id Contract'
,p_source=>'ID_CONTRACT'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833415677783539030)
,p_name=>'P23_ID_STAFF'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(833414964333539028)
,p_item_source_plug_id=>wwv_flow_imp.id(833414964333539028)
,p_prompt=>'Id Staff'
,p_source=>'ID_STAFF'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STAFF.NUME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833421479451539037)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>833421479451539037
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833420648289539036)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(833414964333539028)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Personal Camin'
,p_static_id=>'initialize-form-personal-camin'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>833420648289539036
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833421070554539036)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(833414964333539028)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Personal Camin'
,p_static_id=>'process-form-personal-camin'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>833421070554539036
,p_created_on=>wwv_flow_imp.dz('20260516174149Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174149Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Avizier'
,p_alias=>'AVIZIER1'
,p_step_title=>'Avizier'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833436277538539398)
,p_plug_name=>'Avizier'
,p_static_id=>'avizier'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'AVIZIER'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(833436337288539398)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:RP:P25_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>833436337288539398
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833438025873539405)
,p_db_column_name=>'ID_ANUNT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Anunt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833438454936539406)
,p_db_column_name=>'MESAJ'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Mesaj'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(833437619803539403)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(833554153301539529)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:ID_ANUNT:MESAJ:'
,p_sort_column_1=>'ROWID'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260516174154Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833440147865539409)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(832988686670534946)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833438851414539408)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833436277538539398)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:25::'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(833439233789539408)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(833436277538539398)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(833439631889539408)
,p_event_id=>wwv_flow_imp.id(833439233789539408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833436277538539398)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Avizier'
,p_alias=>'AVIZIER'
,p_page_mode=>'MODAL'
,p_step_title=>'Avizier'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260516174152Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833429728863539390)
,p_plug_name=>'Avizier'
,p_static_id=>'avizier'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'AVIZIER'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833432112201539394)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833432545039539395)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833432112201539394)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(833433043160539395)
,p_button_id=>wwv_flow_imp.id(833432545039539395)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833434325197539396)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(833432112201539394)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P25_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833433519039539396)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(833432112201539394)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P25_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(833433926711539396)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(833432112201539394)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P25_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833430404618539392)
,p_name=>'P25_ID_ANUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(833429728863539390)
,p_item_source_plug_id=>wwv_flow_imp.id(833429728863539390)
,p_prompt=>'Id Anunt'
,p_source=>'ID_ANUNT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833430858788539393)
,p_name=>'P25_MESAJ'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(833429728863539390)
,p_item_source_plug_id=>wwv_flow_imp.id(833429728863539390)
,p_prompt=>'Mesaj'
,p_source=>'MESAJ'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174154Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(833430088663539391)
,p_name=>'P25_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(833429728863539390)
,p_item_source_plug_id=>wwv_flow_imp.id(833429728863539390)
,p_source=>'ROWID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833435506437539397)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>833435506437539397
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833434791990539397)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(833429728863539390)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Avizier'
,p_static_id=>'initialize-form-avizier'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>833434791990539397
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833435196153539397)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(833429728863539390)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Avizier'
,p_static_id=>'process-form-avizier'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>833435196153539397
,p_created_on=>wwv_flow_imp.dz('20260516174153Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174153Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'ASE Dormitory System - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_last_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(832994692173534964)
,p_plug_name=>'ASE Dormitory System'
,p_static_id=>'ase-dormitory-system'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(832996267518534967)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(832994692173534964)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832995599546534966)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(832994692173534964)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832995920243534966)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(832994692173534964)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832995151113534965)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(832994692173534964)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(833000321353534971)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>833000321353534971
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(832999964494534970)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>832999964494534970
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(832996653666534967)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>832996653666534967
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(832997643748534968)
,p_page_process_id=>wwv_flow_imp.id(832996653666534967)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(832998156252534969)
,p_page_process_id=>wwv_flow_imp.id(832996653666534967)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(832997134307534968)
,p_page_process_id=>wwv_flow_imp.id(832996653666534967)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(832998563815534969)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>832998563815534969
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(832999501672534970)
,p_page_process_id=>wwv_flow_imp.id(832998563815534969)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(832999068733534970)
,p_page_process_id=>wwv_flow_imp.id(832998563815534969)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260516174108Z')
,p_updated_on=>wwv_flow_imp.dz('20260516174108Z')
,p_created_by=>'SANDUMATEI24@STUD.ASE.RO'
,p_updated_by=>'SANDUMATEI24@STUD.ASE.RO'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
