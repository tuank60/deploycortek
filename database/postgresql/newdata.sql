PGDMP                         w            RBIcloud    10.3    10.3 k   -           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            .           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            /           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            0           1262    16988    RBIcloud    DATABASE     �   CREATE DATABASE "RBIcloud" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "RBIcloud";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            1           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            2           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1                       1259    17567    Email    TABLE     �   CREATE TABLE public."Email" (
    id integer NOT NULL,
    content text,
    "Is_see" integer,
    date date,
    "Emailsent" text,
    "Emailto" text,
    subject text
);
    DROP TABLE public."Email";
       public         postgres    false    3                       1259    17610 	   Emailsent    TABLE        CREATE TABLE public."Emailsent" (
    id bigint NOT NULL,
    content text,
    date date,
    email text,
    subject text
);
    DROP TABLE public."Emailsent";
       public         postgres    false    3                       1259    17608    Emailsent_id_seq    SEQUENCE     {   CREATE SEQUENCE public."Emailsent_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Emailsent_id_seq";
       public       postgres    false    275    3            3           0    0    Emailsent_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Emailsent_id_seq" OWNED BY public."Emailsent".id;
            public       postgres    false    274                       1259    17597    Emailto    TABLE     �   CREATE TABLE public."Emailto" (
    id bigint NOT NULL,
    content text,
    date date,
    "Email" text,
    "Is_see" integer,
    subject text
);
    DROP TABLE public."Emailto";
       public         postgres    false    3                       1259    17595    Emailto_id_seq    SEQUENCE     y   CREATE SEQUENCE public."Emailto_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Emailto_id_seq";
       public       postgres    false    3    273            4           0    0    Emailto_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Emailto_id_seq" OWNED BY public."Emailto".id;
            public       postgres    false    272            �            1259    16989    api_component_type    TABLE     ]  CREATE TABLE public.api_component_type (
    "APIComponentTypeID" bigint NOT NULL,
    "APIComponentTypeName" character varying(50),
    "GFFSmall" double precision,
    "GFFMedium" double precision,
    "GFFLarge" double precision,
    "GFFRupture" double precision,
    "GFFTotal" double precision,
    "HoleCostSmall" double precision,
    "HoleCostMedium" double precision,
    "HoleCostLarge" double precision,
    "HoleCostRupture" double precision,
    "OutageSmall" double precision,
    "OutageMedium" double precision,
    "OutageLarge" double precision,
    "OutageRupture" double precision
);
 &   DROP TABLE public.api_component_type;
       public         postgres    false    3            �            1259    16992 
   auth_group    TABLE     d   CREATE TABLE public.auth_group (
    id bigint NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    16995    auth_group_permissions    TABLE     v   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id bigint,
    permission_id bigint
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    16998    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id bigint NOT NULL,
    name character varying(255),
    content_type_id bigint,
    codename character varying(100)
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    17001 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id bigint NOT NULL,
    password character varying(128),
    last_login timestamp without time zone,
    is_superuser bigint,
    username character varying(150) NOT NULL,
    first_name character varying(30),
    last_name character varying(150),
    email character varying(254),
    is_staff bigint,
    is_active bigint,
    date_joined timestamp without time zone
);
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    17007    auth_user_groups    TABLE     j   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id bigint,
    group_id bigint
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    17010    auth_user_user_permissions    TABLE     y   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint,
    permission_id bigint
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    17013    componentmaster_ComponentID_seq    SEQUENCE     �   CREATE SEQUENCE public."componentmaster_ComponentID_seq"
    START WITH 9
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."componentmaster_ComponentID_seq";
       public       postgres    false    3            5           0    0 *   SEQUENCE "componentmaster_ComponentID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."componentmaster_ComponentID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."componentmaster_ComponentID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    203            �            1259    17015    component_master    TABLE     �  CREATE TABLE public.component_master (
    "ComponentID" bigint DEFAULT nextval('public."componentmaster_ComponentID_seq"'::regclass) NOT NULL,
    "ComponentNumber" character varying(100),
    "EquipmentID" bigint,
    "ComponentTypeID" bigint,
    "ComponentName" character varying(150),
    "ComponentDesc" character varying(250),
    "IsEquipmentLinked" bigint,
    "APIComponentTypeID" bigint,
    "Create" timestamp without time zone
);
 $   DROP TABLE public.component_master;
       public         postgres    false    203    3            �            1259    17022    component_type    TABLE     �   CREATE TABLE public.component_type (
    "ComponentTypeID" bigint NOT NULL,
    "ComponentTypeName" character varying(50),
    "ComponentTypeCode" character varying(50)
);
 "   DROP TABLE public.component_type;
       public         postgres    false    3            �            1259    17025    designcode_DesignCodeID_seq    SEQUENCE     �   CREATE SEQUENCE public."designcode_DesignCodeID_seq"
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."designcode_DesignCodeID_seq";
       public       postgres    false    3            6           0    0 &   SEQUENCE "designcode_DesignCodeID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."designcode_DesignCodeID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."designcode_DesignCodeID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    206            �            1259    17027    design_code    TABLE     �   CREATE TABLE public.design_code (
    "DesignCodeID" bigint DEFAULT nextval('public."designcode_DesignCodeID_seq"'::regclass) NOT NULL,
    "DesignCode" character varying(100),
    "DesignCodeApp" character varying(100),
    "SiteID" bigint
);
    DROP TABLE public.design_code;
       public         postgres    false    206    3            �            1259    17031    django_admin_log    TABLE       CREATE TABLE public.django_admin_log (
    id bigint NOT NULL,
    action_time timestamp without time zone,
    object_id text,
    object_repr character varying(200),
    action_flag bigint,
    change_message text,
    content_type_id bigint,
    user_id bigint
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    17037    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id bigint NOT NULL,
    app_label character varying(100),
    model character varying(100)
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    17040    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255),
    name character varying(255),
    applied timestamp without time zone
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    17046    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text,
    expire_date timestamp without time zone
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    17052    dm_category    TABLE     u   CREATE TABLE public.dm_category (
    "DMCategoryID" bigint NOT NULL,
    "DMCategoryName" character varying(100)
);
    DROP TABLE public.dm_category;
       public         postgres    false    3            �            1259    17055    dm_items    TABLE     �   CREATE TABLE public.dm_items (
    "DMItemID" bigint NOT NULL,
    "DMDescription" character varying(100),
    "DMSeq" bigint,
    "DMCategoryID" bigint,
    "DMCode" character varying(50),
    "HasDF" bigint,
    "FailureMode" character varying(50)
);
    DROP TABLE public.dm_items;
       public         postgres    false    3            �            1259    17058    equipmentmaster_EquipmentID_seq    SEQUENCE     �   CREATE SEQUENCE public."equipmentmaster_EquipmentID_seq"
    START WITH 8
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."equipmentmaster_EquipmentID_seq";
       public       postgres    false    3            7           0    0 *   SEQUENCE "equipmentmaster_EquipmentID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."equipmentmaster_EquipmentID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."equipmentmaster_EquipmentID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    214            �            1259    17060    equipment_master    TABLE     M  CREATE TABLE public.equipment_master (
    "EquipmentID" bigint DEFAULT nextval('public."equipmentmaster_EquipmentID_seq"'::regclass) NOT NULL,
    "EquipmentNumber" character varying(100),
    "EquipmentTypeID" bigint,
    "EquipmentName" character varying(150),
    "CommissionDate" timestamp without time zone,
    "DesignCodeID" bigint,
    "SiteID" bigint,
    "FacilityID" bigint,
    "ManufacturerID" bigint,
    "PFDNo" character varying(100),
    "ProcessDescription" character varying(250),
    "EquipmentDesc" character varying(250),
    "Create" timestamp without time zone
);
 $   DROP TABLE public.equipment_master;
       public         postgres    false    214    3            �            1259    17067    equipment_type    TABLE     �   CREATE TABLE public.equipment_type (
    "EquipmentTypeID" bigint NOT NULL,
    "EquipmentTypeCode" character varying(50),
    "EquipmentTypeName" character varying(50)
);
 "   DROP TABLE public.equipment_type;
       public         postgres    false    3            �            1259    17070    facility_FacilityID_seq    SEQUENCE     �   CREATE SEQUENCE public."facility_FacilityID_seq"
    START WITH 9
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."facility_FacilityID_seq";
       public       postgres    false    3            8           0    0 "   SEQUENCE "facility_FacilityID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."facility_FacilityID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."facility_FacilityID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    217            �            1259    17072    facility    TABLE       CREATE TABLE public.facility (
    "FacilityID" bigint DEFAULT nextval('public."facility_FacilityID_seq"'::regclass) NOT NULL,
    "SiteID" bigint,
    "FacilityName" character varying(100),
    "ManagementFactor" double precision,
    "Create" timestamp without time zone
);
    DROP TABLE public.facility;
       public         postgres    false    217    3            �            1259    17076    facility_risk_target    TABLE     �   CREATE TABLE public.facility_risk_target (
    "FacilityID" bigint NOT NULL,
    "RiskTarget_FC" double precision,
    "RiskTarget_AC" double precision
);
 (   DROP TABLE public.facility_risk_target;
       public         postgres    false    3            �            1259    17079    manufacturer    TABLE     �   CREATE TABLE public.manufacturer (
    "ManufacturerID" integer NOT NULL,
    "ManufacturerName" character varying(100) NOT NULL,
    "SiteID" bigint
);
     DROP TABLE public.manufacturer;
       public         postgres    false    3            �            1259    17082    manufacturer_ManufacturerID_seq    SEQUENCE     �   CREATE SEQUENCE public."manufacturer_ManufacturerID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."manufacturer_ManufacturerID_seq";
       public       postgres    false    3    220            9           0    0    manufacturer_ManufacturerID_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."manufacturer_ManufacturerID_seq" OWNED BY public.manufacturer."ManufacturerID";
            public       postgres    false    221            :           0    0 *   SEQUENCE "manufacturer_ManufacturerID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."manufacturer_ManufacturerID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."manufacturer_ManufacturerID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    221            �            1259    17084    rw_assessment    TABLE     f  CREATE TABLE public.rw_assessment (
    "ID" integer NOT NULL,
    "EquipmentID" integer NOT NULL,
    "ComponentID" integer NOT NULL,
    "AssessmentDate" timestamp without time zone,
    "RiskAnalysisPeriod" integer NOT NULL,
    "IsEquipmentLinked" smallint NOT NULL,
    "ProposalName" character varying(100),
    "Create" timestamp without time zone
);
 !   DROP TABLE public.rw_assessment;
       public         postgres    false    3            �            1259    17087    rw_assessment_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."rw_assessment_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."rw_assessment_ID_seq";
       public       postgres    false    222    3            ;           0    0    rw_assessment_ID_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."rw_assessment_ID_seq" OWNED BY public.rw_assessment."ID";
            public       postgres    false    223            <           0    0    SEQUENCE "rw_assessment_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."rw_assessment_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."rw_assessment_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    223            �            1259    17089    rw_ca_level1    TABLE     >  CREATE TABLE public.rw_ca_level1 (
    "ID" integer NOT NULL,
    "Release_Phase" character varying(50),
    fact_di double precision,
    fact_mit double precision,
    fact_ait double precision,
    "CA_cmd" double precision,
    "CA_inj_flame" double precision,
    "CA_inj_toxic" double precision,
    "CA_inj_ntnf" double precision,
    "FC_cmd" double precision,
    "FC_affa" double precision,
    "FC_prod" double precision,
    "FC_inj" double precision,
    "FC_envi" double precision,
    "FC_total" double precision,
    "FCOF_Category" character varying(50)
);
     DROP TABLE public.rw_ca_level1;
       public         postgres    false    3            �            1259    17092 
   rw_ca_tank    TABLE     �  CREATE TABLE public.rw_ca_tank (
    "ID" integer NOT NULL,
    "Hydraulic_Water" double precision,
    "Hydraulic_Fluid" double precision,
    "Seepage_Velocity" double precision,
    "Flow_Rate_D1" double precision,
    "Flow_Rate_D2" double precision,
    "Flow_Rate_D3" double precision,
    "Flow_Rate_D4" double precision,
    "Leak_Duration_D1" double precision,
    "Leak_Duration_D2" double precision,
    "Leak_Duration_D3" double precision,
    "Leak_Duration_D4" double precision,
    "Release_Volume_Leak_D1" double precision,
    "Release_Volume_Leak_D2" double precision,
    "Release_Volume_Leak_D3" double precision,
    "Release_Volume_Leak_D4" double precision,
    "Release_Volume_Rupture" double precision,
    "Liquid_Height" double precision,
    "Volume_Fluid" double precision,
    "Time_Leak_Ground" double precision,
    "Volume_SubSoil_Leak_D1" double precision,
    "Volume_SubSoil_Leak_D4" double precision,
    "Volume_Ground_Water_Leak_D1" double precision,
    "Volume_Ground_Water_Leak_D4" double precision,
    "Barrel_Dike_Leak" double precision,
    "Barrel_Dike_Rupture" double precision,
    "Barrel_Onsite_Leak" double precision,
    "Barrel_Onsite_Rupture" double precision,
    "Barrel_Offsite_Leak" double precision,
    "Barrel_Offsite_Rupture" double precision,
    "Barrel_Water_Leak" double precision,
    "Barrel_Water_Rupture" double precision,
    "FC_Environ_Leak" double precision,
    "FC_Environ_Rupture" double precision,
    "FC_Environ" double precision,
    "Material_Factor" double precision,
    "Component_Damage_Cost" double precision,
    "Business_Cost" double precision,
    "Consequence" double precision,
    "ConsequenceCategory" character varying(50)
);
    DROP TABLE public.rw_ca_tank;
       public         postgres    false    3            �            1259    17095 
   rw_coating    TABLE     �  CREATE TABLE public.rw_coating (
    "ID" integer NOT NULL,
    "ExternalCoating" smallint,
    "ExternalInsulation" smallint,
    "InternalCladding" smallint,
    "InternalCoating" smallint,
    "InternalLining" smallint,
    "ExternalCoatingDate" timestamp without time zone,
    "ExternalCoatingQuality" character varying(50),
    "ExternalInsulationType" character varying(50),
    "InsulationCondition" character varying(50),
    "InsulationContainsChloride" smallint,
    "InternalLinerCondition" character varying(50),
    "InternalLinerType" character varying(50),
    "CladdingCorrosionRate" double precision,
    "SupportConfigNotAllowCoatingMaint" smallint
);
    DROP TABLE public.rw_coating;
       public         postgres    false    3            �            1259    17098    rw_component    TABLE     �  CREATE TABLE public.rw_component (
    "ID" integer NOT NULL,
    "NominalDiameter" double precision,
    "NominalThickness" double precision,
    "CurrentThickness" double precision,
    "MinReqThickness" double precision,
    "CurrentCorrosionRate" double precision,
    "BranchDiameter" character varying(50),
    "BranchJointType" character varying(50),
    "BrinnelHardness" character varying(50),
    "ChemicalInjection" smallint,
    "HighlyInjectionInsp" smallint,
    "ComplexityProtrusion" character varying(50),
    "CorrectiveAction" character varying(50),
    "CracksPresent" smallint,
    "CyclicLoadingWitin15_25m" character varying(50),
    "DamageFoundInspection" smallint,
    "DeltaFATT" double precision,
    "NumberPipeFittings" character varying(50),
    "PipeCondition" character varying(50),
    "PreviousFailures" character varying(50),
    "ShakingAmount" character varying(50),
    "ShakingDetected" smallint,
    "ShakingTime" character varying(50),
    "TrampElements" smallint,
    "ShellHeight" double precision,
    "ReleasePreventionBarrier" smallint,
    "ConcreteFoundation" smallint,
    "SeverityOfVibration" character varying(50)
);
     DROP TABLE public.rw_component;
       public         postgres    false    3            �            1259    17104    rw_damagemachinsm_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."rw_damagemachinsm_ID_seq"
    START WITH 13
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9223372036854773807
    CACHE 1;
 1   DROP SEQUENCE public."rw_damagemachinsm_ID_seq";
       public       postgres    false    3            =           0    0 #   SEQUENCE "rw_damagemachinsm_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."rw_damagemachinsm_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."rw_damagemachinsm_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    228            �            1259    17106    rw_damage_mechanism    TABLE       CREATE TABLE public.rw_damage_mechanism (
    "ID_DM" integer NOT NULL,
    "DMItemID" integer NOT NULL,
    "IsActive" smallint,
    "Notes" character varying(255),
    "ExpectedTypeID" integer,
    "IsEL" smallint,
    "ELValue" double precision,
    "IsDF" smallint,
    "IsUserDisabled" smallint,
    "DF1" double precision,
    "DF2" double precision,
    "DF3" double precision,
    "DFBase" double precision,
    "RLI" double precision,
    "HighestInspectionEffectiveness" character varying(50),
    "SecondInspectionEffectiveness" character varying(50),
    "NumberOfInspections" integer,
    "LastInspDate" timestamp without time zone,
    "InspDueDate" timestamp without time zone,
    "ID" bigint DEFAULT nextval('public."rw_damagemachinsm_ID_seq"'::regclass) NOT NULL
);
 '   DROP TABLE public.rw_damage_mechanism;
       public         postgres    false    228    3            �            1259    17110    rw_data_chart    TABLE     W  CREATE TABLE public.rw_data_chart (
    "ID" bigint NOT NULL,
    risk_target double precision,
    risk_age_1 double precision,
    risk_age_2 double precision,
    risk_age_3 double precision,
    risk_age_4 double precision,
    risk_age_5 double precision,
    risk_age_6 double precision,
    risk_age_7 double precision,
    risk_age_8 double precision,
    risk_age_9 double precision,
    risk_age_10 double precision,
    risk_age_11 double precision,
    risk_age_12 double precision,
    risk_age_13 double precision,
    risk_age_14 double precision,
    risk_age_15 double precision
);
 !   DROP TABLE public.rw_data_chart;
       public         postgres    false    3            �            1259    17113    rw_equipment    TABLE     �  CREATE TABLE public.rw_equipment (
    "ID" integer NOT NULL,
    "CommissionDate" timestamp without time zone NOT NULL,
    "AdminUpsetManagement" smallint NOT NULL,
    "ContainsDeadlegs" smallint,
    "CyclicOperation" smallint,
    "HighlyDeadlegInsp" smallint,
    "DowntimeProtectionUsed" smallint,
    "ExternalEnvironment" character varying(50),
    "HeatTraced" smallint,
    "InterfaceSoilWater" smallint,
    "LinerOnlineMonitoring" smallint,
    "MaterialExposedToClExt" smallint,
    "MinReqTemperaturePressurisation" double precision,
    "OnlineMonitoring" character varying(100),
    "PresenceSulphidesO2" smallint,
    "PresenceSulphidesO2Shutdown" smallint,
    "PressurisationControlled" smallint,
    "PWHT" smallint,
    "SteamOutWaterFlush" smallint,
    "ManagementFactor" double precision,
    "ThermalHistory" character varying(50),
    "YearLowestExpTemp" smallint,
    "Volume" double precision,
    "TypeOfSoil" character varying(50),
    "EnvironmentSensitivity" character varying(50),
    "DistanceToGroundWater" double precision,
    "AdjustmentSettle" character varying(100),
    "ComponentIsWelded" smallint,
    "TankIsMaintained" smallint
);
     DROP TABLE public.rw_equipment;
       public         postgres    false    3            �            1259    17116    rw_extcor_temperature    TABLE     �  CREATE TABLE public.rw_extcor_temperature (
    "ID" integer NOT NULL,
    "Minus12ToMinus8" double precision,
    "Minus8ToPlus6" double precision,
    "Plus6ToPlus32" double precision,
    "Plus32ToPlus71" double precision,
    "Plus71ToPlus107" double precision,
    "Plus107ToPlus121" double precision,
    "Plus121ToPlus135" double precision,
    "Plus135ToPlus162" double precision,
    "Plus162ToPlus176" double precision,
    "MoreThanPlus176" double precision
);
 )   DROP TABLE public.rw_extcor_temperature;
       public         postgres    false    3            �            1259    17119    rw_full_fcof    TABLE     9  CREATE TABLE public.rw_full_fcof (
    "ID" integer NOT NULL,
    "FCoFValue" double precision,
    "FCoFCategory" character varying(50),
    "AIL" smallint,
    envcost double precision,
    equipcost double precision,
    prodcost double precision,
    popdens double precision,
    injcost double precision
);
     DROP TABLE public.rw_full_fcof;
       public         postgres    false    3            �            1259    17122    rw_full_pof    TABLE     U  CREATE TABLE public.rw_full_pof (
    "ID" integer NOT NULL,
    "ThinningAP1" double precision,
    "ThinningAP2" double precision,
    "ThinningAP3" double precision,
    "SCCAP1" double precision,
    "SCCAP2" double precision,
    "SCCAP3" double precision,
    "ExternalAP1" double precision,
    "ExternalAP2" double precision,
    "ExternalAP3" double precision,
    "BrittleAP1" double precision,
    "BrittleAP2" double precision,
    "BrittleAP3" double precision,
    "HTHA_AP1" double precision,
    "HTHA_AP2" double precision,
    "HTHA_AP3" double precision,
    "FatigueAP1" double precision,
    "FatigueAP2" double precision,
    "FatigueAP3" double precision,
    "FMS" double precision,
    "ThinningType" character varying(7),
    "GFFTotal" double precision,
    "ThinningLocalAP1" double precision,
    "ThinningLocalAP2" double precision,
    "ThinningLocalAP3" double precision,
    "ThinningGeneralAP1" double precision,
    "ThinningGeneralAP2" double precision,
    "ThinningGeneralAP3" double precision,
    "TotalDFAP1" double precision,
    "TotalDFAP2" double precision,
    "TotalDFAP3" double precision,
    "PoFAP1" double precision,
    "PoFAP2" double precision,
    "PoFAP3" double precision,
    "PoFAP1Category" character varying(50),
    "PoFAP2Category" character varying(50),
    "PoFAP3Category" character varying(50)
);
    DROP TABLE public.rw_full_pof;
       public         postgres    false    3            �            1259    17125    rw_input_ca_level1    TABLE     �  CREATE TABLE public.rw_input_ca_level1 (
    "ID" integer NOT NULL,
    "API_FLUID" character varying(50),
    "SYSTEM" character varying(50),
    "Release_Duration" character varying(50),
    "Detection_Type" character varying(50),
    "Isulation_Type" character varying(50),
    "Mitigation_System" character varying(150),
    "Equipment_Cost" double precision,
    "Injure_Cost" double precision,
    "Evironment_Cost" double precision,
    "Toxic_Percent" double precision,
    "Personal_Density" double precision,
    "Material_Cost" double precision,
    "Production_Cost" double precision,
    "Mass_Inventory" double precision,
    "Mass_Component" double precision,
    "Stored_Pressure" double precision,
    "Stored_Temp" double precision
);
 &   DROP TABLE public.rw_input_ca_level1;
       public         postgres    false    3            �            1259    17128    rw_input_ca_tank    TABLE     .  CREATE TABLE public.rw_input_ca_tank (
    "ID" integer NOT NULL,
    "FLUID_HEIGHT" double precision,
    "SHELL_COURSE_HEIGHT" double precision,
    "TANK_DIAMETTER" double precision,
    "Prevention_Barrier" smallint,
    "Environ_Sensitivity" character varying(50),
    "P_lvdike" double precision,
    "P_onsite" double precision,
    "P_offsite" double precision,
    "Soil_Type" character varying(150),
    "TANK_FLUID" character varying(150),
    "API_FLUID" character varying(50),
    "SW" double precision,
    "ProductionCost" double precision
);
 $   DROP TABLE public.rw_input_ca_tank;
       public         postgres    false    3            �            1259    17131    rw_inspection_history    TABLE     �  CREATE TABLE public.rw_inspection_history (
    "ID" integer NOT NULL,
    "InspectionPlanName" character varying(100),
    "InspectionCoverageName" character varying(100),
    "EquipmentNumber" character varying(50),
    "ComponentNumber" character varying(50),
    "DM" character varying(150),
    "InspectionType" character varying(250),
    "InspectionDate" timestamp without time zone,
    "InspectionEffective" character varying(50)
);
 )   DROP TABLE public.rw_inspection_history;
       public         postgres    false    3            �            1259    17137    rw_inspection_history_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."rw_inspection_history_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."rw_inspection_history_ID_seq";
       public       postgres    false    3    237            >           0    0    rw_inspection_history_ID_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."rw_inspection_history_ID_seq" OWNED BY public.rw_inspection_history."ID";
            public       postgres    false    238            ?           0    0 '   SEQUENCE "rw_inspection_history_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."rw_inspection_history_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."rw_inspection_history_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    238            �            1259    17139    rw_material    TABLE     L  CREATE TABLE public.rw_material (
    "ID" integer NOT NULL,
    "MaterialName" character varying(100),
    "DesignPressure" double precision,
    "DesignTemperature" double precision,
    "MinDesignTemperature" double precision,
    "BrittleFractureThickness" double precision,
    "CorrosionAllowance" double precision,
    "SigmaPhase" double precision,
    "SulfurContent" character varying(50),
    "HeatTreatment" character varying(50),
    "ReferenceTemperature" double precision,
    "PTAMaterialCode" character varying(70),
    "HTHAMaterialCode" character varying(50),
    "IsPTA" smallint,
    "IsHTHA" smallint,
    "Austenitic" smallint,
    "Temper" smallint,
    "CarbonLowAlloy" smallint,
    "NickelBased" smallint,
    "ChromeMoreEqual12" smallint,
    "AllowableStress" double precision,
    "CostFactor" double precision
);
    DROP TABLE public.rw_material;
       public         postgres    false    3            �            1259    17142 	   rw_stream    TABLE     �  CREATE TABLE public.rw_stream (
    "ID" integer NOT NULL,
    "AmineSolution" character varying(50),
    "AqueousOperation" smallint,
    "AqueousShutdown" smallint,
    "ToxicConstituent" smallint,
    "Caustic" smallint,
    "Chloride" double precision,
    "CO3Concentration" double precision,
    "Cyanide" smallint,
    "ExposedToGasAmine" smallint,
    "ExposedToSulphur" smallint,
    "ExposureToAmine" character varying(50),
    "H2S" smallint,
    "H2SInWater" double precision,
    "Hydrogen" smallint,
    "H2SPartialPressure" double precision,
    "Hydrofluoric" smallint,
    "MaterialExposedToClInt" smallint,
    "MaxOperatingPressure" double precision,
    "MaxOperatingTemperature" double precision,
    "MinOperatingPressure" double precision,
    "MinOperatingTemperature" double precision,
    "CriticalExposureTemperature" double precision,
    "NaOHConcentration" double precision,
    "ReleaseFluidPercentToxic" double precision,
    "WaterpH" double precision,
    "TankFluidName" character varying(50),
    "FluidHeight" double precision,
    "FluidLeaveDikePercent" double precision,
    "FluidLeaveDikeRemainOnSitePercent" double precision,
    "FluidGoOffSitePercent" double precision
);
    DROP TABLE public.rw_stream;
       public         postgres    false    3            �            1259    17145    sites    TABLE     �   CREATE TABLE public.sites (
    "SiteID" integer NOT NULL,
    "SiteName" character varying(100),
    "Create" timestamp without time zone
);
    DROP TABLE public.sites;
       public         postgres    false    3            �            1259    17148    sites_SiteID_seq    SEQUENCE     �   CREATE SEQUENCE public."sites_SiteID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."sites_SiteID_seq";
       public       postgres    false    241    3            @           0    0    sites_SiteID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."sites_SiteID_seq" OWNED BY public.sites."SiteID";
            public       postgres    false    242            A           0    0    SEQUENCE "sites_SiteID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."sites_SiteID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."sites_SiteID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    242            �            1259    17150    tbl_204_dm_htha    TABLE     �   CREATE TABLE public.tbl_204_dm_htha (
    "ID" integer NOT NULL,
    "Susceptibility" text,
    "No Inspection" integer,
    "1D" integer,
    "1C" integer,
    "1B" integer,
    "2D" integer,
    "2C" integer,
    "2B" integer
);
 #   DROP TABLE public.tbl_204_dm_htha;
       public         postgres    false    3            �            1259    17156    tbl_204_dm_htha_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_204_dm_htha_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."tbl_204_dm_htha_ID_seq";
       public       postgres    false    243    3            B           0    0    tbl_204_dm_htha_ID_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."tbl_204_dm_htha_ID_seq" OWNED BY public.tbl_204_dm_htha."ID";
            public       postgres    false    244            C           0    0 !   SEQUENCE "tbl_204_dm_htha_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_204_dm_htha_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_204_dm_htha_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    244            �            1259    17158    tbl_213_dm_impact_exemption    TABLE     �   CREATE TABLE public.tbl_213_dm_impact_exemption (
    "ID" integer NOT NULL,
    "ComponentThickness" double precision,
    "CurveA" double precision,
    "CurveB" double precision,
    "CurveC" double precision,
    "CurveD" double precision
);
 /   DROP TABLE public.tbl_213_dm_impact_exemption;
       public         postgres    false    3            �            1259    17161 "   tbl_213_dm_impact_exemption_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_213_dm_impact_exemption_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."tbl_213_dm_impact_exemption_ID_seq";
       public       postgres    false    245    3            D           0    0 "   tbl_213_dm_impact_exemption_ID_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."tbl_213_dm_impact_exemption_ID_seq" OWNED BY public.tbl_213_dm_impact_exemption."ID";
            public       postgres    false    246            E           0    0 -   SEQUENCE "tbl_213_dm_impact_exemption_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_213_dm_impact_exemption_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_213_dm_impact_exemption_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    246            �            1259    17163    tbl_214_dm_not_pwht    TABLE     e  CREATE TABLE public.tbl_214_dm_not_pwht (
    "ID" integer NOT NULL,
    "Tmin-Tref" integer,
    "6.4" double precision,
    "12.7" double precision,
    "25.4" double precision,
    "38.1" double precision,
    "50.8" double precision,
    "63.5" double precision,
    "76.2" double precision,
    "88.9" double precision,
    "101.6" double precision
);
 '   DROP TABLE public.tbl_214_dm_not_pwht;
       public         postgres    false    3            �            1259    17166    tbl_214_dm_not_pwht_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_214_dm_not_pwht_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."tbl_214_dm_not_pwht_ID_seq";
       public       postgres    false    247    3            F           0    0    tbl_214_dm_not_pwht_ID_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."tbl_214_dm_not_pwht_ID_seq" OWNED BY public.tbl_214_dm_not_pwht."ID";
            public       postgres    false    248            G           0    0 %   SEQUENCE "tbl_214_dm_not_pwht_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_214_dm_not_pwht_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_214_dm_not_pwht_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    248            �            1259    17168    tbl_215_dm_pwht    TABLE     a  CREATE TABLE public.tbl_215_dm_pwht (
    "ID" integer NOT NULL,
    "Tmin-Tref" integer,
    "6.4" double precision,
    "12.7" double precision,
    "25.4" double precision,
    "38.1" double precision,
    "50.8" double precision,
    "63.5" double precision,
    "76.2" double precision,
    "88.9" double precision,
    "101.6" double precision
);
 #   DROP TABLE public.tbl_215_dm_pwht;
       public         postgres    false    3            �            1259    17171    tbl_215_dm_pwht_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_215_dm_pwht_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."tbl_215_dm_pwht_ID_seq";
       public       postgres    false    3    249            H           0    0    tbl_215_dm_pwht_ID_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."tbl_215_dm_pwht_ID_seq" OWNED BY public.tbl_215_dm_pwht."ID";
            public       postgres    false    250            I           0    0 !   SEQUENCE "tbl_215_dm_pwht_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_215_dm_pwht_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_215_dm_pwht_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    250            �            1259    17173    tbl_3b21_si_conversion    TABLE     �   CREATE TABLE public.tbl_3b21_si_conversion (
    "conversionFactory" integer NOT NULL,
    "SIUnits" double precision,
    "USUnits" double precision
);
 *   DROP TABLE public.tbl_3b21_si_conversion;
       public         postgres    false    3            �            1259    17176 ,   tbl_3b21_si_conversion_conversionFactory_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_3b21_si_conversion_conversionFactory_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."tbl_3b21_si_conversion_conversionFactory_seq";
       public       postgres    false    251    3            J           0    0 ,   tbl_3b21_si_conversion_conversionFactory_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."tbl_3b21_si_conversion_conversionFactory_seq" OWNED BY public.tbl_3b21_si_conversion."conversionFactory";
            public       postgres    false    252            K           0    0 7   SEQUENCE "tbl_3b21_si_conversion_conversionFactory_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_3b21_si_conversion_conversionFactory_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_3b21_si_conversion_conversionFactory_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    252            �            1259    17178    tbl_511_dfb_thin    TABLE     �   CREATE TABLE public.tbl_511_dfb_thin (
    "ID" integer NOT NULL,
    art double precision,
    "E" integer,
    insp integer,
    "D" integer,
    "C" integer,
    "B" integer,
    "A" integer
);
 $   DROP TABLE public.tbl_511_dfb_thin;
       public         postgres    false    3            �            1259    17181    tbl_511_dfb_thin_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_511_dfb_thin_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."tbl_511_dfb_thin_ID_seq";
       public       postgres    false    253    3            L           0    0    tbl_511_dfb_thin_ID_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."tbl_511_dfb_thin_ID_seq" OWNED BY public.tbl_511_dfb_thin."ID";
            public       postgres    false    254            M           0    0 "   SEQUENCE "tbl_511_dfb_thin_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_511_dfb_thin_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_511_dfb_thin_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    254            �            1259    17183    tbl_512_dfb_thin_tank_bottom    TABLE     �   CREATE TABLE public.tbl_512_dfb_thin_tank_bottom (
    "ID" integer NOT NULL,
    art double precision,
    "E" integer,
    insp integer,
    "D" integer,
    "C" integer,
    "B" integer,
    "A" integer
);
 0   DROP TABLE public.tbl_512_dfb_thin_tank_bottom;
       public         postgres    false    3                        1259    17186 #   tbl_512_dfb_thin_tank_bottom_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_512_dfb_thin_tank_bottom_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."tbl_512_dfb_thin_tank_bottom_ID_seq";
       public       postgres    false    3    255            N           0    0 #   tbl_512_dfb_thin_tank_bottom_ID_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."tbl_512_dfb_thin_tank_bottom_ID_seq" OWNED BY public.tbl_512_dfb_thin_tank_bottom."ID";
            public       postgres    false    256            O           0    0 .   SEQUENCE "tbl_512_dfb_thin_tank_bottom_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_512_dfb_thin_tank_bottom_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_512_dfb_thin_tank_bottom_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    256                       1259    17188    tbl_52_ca_properties_level_1    TABLE       CREATE TABLE public.tbl_52_ca_properties_level_1 (
    "ID" integer NOT NULL,
    "Fluid" text,
    "MW" double precision,
    "Density" double precision,
    "NBP" double precision,
    "Ambient" text,
    ideal integer,
    "A" double precision,
    "B" double precision,
    "C" double precision,
    "D" double precision,
    "E" double precision,
    "Auto" double precision
);
 0   DROP TABLE public.tbl_52_ca_properties_level_1;
       public         postgres    false    3                       1259    17194 #   tbl_52_ca_properties_level_1_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_52_ca_properties_level_1_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."tbl_52_ca_properties_level_1_ID_seq";
       public       postgres    false    3    257            P           0    0 #   tbl_52_ca_properties_level_1_ID_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."tbl_52_ca_properties_level_1_ID_seq" OWNED BY public.tbl_52_ca_properties_level_1."ID";
            public       postgres    false    258            Q           0    0 .   SEQUENCE "tbl_52_ca_properties_level_1_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_52_ca_properties_level_1_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_52_ca_properties_level_1_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    258                       1259    17196    tbl_58_ca_component_dm    TABLE     �  CREATE TABLE public.tbl_58_ca_component_dm (
    "ID" integer NOT NULL,
    "Fluid" text,
    "CAINL_gas_a" double precision,
    "CAINL_gas_b" double precision,
    "CAINL_liquid_a" double precision,
    "CAINL_liquid_b" double precision,
    "CAIL_gas_a" double precision,
    "CAIL_gas_b" double precision,
    "CAIL_liquid_a" double precision,
    "CAIL_liquid_b" double precision,
    "IAINL_gas_a" double precision,
    "IAINL_gas_b" double precision,
    "IAINL_liquid_a" double precision,
    "IAINL_liquid_b" double precision,
    "IAIL_gas_a" double precision,
    "IAIL_gas_b" double precision,
    "IAIL_liquid_a" double precision,
    "IAIL_liquid_b" double precision
);
 *   DROP TABLE public.tbl_58_ca_component_dm;
       public         postgres    false    3                       1259    17202    tbl_58_ca_component_dm_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_58_ca_component_dm_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."tbl_58_ca_component_dm_ID_seq";
       public       postgres    false    259    3            R           0    0    tbl_58_ca_component_dm_ID_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."tbl_58_ca_component_dm_ID_seq" OWNED BY public.tbl_58_ca_component_dm."ID";
            public       postgres    false    260            S           0    0 (   SEQUENCE "tbl_58_ca_component_dm_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_58_ca_component_dm_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_58_ca_component_dm_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    260                       1259    17204    tbl_59_component_damage_person    TABLE     �  CREATE TABLE public.tbl_59_component_damage_person (
    "ID" integer NOT NULL,
    "Fluid" text,
    "CAINL_gas_a" double precision,
    "CAINL_gas_b" double precision,
    "CAINL_liquid_a" double precision,
    "CAINL_liquid_b" double precision,
    "CALL_gas_a" double precision,
    "CALL_gas_b" double precision,
    "CALL_liquid_a" double precision,
    "CALL_liquid_b" double precision,
    "IAINL_gas_a" double precision,
    "IAINL_gas_b" double precision,
    "IAINL_liquid_a" double precision,
    "IAINL_liquid_b" double precision,
    "IAIL_gas_a" double precision,
    "IAIL_gas_b" double precision,
    "IAIL_liquid_a" double precision,
    "IAIL_liquid_b" double precision
);
 2   DROP TABLE public.tbl_59_component_damage_person;
       public         postgres    false    3                       1259    17210 %   tbl_59_component_damage_person_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_59_component_damage_person_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."tbl_59_component_damage_person_ID_seq";
       public       postgres    false    3    261            T           0    0 %   tbl_59_component_damage_person_ID_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."tbl_59_component_damage_person_ID_seq" OWNED BY public.tbl_59_component_damage_person."ID";
            public       postgres    false    262            U           0    0 0   SEQUENCE "tbl_59_component_damage_person_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_59_component_damage_person_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_59_component_damage_person_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    262                       1259    17212    tbl_64_dm_linning_inorganic    TABLE     P  CREATE TABLE public.tbl_64_dm_linning_inorganic (
    "ID" integer NOT NULL,
    "YearsSinceLastInspection" integer,
    "Strip lined alloy" double precision,
    "Castable refractory" double precision,
    "Castable refractory severe condition" integer,
    "Glass lined" integer,
    "Acid Brick" integer,
    "Fibreglass" integer
);
 /   DROP TABLE public.tbl_64_dm_linning_inorganic;
       public         postgres    false    3                       1259    17215 "   tbl_64_dm_linning_inorganic_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_64_dm_linning_inorganic_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."tbl_64_dm_linning_inorganic_ID_seq";
       public       postgres    false    263    3            V           0    0 "   tbl_64_dm_linning_inorganic_ID_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."tbl_64_dm_linning_inorganic_ID_seq" OWNED BY public.tbl_64_dm_linning_inorganic."ID";
            public       postgres    false    264            W           0    0 -   SEQUENCE "tbl_64_dm_linning_inorganic_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_64_dm_linning_inorganic_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_64_dm_linning_inorganic_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    264            	           1259    17217    tbl_65_dm_linning_organic    TABLE     �   CREATE TABLE public.tbl_65_dm_linning_organic (
    "ID" integer NOT NULL,
    "YearInService" integer,
    "MoreThan6Years" integer,
    "WithinLast6Years" integer,
    "WithinLast3Years" double precision
);
 -   DROP TABLE public.tbl_65_dm_linning_organic;
       public         postgres    false    3            
           1259    17220     tbl_65_dm_linning_organic_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_65_dm_linning_organic_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."tbl_65_dm_linning_organic_ID_seq";
       public       postgres    false    3    265            X           0    0     tbl_65_dm_linning_organic_ID_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."tbl_65_dm_linning_organic_ID_seq" OWNED BY public.tbl_65_dm_linning_organic."ID";
            public       postgres    false    266            Y           0    0 +   SEQUENCE "tbl_65_dm_linning_organic_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_65_dm_linning_organic_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_65_dm_linning_organic_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    266                       1259    17222    tbl_71_properties_storage_tank    TABLE       CREATE TABLE public.tbl_71_properties_storage_tank (
    "ID" integer NOT NULL,
    "Fluid" text,
    "Level 1 Consequence Analysis Representative Fluid" text,
    "Molecular Weight" integer,
    "Liquid Density" double precision,
    "Liquid Density Viscosity" double precision
);
 2   DROP TABLE public.tbl_71_properties_storage_tank;
       public         postgres    false    3                       1259    17228 %   tbl_71_properties_storage_tank_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_71_properties_storage_tank_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."tbl_71_properties_storage_tank_ID_seq";
       public       postgres    false    267    3            Z           0    0 %   tbl_71_properties_storage_tank_ID_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."tbl_71_properties_storage_tank_ID_seq" OWNED BY public.tbl_71_properties_storage_tank."ID";
            public       postgres    false    268            [           0    0 0   SEQUENCE "tbl_71_properties_storage_tank_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_71_properties_storage_tank_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_71_properties_storage_tank_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    268                       1259    17230    tbl_74_scc_dm_pwht    TABLE       CREATE TABLE public.tbl_74_scc_dm_pwht (
    "ID" integer NOT NULL,
    "SVI" integer,
    "E" integer,
    "1D" integer,
    "1C" integer,
    "1B" integer,
    "1A" integer,
    "2D" integer,
    "2C" integer,
    "2B" integer,
    "2A" integer,
    "3D" integer,
    "3C" integer,
    "3B" integer,
    "3A" integer,
    "4D" integer,
    "4C" integer,
    "4B" integer,
    "4A" integer,
    "5D" integer,
    "5C" integer,
    "5B" integer,
    "5A" integer,
    "6D" integer,
    "6C" integer,
    "6B" integer,
    "6A" integer
);
 &   DROP TABLE public.tbl_74_scc_dm_pwht;
       public         postgres    false    3                       1259    17233    tbl_74_scc_dm_pwht_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."tbl_74_scc_dm_pwht_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."tbl_74_scc_dm_pwht_ID_seq";
       public       postgres    false    3    269            \           0    0    tbl_74_scc_dm_pwht_ID_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."tbl_74_scc_dm_pwht_ID_seq" OWNED BY public.tbl_74_scc_dm_pwht."ID";
            public       postgres    false    270            ]           0    0 $   SEQUENCE "tbl_74_scc_dm_pwht_ID_seq"    ACL     �   REVOKE ALL ON SEQUENCE public."tbl_74_scc_dm_pwht_ID_seq" FROM postgres;
GRANT ALL ON SEQUENCE public."tbl_74_scc_dm_pwht_ID_seq" TO postgres WITH GRANT OPTION;
            public       postgres    false    270            �           2604    17613    Emailsent id    DEFAULT     p   ALTER TABLE ONLY public."Emailsent" ALTER COLUMN id SET DEFAULT nextval('public."Emailsent_id_seq"'::regclass);
 =   ALTER TABLE public."Emailsent" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    274    275    275            �           2604    17600 
   Emailto id    DEFAULT     l   ALTER TABLE ONLY public."Emailto" ALTER COLUMN id SET DEFAULT nextval('public."Emailto_id_seq"'::regclass);
 ;   ALTER TABLE public."Emailto" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    273    272    273            �           2604    17235    manufacturer ManufacturerID    DEFAULT     �   ALTER TABLE ONLY public.manufacturer ALTER COLUMN "ManufacturerID" SET DEFAULT nextval('public."manufacturer_ManufacturerID_seq"'::regclass);
 L   ALTER TABLE public.manufacturer ALTER COLUMN "ManufacturerID" DROP DEFAULT;
       public       postgres    false    221    220            �           2604    17236    rw_assessment ID    DEFAULT     x   ALTER TABLE ONLY public.rw_assessment ALTER COLUMN "ID" SET DEFAULT nextval('public."rw_assessment_ID_seq"'::regclass);
 A   ALTER TABLE public.rw_assessment ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    223    222            �           2604    17237    rw_inspection_history ID    DEFAULT     �   ALTER TABLE ONLY public.rw_inspection_history ALTER COLUMN "ID" SET DEFAULT nextval('public."rw_inspection_history_ID_seq"'::regclass);
 I   ALTER TABLE public.rw_inspection_history ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    238    237            �           2604    17238    sites SiteID    DEFAULT     p   ALTER TABLE ONLY public.sites ALTER COLUMN "SiteID" SET DEFAULT nextval('public."sites_SiteID_seq"'::regclass);
 =   ALTER TABLE public.sites ALTER COLUMN "SiteID" DROP DEFAULT;
       public       postgres    false    242    241            �           2604    17239    tbl_204_dm_htha ID    DEFAULT     |   ALTER TABLE ONLY public.tbl_204_dm_htha ALTER COLUMN "ID" SET DEFAULT nextval('public."tbl_204_dm_htha_ID_seq"'::regclass);
 C   ALTER TABLE public.tbl_204_dm_htha ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    244    243            �           2604    17240    tbl_213_dm_impact_exemption ID    DEFAULT     �   ALTER TABLE ONLY public.tbl_213_dm_impact_exemption ALTER COLUMN "ID" SET DEFAULT nextval('public."tbl_213_dm_impact_exemption_ID_seq"'::regclass);
 O   ALTER TABLE public.tbl_213_dm_impact_exemption ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    246    245            �           2604    17241    tbl_214_dm_not_pwht ID    DEFAULT     �   ALTER TABLE ONLY public.tbl_214_dm_not_pwht ALTER COLUMN "ID" SET DEFAULT nextval('public."tbl_214_dm_not_pwht_ID_seq"'::regclass);
 G   ALTER TABLE public.tbl_214_dm_not_pwht ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    248    247            �           2604    17242    tbl_215_dm_pwht ID    DEFAULT     |   ALTER TABLE ONLY public.tbl_215_dm_pwht ALTER COLUMN "ID" SET DEFAULT nextval('public."tbl_215_dm_pwht_ID_seq"'::regclass);
 C   ALTER TABLE public.tbl_215_dm_pwht ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    250    249            �           2604    17243 (   tbl_3b21_si_conversion conversionFactory    DEFAULT     �   ALTER TABLE ONLY public.tbl_3b21_si_conversion ALTER COLUMN "conversionFactory" SET DEFAULT nextval('public."tbl_3b21_si_conversion_conversionFactory_seq"'::regclass);
 Y   ALTER TABLE public.tbl_3b21_si_conversion ALTER COLUMN "conversionFactory" DROP DEFAULT;
       public       postgres    false    252    251            �           2604    17244    tbl_511_dfb_thin ID    DEFAULT     ~   ALTER TABLE ONLY public.tbl_511_dfb_thin ALTER COLUMN "ID" SET DEFAULT nextval('public."tbl_511_dfb_thin_ID_seq"'::regclass);
 D   ALTER TABLE public.tbl_511_dfb_thin ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    254    253            �           2604    17245    tbl_512_dfb_thin_tank_bottom ID    DEFAULT     �   ALTER TABLE ONLY public.tbl_512_dfb_thin_tank_bottom ALTER COLUMN "ID" SET DEFAULT nextval('public."tbl_512_dfb_thin_tank_bottom_ID_seq"'::regclass);
 P   ALTER TABLE public.tbl_512_dfb_thin_tank_bottom ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    256    255            �           2604    17246    tbl_52_ca_properties_level_1 ID    DEFAULT     �   ALTER TABLE ONLY public.tbl_52_ca_properties_level_1 ALTER COLUMN "ID" SET DEFAULT nextval('public."tbl_52_ca_properties_level_1_ID_seq"'::regclass);
 P   ALTER TABLE public.tbl_52_ca_properties_level_1 ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    258    257            �           2604    17247    tbl_58_ca_component_dm ID    DEFAULT     �   ALTER TABLE ONLY public.tbl_58_ca_component_dm ALTER COLUMN "ID" SET DEFAULT nextval('public."tbl_58_ca_component_dm_ID_seq"'::regclass);
 J   ALTER TABLE public.tbl_58_ca_component_dm ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    260    259            �           2604    17248 !   tbl_59_component_damage_person ID    DEFAULT     �   ALTER TABLE ONLY public.tbl_59_component_damage_person ALTER COLUMN "ID" SET DEFAULT nextval('public."tbl_59_component_damage_person_ID_seq"'::regclass);
 R   ALTER TABLE public.tbl_59_component_damage_person ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    262    261            �           2604    17249    tbl_64_dm_linning_inorganic ID    DEFAULT     �   ALTER TABLE ONLY public.tbl_64_dm_linning_inorganic ALTER COLUMN "ID" SET DEFAULT nextval('public."tbl_64_dm_linning_inorganic_ID_seq"'::regclass);
 O   ALTER TABLE public.tbl_64_dm_linning_inorganic ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    264    263            �           2604    17250    tbl_65_dm_linning_organic ID    DEFAULT     �   ALTER TABLE ONLY public.tbl_65_dm_linning_organic ALTER COLUMN "ID" SET DEFAULT nextval('public."tbl_65_dm_linning_organic_ID_seq"'::regclass);
 M   ALTER TABLE public.tbl_65_dm_linning_organic ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    266    265            �           2604    17251 !   tbl_71_properties_storage_tank ID    DEFAULT     �   ALTER TABLE ONLY public.tbl_71_properties_storage_tank ALTER COLUMN "ID" SET DEFAULT nextval('public."tbl_71_properties_storage_tank_ID_seq"'::regclass);
 R   ALTER TABLE public.tbl_71_properties_storage_tank ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    268    267            �           2604    17252    tbl_74_scc_dm_pwht ID    DEFAULT     �   ALTER TABLE ONLY public.tbl_74_scc_dm_pwht ALTER COLUMN "ID" SET DEFAULT nextval('public."tbl_74_scc_dm_pwht_ID_seq"'::regclass);
 F   ALTER TABLE public.tbl_74_scc_dm_pwht ALTER COLUMN "ID" DROP DEFAULT;
       public       postgres    false    270    269            &          0    17567    Email 
   TABLE DATA               _   COPY public."Email" (id, content, "Is_see", date, "Emailsent", "Emailto", subject) FROM stdin;
    public       postgres    false    271         *          0    17610 	   Emailsent 
   TABLE DATA               H   COPY public."Emailsent" (id, content, date, email, subject) FROM stdin;
    public       postgres    false    275   T       (          0    17597    Emailto 
   TABLE DATA               R   COPY public."Emailto" (id, content, date, "Email", "Is_see", subject) FROM stdin;
    public       postgres    false    273   �       �          0    16989    api_component_type 
   TABLE DATA                 COPY public.api_component_type ("APIComponentTypeID", "APIComponentTypeName", "GFFSmall", "GFFMedium", "GFFLarge", "GFFRupture", "GFFTotal", "HoleCostSmall", "HoleCostMedium", "HoleCostLarge", "HoleCostRupture", "OutageSmall", "OutageMedium", "OutageLarge", "OutageRupture") FROM stdin;
    public       postgres    false    196   U!      �          0    16992 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    197   �#      �          0    16995    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    198   �#      �          0    16998    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    199   �#      �          0    17001 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    200   �$      �          0    17007    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    201   �%      �          0    17010    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    202   �%      �          0    17015    component_master 
   TABLE DATA               �   COPY public.component_master ("ComponentID", "ComponentNumber", "EquipmentID", "ComponentTypeID", "ComponentName", "ComponentDesc", "IsEquipmentLinked", "APIComponentTypeID", "Create") FROM stdin;
    public       postgres    false    204   &      �          0    17022    component_type 
   TABLE DATA               e   COPY public.component_type ("ComponentTypeID", "ComponentTypeName", "ComponentTypeCode") FROM stdin;
    public       postgres    false    205   (      �          0    17027    design_code 
   TABLE DATA               ^   COPY public.design_code ("DesignCodeID", "DesignCode", "DesignCodeApp", "SiteID") FROM stdin;
    public       postgres    false    207   �(      �          0    17031    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    208   Q)      �          0    17037    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    209   �)      �          0    17040    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    210   �*      �          0    17046    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    211   �+      �          0    17052    dm_category 
   TABLE DATA               G   COPY public.dm_category ("DMCategoryID", "DMCategoryName") FROM stdin;
    public       postgres    false    212   �,      �          0    17055    dm_items 
   TABLE DATA               z   COPY public.dm_items ("DMItemID", "DMDescription", "DMSeq", "DMCategoryID", "DMCode", "HasDF", "FailureMode") FROM stdin;
    public       postgres    false    213   g-      �          0    17060    equipment_master 
   TABLE DATA               �   COPY public.equipment_master ("EquipmentID", "EquipmentNumber", "EquipmentTypeID", "EquipmentName", "CommissionDate", "DesignCodeID", "SiteID", "FacilityID", "ManufacturerID", "PFDNo", "ProcessDescription", "EquipmentDesc", "Create") FROM stdin;
    public       postgres    false    215    4      �          0    17067    equipment_type 
   TABLE DATA               e   COPY public.equipment_type ("EquipmentTypeID", "EquipmentTypeCode", "EquipmentTypeName") FROM stdin;
    public       postgres    false    216   6      �          0    17072    facility 
   TABLE DATA               h   COPY public.facility ("FacilityID", "SiteID", "FacilityName", "ManagementFactor", "Create") FROM stdin;
    public       postgres    false    218    7      �          0    17076    facility_risk_target 
   TABLE DATA               ^   COPY public.facility_risk_target ("FacilityID", "RiskTarget_FC", "RiskTarget_AC") FROM stdin;
    public       postgres    false    219   �7      �          0    17079    manufacturer 
   TABLE DATA               V   COPY public.manufacturer ("ManufacturerID", "ManufacturerName", "SiteID") FROM stdin;
    public       postgres    false    220   8      �          0    17084    rw_assessment 
   TABLE DATA               �   COPY public.rw_assessment ("ID", "EquipmentID", "ComponentID", "AssessmentDate", "RiskAnalysisPeriod", "IsEquipmentLinked", "ProposalName", "Create") FROM stdin;
    public       postgres    false    222   s8      �          0    17089    rw_ca_level1 
   TABLE DATA               �   COPY public.rw_ca_level1 ("ID", "Release_Phase", fact_di, fact_mit, fact_ait, "CA_cmd", "CA_inj_flame", "CA_inj_toxic", "CA_inj_ntnf", "FC_cmd", "FC_affa", "FC_prod", "FC_inj", "FC_envi", "FC_total", "FCOF_Category") FROM stdin;
    public       postgres    false    224   q:      �          0    17092 
   rw_ca_tank 
   TABLE DATA               o  COPY public.rw_ca_tank ("ID", "Hydraulic_Water", "Hydraulic_Fluid", "Seepage_Velocity", "Flow_Rate_D1", "Flow_Rate_D2", "Flow_Rate_D3", "Flow_Rate_D4", "Leak_Duration_D1", "Leak_Duration_D2", "Leak_Duration_D3", "Leak_Duration_D4", "Release_Volume_Leak_D1", "Release_Volume_Leak_D2", "Release_Volume_Leak_D3", "Release_Volume_Leak_D4", "Release_Volume_Rupture", "Liquid_Height", "Volume_Fluid", "Time_Leak_Ground", "Volume_SubSoil_Leak_D1", "Volume_SubSoil_Leak_D4", "Volume_Ground_Water_Leak_D1", "Volume_Ground_Water_Leak_D4", "Barrel_Dike_Leak", "Barrel_Dike_Rupture", "Barrel_Onsite_Leak", "Barrel_Onsite_Rupture", "Barrel_Offsite_Leak", "Barrel_Offsite_Rupture", "Barrel_Water_Leak", "Barrel_Water_Rupture", "FC_Environ_Leak", "FC_Environ_Rupture", "FC_Environ", "Material_Factor", "Component_Damage_Cost", "Business_Cost", "Consequence", "ConsequenceCategory") FROM stdin;
    public       postgres    false    225   �<      �          0    17095 
   rw_coating 
   TABLE DATA               y  COPY public.rw_coating ("ID", "ExternalCoating", "ExternalInsulation", "InternalCladding", "InternalCoating", "InternalLining", "ExternalCoatingDate", "ExternalCoatingQuality", "ExternalInsulationType", "InsulationCondition", "InsulationContainsChloride", "InternalLinerCondition", "InternalLinerType", "CladdingCorrosionRate", "SupportConfigNotAllowCoatingMaint") FROM stdin;
    public       postgres    false    226   8@      �          0    17098    rw_component 
   TABLE DATA               L  COPY public.rw_component ("ID", "NominalDiameter", "NominalThickness", "CurrentThickness", "MinReqThickness", "CurrentCorrosionRate", "BranchDiameter", "BranchJointType", "BrinnelHardness", "ChemicalInjection", "HighlyInjectionInsp", "ComplexityProtrusion", "CorrectiveAction", "CracksPresent", "CyclicLoadingWitin15_25m", "DamageFoundInspection", "DeltaFATT", "NumberPipeFittings", "PipeCondition", "PreviousFailures", "ShakingAmount", "ShakingDetected", "ShakingTime", "TrampElements", "ShellHeight", "ReleasePreventionBarrier", "ConcreteFoundation", "SeverityOfVibration") FROM stdin;
    public       postgres    false    227   PB      �          0    17106    rw_damage_mechanism 
   TABLE DATA               ;  COPY public.rw_damage_mechanism ("ID_DM", "DMItemID", "IsActive", "Notes", "ExpectedTypeID", "IsEL", "ELValue", "IsDF", "IsUserDisabled", "DF1", "DF2", "DF3", "DFBase", "RLI", "HighestInspectionEffectiveness", "SecondInspectionEffectiveness", "NumberOfInspections", "LastInspDate", "InspDueDate", "ID") FROM stdin;
    public       postgres    false    229   �E      �          0    17110    rw_data_chart 
   TABLE DATA               �   COPY public.rw_data_chart ("ID", risk_target, risk_age_1, risk_age_2, risk_age_3, risk_age_4, risk_age_5, risk_age_6, risk_age_7, risk_age_8, risk_age_9, risk_age_10, risk_age_11, risk_age_12, risk_age_13, risk_age_14, risk_age_15) FROM stdin;
    public       postgres    false    230   �H      �          0    17113    rw_equipment 
   TABLE DATA               �  COPY public.rw_equipment ("ID", "CommissionDate", "AdminUpsetManagement", "ContainsDeadlegs", "CyclicOperation", "HighlyDeadlegInsp", "DowntimeProtectionUsed", "ExternalEnvironment", "HeatTraced", "InterfaceSoilWater", "LinerOnlineMonitoring", "MaterialExposedToClExt", "MinReqTemperaturePressurisation", "OnlineMonitoring", "PresenceSulphidesO2", "PresenceSulphidesO2Shutdown", "PressurisationControlled", "PWHT", "SteamOutWaterFlush", "ManagementFactor", "ThermalHistory", "YearLowestExpTemp", "Volume", "TypeOfSoil", "EnvironmentSensitivity", "DistanceToGroundWater", "AdjustmentSettle", "ComponentIsWelded", "TankIsMaintained") FROM stdin;
    public       postgres    false    231   �M      �          0    17116    rw_extcor_temperature 
   TABLE DATA               �   COPY public.rw_extcor_temperature ("ID", "Minus12ToMinus8", "Minus8ToPlus6", "Plus6ToPlus32", "Plus32ToPlus71", "Plus71ToPlus107", "Plus107ToPlus121", "Plus121ToPlus135", "Plus135ToPlus162", "Plus162ToPlus176", "MoreThanPlus176") FROM stdin;
    public       postgres    false    232   oP                 0    17119    rw_full_fcof 
   TABLE DATA               �   COPY public.rw_full_fcof ("ID", "FCoFValue", "FCoFCategory", "AIL", envcost, equipcost, prodcost, popdens, injcost) FROM stdin;
    public       postgres    false    233   3Q                0    17122    rw_full_pof 
   TABLE DATA               :  COPY public.rw_full_pof ("ID", "ThinningAP1", "ThinningAP2", "ThinningAP3", "SCCAP1", "SCCAP2", "SCCAP3", "ExternalAP1", "ExternalAP2", "ExternalAP3", "BrittleAP1", "BrittleAP2", "BrittleAP3", "HTHA_AP1", "HTHA_AP2", "HTHA_AP3", "FatigueAP1", "FatigueAP2", "FatigueAP3", "FMS", "ThinningType", "GFFTotal", "ThinningLocalAP1", "ThinningLocalAP2", "ThinningLocalAP3", "ThinningGeneralAP1", "ThinningGeneralAP2", "ThinningGeneralAP3", "TotalDFAP1", "TotalDFAP2", "TotalDFAP3", "PoFAP1", "PoFAP2", "PoFAP3", "PoFAP1Category", "PoFAP2Category", "PoFAP3Category") FROM stdin;
    public       postgres    false    234   �R                0    17125    rw_input_ca_level1 
   TABLE DATA               Y  COPY public.rw_input_ca_level1 ("ID", "API_FLUID", "SYSTEM", "Release_Duration", "Detection_Type", "Isulation_Type", "Mitigation_System", "Equipment_Cost", "Injure_Cost", "Evironment_Cost", "Toxic_Percent", "Personal_Density", "Material_Cost", "Production_Cost", "Mass_Inventory", "Mass_Component", "Stored_Pressure", "Stored_Temp") FROM stdin;
    public       postgres    false    235   WW                0    17128    rw_input_ca_tank 
   TABLE DATA               �   COPY public.rw_input_ca_tank ("ID", "FLUID_HEIGHT", "SHELL_COURSE_HEIGHT", "TANK_DIAMETTER", "Prevention_Barrier", "Environ_Sensitivity", "P_lvdike", "P_onsite", "P_offsite", "Soil_Type", "TANK_FLUID", "API_FLUID", "SW", "ProductionCost") FROM stdin;
    public       postgres    false    236   �X                0    17131    rw_inspection_history 
   TABLE DATA               �   COPY public.rw_inspection_history ("ID", "InspectionPlanName", "InspectionCoverageName", "EquipmentNumber", "ComponentNumber", "DM", "InspectionType", "InspectionDate", "InspectionEffective") FROM stdin;
    public       postgres    false    237   �Y                0    17139    rw_material 
   TABLE DATA               �  COPY public.rw_material ("ID", "MaterialName", "DesignPressure", "DesignTemperature", "MinDesignTemperature", "BrittleFractureThickness", "CorrosionAllowance", "SigmaPhase", "SulfurContent", "HeatTreatment", "ReferenceTemperature", "PTAMaterialCode", "HTHAMaterialCode", "IsPTA", "IsHTHA", "Austenitic", "Temper", "CarbonLowAlloy", "NickelBased", "ChromeMoreEqual12", "AllowableStress", "CostFactor") FROM stdin;
    public       postgres    false    239   �Y                0    17142 	   rw_stream 
   TABLE DATA               �  COPY public.rw_stream ("ID", "AmineSolution", "AqueousOperation", "AqueousShutdown", "ToxicConstituent", "Caustic", "Chloride", "CO3Concentration", "Cyanide", "ExposedToGasAmine", "ExposedToSulphur", "ExposureToAmine", "H2S", "H2SInWater", "Hydrogen", "H2SPartialPressure", "Hydrofluoric", "MaterialExposedToClInt", "MaxOperatingPressure", "MaxOperatingTemperature", "MinOperatingPressure", "MinOperatingTemperature", "CriticalExposureTemperature", "NaOHConcentration", "ReleaseFluidPercentToxic", "WaterpH", "TankFluidName", "FluidHeight", "FluidLeaveDikePercent", "FluidLeaveDikeRemainOnSitePercent", "FluidGoOffSitePercent") FROM stdin;
    public       postgres    false    240   �\                0    17145    sites 
   TABLE DATA               ?   COPY public.sites ("SiteID", "SiteName", "Create") FROM stdin;
    public       postgres    false    241   �^      
          0    17150    tbl_204_dm_htha 
   TABLE DATA               v   COPY public.tbl_204_dm_htha ("ID", "Susceptibility", "No Inspection", "1D", "1C", "1B", "2D", "2C", "2B") FROM stdin;
    public       postgres    false    243   F_                0    17158    tbl_213_dm_impact_exemption 
   TABLE DATA               y   COPY public.tbl_213_dm_impact_exemption ("ID", "ComponentThickness", "CurveA", "CurveB", "CurveC", "CurveD") FROM stdin;
    public       postgres    false    245   �_                0    17163    tbl_214_dm_not_pwht 
   TABLE DATA               �   COPY public.tbl_214_dm_not_pwht ("ID", "Tmin-Tref", "6.4", "12.7", "25.4", "38.1", "50.8", "63.5", "76.2", "88.9", "101.6") FROM stdin;
    public       postgres    false    247   �c                0    17168    tbl_215_dm_pwht 
   TABLE DATA               �   COPY public.tbl_215_dm_pwht ("ID", "Tmin-Tref", "6.4", "12.7", "25.4", "38.1", "50.8", "63.5", "76.2", "88.9", "101.6") FROM stdin;
    public       postgres    false    249   �d                0    17173    tbl_3b21_si_conversion 
   TABLE DATA               [   COPY public.tbl_3b21_si_conversion ("conversionFactory", "SIUnits", "USUnits") FROM stdin;
    public       postgres    false    251   �e                0    17178    tbl_511_dfb_thin 
   TABLE DATA               T   COPY public.tbl_511_dfb_thin ("ID", art, "E", insp, "D", "C", "B", "A") FROM stdin;
    public       postgres    false    253   �f                0    17183    tbl_512_dfb_thin_tank_bottom 
   TABLE DATA               `   COPY public.tbl_512_dfb_thin_tank_bottom ("ID", art, "E", insp, "D", "C", "B", "A") FROM stdin;
    public       postgres    false    255   �j                0    17188    tbl_52_ca_properties_level_1 
   TABLE DATA               �   COPY public.tbl_52_ca_properties_level_1 ("ID", "Fluid", "MW", "Density", "NBP", "Ambient", ideal, "A", "B", "C", "D", "E", "Auto") FROM stdin;
    public       postgres    false    257   l                0    17196    tbl_58_ca_component_dm 
   TABLE DATA               ?  COPY public.tbl_58_ca_component_dm ("ID", "Fluid", "CAINL_gas_a", "CAINL_gas_b", "CAINL_liquid_a", "CAINL_liquid_b", "CAIL_gas_a", "CAIL_gas_b", "CAIL_liquid_a", "CAIL_liquid_b", "IAINL_gas_a", "IAINL_gas_b", "IAINL_liquid_a", "IAINL_liquid_b", "IAIL_gas_a", "IAIL_gas_b", "IAIL_liquid_a", "IAIL_liquid_b") FROM stdin;
    public       postgres    false    259   �o                0    17204    tbl_59_component_damage_person 
   TABLE DATA               G  COPY public.tbl_59_component_damage_person ("ID", "Fluid", "CAINL_gas_a", "CAINL_gas_b", "CAINL_liquid_a", "CAINL_liquid_b", "CALL_gas_a", "CALL_gas_b", "CALL_liquid_a", "CALL_liquid_b", "IAINL_gas_a", "IAINL_gas_b", "IAINL_liquid_a", "IAINL_liquid_b", "IAIL_gas_a", "IAIL_gas_b", "IAIL_liquid_a", "IAIL_liquid_b") FROM stdin;
    public       postgres    false    261   ~s                0    17212    tbl_64_dm_linning_inorganic 
   TABLE DATA               �   COPY public.tbl_64_dm_linning_inorganic ("ID", "YearsSinceLastInspection", "Strip lined alloy", "Castable refractory", "Castable refractory severe condition", "Glass lined", "Acid Brick", "Fibreglass") FROM stdin;
    public       postgres    false    263   w                 0    17217    tbl_65_dm_linning_organic 
   TABLE DATA               �   COPY public.tbl_65_dm_linning_organic ("ID", "YearInService", "MoreThan6Years", "WithinLast6Years", "WithinLast3Years") FROM stdin;
    public       postgres    false    265   Px      "          0    17222    tbl_71_properties_storage_tank 
   TABLE DATA               �   COPY public.tbl_71_properties_storage_tank ("ID", "Fluid", "Level 1 Consequence Analysis Representative Fluid", "Molecular Weight", "Liquid Density", "Liquid Density Viscosity") FROM stdin;
    public       postgres    false    267   y      $          0    17230    tbl_74_scc_dm_pwht 
   TABLE DATA               �   COPY public.tbl_74_scc_dm_pwht ("ID", "SVI", "E", "1D", "1C", "1B", "1A", "2D", "2C", "2B", "2A", "3D", "3C", "3B", "3A", "4D", "4C", "4B", "4A", "5D", "5C", "5B", "5A", "6D", "6C", "6B", "6A") FROM stdin;
    public       postgres    false    269   �y      ^           0    0    Emailsent_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Emailsent_id_seq"', 5, true);
            public       postgres    false    274            _           0    0    Emailto_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Emailto_id_seq"', 5, true);
            public       postgres    false    272            `           0    0    componentmaster_ComponentID_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."componentmaster_ComponentID_seq"', 47, true);
            public       postgres    false    203            a           0    0    designcode_DesignCodeID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."designcode_DesignCodeID_seq"', 9, true);
            public       postgres    false    206            b           0    0    equipmentmaster_EquipmentID_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."equipmentmaster_EquipmentID_seq"', 28, true);
            public       postgres    false    214            c           0    0    facility_FacilityID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."facility_FacilityID_seq"', 23, true);
            public       postgres    false    217            d           0    0    manufacturer_ManufacturerID_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."manufacturer_ManufacturerID_seq"', 11, true);
            public       postgres    false    221            e           0    0    rw_assessment_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."rw_assessment_ID_seq"', 350, true);
            public       postgres    false    223            f           0    0    rw_damagemachinsm_ID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."rw_damagemachinsm_ID_seq"', 413, true);
            public       postgres    false    228            g           0    0    rw_inspection_history_ID_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."rw_inspection_history_ID_seq"', 35, true);
            public       postgres    false    238            h           0    0    sites_SiteID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."sites_SiteID_seq"', 13, true);
            public       postgres    false    242            i           0    0    tbl_204_dm_htha_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."tbl_204_dm_htha_ID_seq"', 5, true);
            public       postgres    false    244            j           0    0 "   tbl_213_dm_impact_exemption_ID_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."tbl_213_dm_impact_exemption_ID_seq"', 61, true);
            public       postgres    false    246            k           0    0    tbl_214_dm_not_pwht_ID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."tbl_214_dm_not_pwht_ID_seq"', 11, true);
            public       postgres    false    248            l           0    0    tbl_215_dm_pwht_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."tbl_215_dm_pwht_ID_seq"', 11, true);
            public       postgres    false    250            m           0    0 ,   tbl_3b21_si_conversion_conversionFactory_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."tbl_3b21_si_conversion_conversionFactory_seq"', 36, true);
            public       postgres    false    252            n           0    0    tbl_511_dfb_thin_ID_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."tbl_511_dfb_thin_ID_seq"', 114, true);
            public       postgres    false    254            o           0    0 #   tbl_512_dfb_thin_tank_bottom_ID_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."tbl_512_dfb_thin_tank_bottom_ID_seq"', 20, true);
            public       postgres    false    256            p           0    0 #   tbl_52_ca_properties_level_1_ID_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."tbl_52_ca_properties_level_1_ID_seq"', 30, true);
            public       postgres    false    258            q           0    0    tbl_58_ca_component_dm_ID_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."tbl_58_ca_component_dm_ID_seq"', 22, true);
            public       postgres    false    260            r           0    0 %   tbl_59_component_damage_person_ID_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."tbl_59_component_damage_person_ID_seq"', 22, true);
            public       postgres    false    262            s           0    0 "   tbl_64_dm_linning_inorganic_ID_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."tbl_64_dm_linning_inorganic_ID_seq"', 25, true);
            public       postgres    false    264            t           0    0     tbl_65_dm_linning_organic_ID_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."tbl_65_dm_linning_organic_ID_seq"', 25, true);
            public       postgres    false    266            u           0    0 %   tbl_71_properties_storage_tank_ID_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."tbl_71_properties_storage_tank_ID_seq"', 7, true);
            public       postgres    false    268            v           0    0    tbl_74_scc_dm_pwht_ID_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."tbl_74_scc_dm_pwht_ID_seq"', 7, true);
            public       postgres    false    270            >           2606    17574    Email Email_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Email"
    ADD CONSTRAINT "Email_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Email" DROP CONSTRAINT "Email_pkey";
       public         postgres    false    271            B           2606    17618    Emailsent Emailsent_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Emailsent"
    ADD CONSTRAINT "Emailsent_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Emailsent" DROP CONSTRAINT "Emailsent_pkey";
       public         postgres    false    275            @           2606    17605    Emailto Emailto_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Emailto"
    ADD CONSTRAINT "Emailto_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Emailto" DROP CONSTRAINT "Emailto_pkey";
       public         postgres    false    273            �           2606    17254    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    197            �           2606    17256 H   auth_group_permissions auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         postgres    false    198    198            �           2606    17258 <   auth_permission auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         postgres    false    199    199            �           2606    17260 6   auth_user_groups auth_user_groups_user_id_group_id_key 
   CONSTRAINT     ~   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         postgres    false    201    201            �           2606    17262 O   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         postgres    false    202    202            �           2606    17264     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    200            �           2606    17266 ;   django_content_type django_content_type_app_label_model_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);
 e   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_key;
       public         postgres    false    209    209            �           2606    17268     facility facility_FacilityID_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.facility
    ADD CONSTRAINT "facility_FacilityID_key" UNIQUE ("FacilityID");
 L   ALTER TABLE ONLY public.facility DROP CONSTRAINT "facility_FacilityID_key";
       public         postgres    false    218                       2606    17270    rw_data_chart id_rw_chart 
   CONSTRAINT     Y   ALTER TABLE ONLY public.rw_data_chart
    ADD CONSTRAINT id_rw_chart PRIMARY KEY ("ID");
 C   ALTER TABLE ONLY public.rw_data_chart DROP CONSTRAINT id_rw_chart;
       public         postgres    false    230            �           2606    17272    manufacturer manufacturer_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT manufacturer_pkey PRIMARY KEY ("ManufacturerID");
 H   ALTER TABLE ONLY public.manufacturer DROP CONSTRAINT manufacturer_pkey;
       public         postgres    false    220            �           2606    17274 (   api_component_type pk_api_component_type 
   CONSTRAINT     x   ALTER TABLE ONLY public.api_component_type
    ADD CONSTRAINT pk_api_component_type PRIMARY KEY ("APIComponentTypeID");
 R   ALTER TABLE ONLY public.api_component_type DROP CONSTRAINT pk_api_component_type;
       public         postgres    false    196            �           2606    17276    auth_group pk_auth_group 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT pk_auth_group PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT pk_auth_group;
       public         postgres    false    197            �           2606    17278 0   auth_group_permissions pk_auth_group_permissions 
   CONSTRAINT     n   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT pk_auth_group_permissions PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT pk_auth_group_permissions;
       public         postgres    false    198            �           2606    17280 "   auth_permission pk_auth_permission 
   CONSTRAINT     `   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT pk_auth_permission PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT pk_auth_permission;
       public         postgres    false    199            �           2606    17282    auth_user pk_auth_user 
   CONSTRAINT     T   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT pk_auth_user PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT pk_auth_user;
       public         postgres    false    200            �           2606    17284 $   auth_user_groups pk_auth_user_groups 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT pk_auth_user_groups PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT pk_auth_user_groups;
       public         postgres    false    201            �           2606    17286 8   auth_user_user_permissions pk_auth_user_user_permissions 
   CONSTRAINT     v   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT pk_auth_user_user_permissions PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT pk_auth_user_user_permissions;
       public         postgres    false    202            �           2606    17288 $   component_master pk_component_master 
   CONSTRAINT     m   ALTER TABLE ONLY public.component_master
    ADD CONSTRAINT pk_component_master PRIMARY KEY ("ComponentID");
 N   ALTER TABLE ONLY public.component_master DROP CONSTRAINT pk_component_master;
       public         postgres    false    204            �           2606    17290     component_type pk_component_type 
   CONSTRAINT     m   ALTER TABLE ONLY public.component_type
    ADD CONSTRAINT pk_component_type PRIMARY KEY ("ComponentTypeID");
 J   ALTER TABLE ONLY public.component_type DROP CONSTRAINT pk_component_type;
       public         postgres    false    205            �           2606    17292    design_code pk_design_code 
   CONSTRAINT     d   ALTER TABLE ONLY public.design_code
    ADD CONSTRAINT pk_design_code PRIMARY KEY ("DesignCodeID");
 D   ALTER TABLE ONLY public.design_code DROP CONSTRAINT pk_design_code;
       public         postgres    false    207            �           2606    17294 $   django_admin_log pk_django_admin_log 
   CONSTRAINT     b   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT pk_django_admin_log PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT pk_django_admin_log;
       public         postgres    false    208            �           2606    17296 *   django_content_type pk_django_content_type 
   CONSTRAINT     h   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT pk_django_content_type PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT pk_django_content_type;
       public         postgres    false    209            �           2606    17298 &   django_migrations pk_django_migrations 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT pk_django_migrations PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT pk_django_migrations;
       public         postgres    false    210            �           2606    17300     django_session pk_django_session 
   CONSTRAINT     g   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT pk_django_session PRIMARY KEY (session_key);
 J   ALTER TABLE ONLY public.django_session DROP CONSTRAINT pk_django_session;
       public         postgres    false    211            �           2606    17302    dm_category pk_dm_category 
   CONSTRAINT     d   ALTER TABLE ONLY public.dm_category
    ADD CONSTRAINT pk_dm_category PRIMARY KEY ("DMCategoryID");
 D   ALTER TABLE ONLY public.dm_category DROP CONSTRAINT pk_dm_category;
       public         postgres    false    212            �           2606    17304    dm_items pk_dm_items 
   CONSTRAINT     Z   ALTER TABLE ONLY public.dm_items
    ADD CONSTRAINT pk_dm_items PRIMARY KEY ("DMItemID");
 >   ALTER TABLE ONLY public.dm_items DROP CONSTRAINT pk_dm_items;
       public         postgres    false    213            �           2606    17306 $   equipment_master pk_equipment_master 
   CONSTRAINT     m   ALTER TABLE ONLY public.equipment_master
    ADD CONSTRAINT pk_equipment_master PRIMARY KEY ("EquipmentID");
 N   ALTER TABLE ONLY public.equipment_master DROP CONSTRAINT pk_equipment_master;
       public         postgres    false    215            �           2606    17308     equipment_type pk_equipment_type 
   CONSTRAINT     m   ALTER TABLE ONLY public.equipment_type
    ADD CONSTRAINT pk_equipment_type PRIMARY KEY ("EquipmentTypeID");
 J   ALTER TABLE ONLY public.equipment_type DROP CONSTRAINT pk_equipment_type;
       public         postgres    false    216            �           2606    17310    facility pk_facility 
   CONSTRAINT     \   ALTER TABLE ONLY public.facility
    ADD CONSTRAINT pk_facility PRIMARY KEY ("FacilityID");
 >   ALTER TABLE ONLY public.facility DROP CONSTRAINT pk_facility;
       public         postgres    false    218            �           2606    17312 ,   facility_risk_target pk_facility_risk_target 
   CONSTRAINT     t   ALTER TABLE ONLY public.facility_risk_target
    ADD CONSTRAINT pk_facility_risk_target PRIMARY KEY ("FacilityID");
 V   ALTER TABLE ONLY public.facility_risk_target DROP CONSTRAINT pk_facility_risk_target;
       public         postgres    false    219                        2606    17314     rw_assessment rw_assessment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.rw_assessment
    ADD CONSTRAINT rw_assessment_pkey PRIMARY KEY ("ID");
 J   ALTER TABLE ONLY public.rw_assessment DROP CONSTRAINT rw_assessment_pkey;
       public         postgres    false    222                       2606    17316    rw_ca_level1 rw_ca_level1_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.rw_ca_level1
    ADD CONSTRAINT rw_ca_level1_pkey PRIMARY KEY ("ID");
 H   ALTER TABLE ONLY public.rw_ca_level1 DROP CONSTRAINT rw_ca_level1_pkey;
       public         postgres    false    224                       2606    17318    rw_ca_tank rw_ca_tank_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.rw_ca_tank
    ADD CONSTRAINT rw_ca_tank_pkey PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public.rw_ca_tank DROP CONSTRAINT rw_ca_tank_pkey;
       public         postgres    false    225                       2606    17320    rw_coating rw_coating_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.rw_coating
    ADD CONSTRAINT rw_coating_pkey PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public.rw_coating DROP CONSTRAINT rw_coating_pkey;
       public         postgres    false    226                       2606    17322    rw_component rw_component_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.rw_component
    ADD CONSTRAINT rw_component_pkey PRIMARY KEY ("ID");
 H   ALTER TABLE ONLY public.rw_component DROP CONSTRAINT rw_component_pkey;
       public         postgres    false    227            
           2606    17324 2   rw_damage_mechanism rw_damage_mechanism_PrimaryKey 
   CONSTRAINT     t   ALTER TABLE ONLY public.rw_damage_mechanism
    ADD CONSTRAINT "rw_damage_mechanism_PrimaryKey" PRIMARY KEY ("ID");
 ^   ALTER TABLE ONLY public.rw_damage_mechanism DROP CONSTRAINT "rw_damage_mechanism_PrimaryKey";
       public         postgres    false    229                       2606    17326    rw_equipment rw_equipment_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.rw_equipment
    ADD CONSTRAINT rw_equipment_pkey PRIMARY KEY ("ID");
 H   ALTER TABLE ONLY public.rw_equipment DROP CONSTRAINT rw_equipment_pkey;
       public         postgres    false    231                       2606    17328 0   rw_extcor_temperature rw_extcor_temperature_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.rw_extcor_temperature
    ADD CONSTRAINT rw_extcor_temperature_pkey PRIMARY KEY ("ID");
 Z   ALTER TABLE ONLY public.rw_extcor_temperature DROP CONSTRAINT rw_extcor_temperature_pkey;
       public         postgres    false    232                       2606    17330    rw_full_fcof rw_full_fcof_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.rw_full_fcof
    ADD CONSTRAINT rw_full_fcof_pkey PRIMARY KEY ("ID");
 H   ALTER TABLE ONLY public.rw_full_fcof DROP CONSTRAINT rw_full_fcof_pkey;
       public         postgres    false    233                       2606    17332    rw_full_pof rw_full_pof_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.rw_full_pof
    ADD CONSTRAINT rw_full_pof_pkey PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public.rw_full_pof DROP CONSTRAINT rw_full_pof_pkey;
       public         postgres    false    234                       2606    17334 *   rw_input_ca_level1 rw_input_ca_level1_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.rw_input_ca_level1
    ADD CONSTRAINT rw_input_ca_level1_pkey PRIMARY KEY ("ID");
 T   ALTER TABLE ONLY public.rw_input_ca_level1 DROP CONSTRAINT rw_input_ca_level1_pkey;
       public         postgres    false    235                       2606    17336 &   rw_input_ca_tank rw_input_ca_tank_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.rw_input_ca_tank
    ADD CONSTRAINT rw_input_ca_tank_pkey PRIMARY KEY ("ID");
 P   ALTER TABLE ONLY public.rw_input_ca_tank DROP CONSTRAINT rw_input_ca_tank_pkey;
       public         postgres    false    236                       2606    17338 0   rw_inspection_history rw_inspection_history_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.rw_inspection_history
    ADD CONSTRAINT rw_inspection_history_pkey PRIMARY KEY ("ID");
 Z   ALTER TABLE ONLY public.rw_inspection_history DROP CONSTRAINT rw_inspection_history_pkey;
       public         postgres    false    237                       2606    17340    rw_material rw_material_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.rw_material
    ADD CONSTRAINT rw_material_pkey PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public.rw_material DROP CONSTRAINT rw_material_pkey;
       public         postgres    false    239                       2606    17342    rw_stream rw_stream_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.rw_stream
    ADD CONSTRAINT rw_stream_pkey PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public.rw_stream DROP CONSTRAINT rw_stream_pkey;
       public         postgres    false    240                        2606    17344    sites sites_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY ("SiteID");
 :   ALTER TABLE ONLY public.sites DROP CONSTRAINT sites_pkey;
       public         postgres    false    241            "           2606    17346 $   tbl_204_dm_htha tbl_204_dm_htha_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_204_dm_htha
    ADD CONSTRAINT tbl_204_dm_htha_pkey PRIMARY KEY ("ID");
 N   ALTER TABLE ONLY public.tbl_204_dm_htha DROP CONSTRAINT tbl_204_dm_htha_pkey;
       public         postgres    false    243            $           2606    17348 <   tbl_213_dm_impact_exemption tbl_213_dm_impact_exemption_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.tbl_213_dm_impact_exemption
    ADD CONSTRAINT tbl_213_dm_impact_exemption_pkey PRIMARY KEY ("ID");
 f   ALTER TABLE ONLY public.tbl_213_dm_impact_exemption DROP CONSTRAINT tbl_213_dm_impact_exemption_pkey;
       public         postgres    false    245            &           2606    17350 ,   tbl_214_dm_not_pwht tbl_214_dm_not_pwht_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_214_dm_not_pwht
    ADD CONSTRAINT tbl_214_dm_not_pwht_pkey PRIMARY KEY ("ID");
 V   ALTER TABLE ONLY public.tbl_214_dm_not_pwht DROP CONSTRAINT tbl_214_dm_not_pwht_pkey;
       public         postgres    false    247            (           2606    17352 $   tbl_215_dm_pwht tbl_215_dm_pwht_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_215_dm_pwht
    ADD CONSTRAINT tbl_215_dm_pwht_pkey PRIMARY KEY ("ID");
 N   ALTER TABLE ONLY public.tbl_215_dm_pwht DROP CONSTRAINT tbl_215_dm_pwht_pkey;
       public         postgres    false    249            *           2606    17354 2   tbl_3b21_si_conversion tbl_3b21_si_conversion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tbl_3b21_si_conversion
    ADD CONSTRAINT tbl_3b21_si_conversion_pkey PRIMARY KEY ("conversionFactory");
 \   ALTER TABLE ONLY public.tbl_3b21_si_conversion DROP CONSTRAINT tbl_3b21_si_conversion_pkey;
       public         postgres    false    251            ,           2606    17356 &   tbl_511_dfb_thin tbl_511_dfb_thin_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tbl_511_dfb_thin
    ADD CONSTRAINT tbl_511_dfb_thin_pkey PRIMARY KEY ("ID");
 P   ALTER TABLE ONLY public.tbl_511_dfb_thin DROP CONSTRAINT tbl_511_dfb_thin_pkey;
       public         postgres    false    253            .           2606    17358 >   tbl_512_dfb_thin_tank_bottom tbl_512_dfb_thin_tank_bottom_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.tbl_512_dfb_thin_tank_bottom
    ADD CONSTRAINT tbl_512_dfb_thin_tank_bottom_pkey PRIMARY KEY ("ID");
 h   ALTER TABLE ONLY public.tbl_512_dfb_thin_tank_bottom DROP CONSTRAINT tbl_512_dfb_thin_tank_bottom_pkey;
       public         postgres    false    255            0           2606    17360 >   tbl_52_ca_properties_level_1 tbl_52_ca_properties_level_1_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.tbl_52_ca_properties_level_1
    ADD CONSTRAINT tbl_52_ca_properties_level_1_pkey PRIMARY KEY ("ID");
 h   ALTER TABLE ONLY public.tbl_52_ca_properties_level_1 DROP CONSTRAINT tbl_52_ca_properties_level_1_pkey;
       public         postgres    false    257            2           2606    17362 2   tbl_58_ca_component_dm tbl_58_ca_component_dm_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tbl_58_ca_component_dm
    ADD CONSTRAINT tbl_58_ca_component_dm_pkey PRIMARY KEY ("ID");
 \   ALTER TABLE ONLY public.tbl_58_ca_component_dm DROP CONSTRAINT tbl_58_ca_component_dm_pkey;
       public         postgres    false    259            4           2606    17364 B   tbl_59_component_damage_person tbl_59_component_damage_person_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tbl_59_component_damage_person
    ADD CONSTRAINT tbl_59_component_damage_person_pkey PRIMARY KEY ("ID");
 l   ALTER TABLE ONLY public.tbl_59_component_damage_person DROP CONSTRAINT tbl_59_component_damage_person_pkey;
       public         postgres    false    261            6           2606    17366 <   tbl_64_dm_linning_inorganic tbl_64_dm_linning_inorganic_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.tbl_64_dm_linning_inorganic
    ADD CONSTRAINT tbl_64_dm_linning_inorganic_pkey PRIMARY KEY ("ID");
 f   ALTER TABLE ONLY public.tbl_64_dm_linning_inorganic DROP CONSTRAINT tbl_64_dm_linning_inorganic_pkey;
       public         postgres    false    263            8           2606    17368 8   tbl_65_dm_linning_organic tbl_65_dm_linning_organic_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.tbl_65_dm_linning_organic
    ADD CONSTRAINT tbl_65_dm_linning_organic_pkey PRIMARY KEY ("ID");
 b   ALTER TABLE ONLY public.tbl_65_dm_linning_organic DROP CONSTRAINT tbl_65_dm_linning_organic_pkey;
       public         postgres    false    265            :           2606    17370 B   tbl_71_properties_storage_tank tbl_71_properties_storage_tank_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tbl_71_properties_storage_tank
    ADD CONSTRAINT tbl_71_properties_storage_tank_pkey PRIMARY KEY ("ID");
 l   ALTER TABLE ONLY public.tbl_71_properties_storage_tank DROP CONSTRAINT tbl_71_properties_storage_tank_pkey;
       public         postgres    false    267            <           2606    17372 *   tbl_74_scc_dm_pwht tbl_74_scc_dm_pwht_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbl_74_scc_dm_pwht
    ADD CONSTRAINT tbl_74_scc_dm_pwht_pkey PRIMARY KEY ("ID");
 T   ALTER TABLE ONLY public.tbl_74_scc_dm_pwht DROP CONSTRAINT tbl_74_scc_dm_pwht_pkey;
       public         postgres    false    269            �           1259    17373 ?   auth_group_permissio_permission_id_84c5c92e_fk_auth_perm_auth_g    INDEX     �   CREATE INDEX auth_group_permissio_permission_id_84c5c92e_fk_auth_perm_auth_g ON public.auth_group_permissions USING btree (permission_id);
 S   DROP INDEX public.auth_group_permissio_permission_id_84c5c92e_fk_auth_perm_auth_g;
       public         postgres    false    198            �           1259    17374 ?   auth_group_permissions_auth_group_permissio_permission_id_84c5c    INDEX     �   CREATE INDEX auth_group_permissions_auth_group_permissio_permission_id_84c5c ON public.auth_group_permissions USING btree (permission_id);
 S   DROP INDEX public.auth_group_permissions_auth_group_permissio_permission_id_84c5c;
       public         postgres    false    198            �           1259    17375 ?   auth_group_permissions_group_id_permission_id_0cd325b0_uniq_aut    INDEX     �   CREATE UNIQUE INDEX auth_group_permissions_group_id_permission_id_0cd325b0_uniq_aut ON public.auth_group_permissions USING btree (group_id, permission_id);
 S   DROP INDEX public.auth_group_permissions_group_id_permission_id_0cd325b0_uniq_aut;
       public         postgres    false    198    198            �           1259    17376 ?   auth_permission_content_type_id_codename_01ab375a_uniq_auth_per    INDEX     �   CREATE UNIQUE INDEX auth_permission_content_type_id_codename_01ab375a_uniq_auth_per ON public.auth_permission USING btree (content_type_id, codename);
 S   DROP INDEX public.auth_permission_content_type_id_codename_01ab375a_uniq_auth_per;
       public         postgres    false    199    199            �           1259    17377 ?   auth_user_groups_auth_user_groups_group_id_97559544_fk_auth_gro    INDEX     �   CREATE INDEX auth_user_groups_auth_user_groups_group_id_97559544_fk_auth_gro ON public.auth_user_groups USING btree (group_id);
 S   DROP INDEX public.auth_user_groups_auth_user_groups_group_id_97559544_fk_auth_gro;
       public         postgres    false    201            �           1259    17378 ?   auth_user_groups_group_id_97559544_fk_auth_group_id_auth_user_g    INDEX     �   CREATE INDEX auth_user_groups_group_id_97559544_fk_auth_group_id_auth_user_g ON public.auth_user_groups USING btree (group_id);
 S   DROP INDEX public.auth_user_groups_group_id_97559544_fk_auth_group_id_auth_user_g;
       public         postgres    false    201            �           1259    17379 ?   auth_user_groups_user_id_group_id_94350c0c_uniq_auth_user_group    INDEX     �   CREATE UNIQUE INDEX auth_user_groups_user_id_group_id_94350c0c_uniq_auth_user_group ON public.auth_user_groups USING btree (user_id, group_id);
 S   DROP INDEX public.auth_user_groups_user_id_group_id_94350c0c_uniq_auth_user_group;
       public         postgres    false    201    201            �           1259    17380 ?   auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm_auth_u    INDEX     �   CREATE INDEX auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm_auth_u ON public.auth_user_user_permissions USING btree (permission_id);
 S   DROP INDEX public.auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm_auth_u;
       public         postgres    false    202            �           1259    17381 ?   auth_user_user_permissions_auth_user_user_permi_permission_id_1    INDEX     �   CREATE INDEX auth_user_user_permissions_auth_user_user_permi_permission_id_1 ON public.auth_user_user_permissions USING btree (permission_id);
 S   DROP INDEX public.auth_user_user_permissions_auth_user_user_permi_permission_id_1;
       public         postgres    false    202            �           1259    17382 ?   auth_user_user_permissions_user_id_permission_id_14a6b632_uniq_    INDEX     �   CREATE UNIQUE INDEX auth_user_user_permissions_user_id_permission_id_14a6b632_uniq_ ON public.auth_user_user_permissions USING btree (user_id, permission_id);
 S   DROP INDEX public.auth_user_user_permissions_user_id_permission_id_14a6b632_uniq_;
       public         postgres    false    202    202            �           1259    17383 '   component_apicomponent_component_master    INDEX     q   CREATE INDEX component_apicomponent_component_master ON public.component_master USING btree ("ComponentTypeID");
 ;   DROP INDEX public.component_apicomponent_component_master;
       public         postgres    false    204            �           1259    17384 $   component_equipment_component_master    INDEX     j   CREATE INDEX component_equipment_component_master ON public.component_master USING btree ("EquipmentID");
 8   DROP INDEX public.component_equipment_component_master;
       public         postgres    false    204            �           1259    17385 '   component_master_component_APIcomponent    INDEX     s   CREATE INDEX "component_master_component_APIcomponent" ON public.component_master USING btree ("ComponentTypeID");
 =   DROP INDEX public."component_master_component_APIcomponent";
       public         postgres    false    204            �           1259    17386 $   component_master_component_equipment    INDEX     j   CREATE INDEX component_master_component_equipment ON public.component_master USING btree ("EquipmentID");
 8   DROP INDEX public.component_master_component_equipment;
       public         postgres    false    204            �           1259    17387 ?   django_admin_log_content_type_id_c4bce8eb_fk_django_co_django_a    INDEX     �   CREATE INDEX django_admin_log_content_type_id_c4bce8eb_fk_django_co_django_a ON public.django_admin_log USING btree (content_type_id);
 S   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb_fk_django_co_django_a;
       public         postgres    false    208            �           1259    17388 ?   django_admin_log_django_admin_log_content_type_id_c4bce8eb_fk_d    INDEX     �   CREATE INDEX django_admin_log_django_admin_log_content_type_id_c4bce8eb_fk_d ON public.django_admin_log USING btree (content_type_id);
 S   DROP INDEX public.django_admin_log_django_admin_log_content_type_id_c4bce8eb_fk_d;
       public         postgres    false    208            �           1259    17389 5   django_admin_log_django_admin_log_user_id_c564eba6_fk    INDEX     u   CREATE INDEX django_admin_log_django_admin_log_user_id_c564eba6_fk ON public.django_admin_log USING btree (user_id);
 I   DROP INDEX public.django_admin_log_django_admin_log_user_id_c564eba6_fk;
       public         postgres    false    208            �           1259    17390 5   django_admin_log_user_id_c564eba6_fk_django_admin_log    INDEX     u   CREATE INDEX django_admin_log_user_id_c564eba6_fk_django_admin_log ON public.django_admin_log USING btree (user_id);
 I   DROP INDEX public.django_admin_log_user_id_c564eba6_fk_django_admin_log;
       public         postgres    false    208            �           1259    17391 ?   django_content_type_app_label_model_76bd3d3b_uniq_django_conten    INDEX     �   CREATE UNIQUE INDEX django_content_type_app_label_model_76bd3d3b_uniq_django_conten ON public.django_content_type USING btree (app_label, model);
 S   DROP INDEX public.django_content_type_app_label_model_76bd3d3b_uniq_django_conten;
       public         postgres    false    209    209            �           1259    17392 2   django_session_django_session_expire_date_a5c62663    INDEX     t   CREATE INDEX django_session_django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 F   DROP INDEX public.django_session_django_session_expire_date_a5c62663;
       public         postgres    false    211            �           1259    17393 2   django_session_expire_date_a5c62663_django_session    INDEX     t   CREATE INDEX django_session_expire_date_a5c62663_django_session ON public.django_session USING btree (expire_date);
 F   DROP INDEX public.django_session_expire_date_a5c62663_django_session;
       public         postgres    false    211            �           1259    17394    dm_items_DMCategoryID    INDEX     V   CREATE INDEX "dm_items_DMCategoryID" ON public.dm_items USING btree ("DMCategoryID");
 +   DROP INDEX public."dm_items_DMCategoryID";
       public         postgres    false    213            �           1259    17395    dmcategoryid_dm_items    INDEX     T   CREATE INDEX dmcategoryid_dm_items ON public.dm_items USING btree ("DMCategoryID");
 )   DROP INDEX public.dmcategoryid_dm_items;
       public         postgres    false    213            �           1259    17396 %   equipment_designcode_equipment_master    INDEX     l   CREATE INDEX equipment_designcode_equipment_master ON public.equipment_master USING btree ("DesignCodeID");
 9   DROP INDEX public.equipment_designcode_equipment_master;
       public         postgres    false    215            �           1259    17397 (   equipment_equipmenttype_equipment_master    INDEX     r   CREATE INDEX equipment_equipmenttype_equipment_master ON public.equipment_master USING btree ("EquipmentTypeID");
 <   DROP INDEX public.equipment_equipmenttype_equipment_master;
       public         postgres    false    215            �           1259    17398 #   equipment_facility_equipment_master    INDEX     h   CREATE INDEX equipment_facility_equipment_master ON public.equipment_master USING btree ("FacilityID");
 7   DROP INDEX public.equipment_facility_equipment_master;
       public         postgres    false    215            �           1259    17399 '   equipment_manufacturer_equipment_master    INDEX     p   CREATE INDEX equipment_manufacturer_equipment_master ON public.equipment_master USING btree ("ManufacturerID");
 ;   DROP INDEX public.equipment_manufacturer_equipment_master;
       public         postgres    false    215            �           1259    17400 %   equipment_master_equipment_designcode    INDEX     l   CREATE INDEX equipment_master_equipment_designcode ON public.equipment_master USING btree ("DesignCodeID");
 9   DROP INDEX public.equipment_master_equipment_designcode;
       public         postgres    false    215            �           1259    17401 (   equipment_master_equipment_equipmentType    INDEX     t   CREATE INDEX "equipment_master_equipment_equipmentType" ON public.equipment_master USING btree ("EquipmentTypeID");
 >   DROP INDEX public."equipment_master_equipment_equipmentType";
       public         postgres    false    215            �           1259    17402 #   equipment_master_equipment_facility    INDEX     h   CREATE INDEX equipment_master_equipment_facility ON public.equipment_master USING btree ("FacilityID");
 7   DROP INDEX public.equipment_master_equipment_facility;
       public         postgres    false    215            �           1259    17403 '   equipment_master_equipment_manufacturer    INDEX     p   CREATE INDEX equipment_master_equipment_manufacturer ON public.equipment_master USING btree ("ManufacturerID");
 ;   DROP INDEX public.equipment_master_equipment_manufacturer;
       public         postgres    false    215            �           1259    17404     equipment_master_equipment_sites    INDEX     a   CREATE INDEX equipment_master_equipment_sites ON public.equipment_master USING btree ("SiteID");
 4   DROP INDEX public.equipment_master_equipment_sites;
       public         postgres    false    215            �           1259    17405     equipment_sites_equipment_master    INDEX     a   CREATE INDEX equipment_sites_equipment_master ON public.equipment_master USING btree ("SiteID");
 4   DROP INDEX public.equipment_sites_equipment_master;
       public         postgres    false    215            �           1259    17406    name_auth_group    INDEX     M   CREATE UNIQUE INDEX name_auth_group ON public.auth_group USING btree (name);
 #   DROP INDEX public.name_auth_group;
       public         postgres    false    197            �           1259    17407 !   rw_assessment_assesment_component    INDEX     d   CREATE INDEX rw_assessment_assesment_component ON public.rw_assessment USING btree ("ComponentID");
 5   DROP INDEX public.rw_assessment_assesment_component;
       public         postgres    false    222            �           1259    17408 !   rw_assessment_assesment_equipment    INDEX     d   CREATE INDEX rw_assessment_assesment_equipment ON public.rw_assessment USING btree ("EquipmentID");
 5   DROP INDEX public.rw_assessment_assesment_equipment;
       public         postgres    false    222            �           1259    17409    sites_facility    INDEX     G   CREATE INDEX sites_facility ON public.facility USING btree ("SiteID");
 "   DROP INDEX public.sites_facility;
       public         postgres    false    218            �           1259    17410    username_auth_user    INDEX     S   CREATE UNIQUE INDEX username_auth_user ON public.auth_user USING btree (username);
 &   DROP INDEX public.username_auth_user;
       public         postgres    false    200            T           2606    17411 !   rw_assessment assesment_component    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_assessment
    ADD CONSTRAINT assesment_component FOREIGN KEY ("ComponentID") REFERENCES public.component_master("ComponentID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.rw_assessment DROP CONSTRAINT assesment_component;
       public       postgres    false    204    222    3018            U           2606    17416 !   rw_assessment assesment_equipment    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_assessment
    ADD CONSTRAINT assesment_equipment FOREIGN KEY ("EquipmentID") REFERENCES public.equipment_master("EquipmentID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.rw_assessment DROP CONSTRAINT assesment_equipment;
       public       postgres    false    215    222    3057            C           2606    17421 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    199    198    2993            D           2606    17426 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    197    198    2981            E           2606    17431 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    209    199    3033            F           2606    17436 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    197    2981    201            G           2606    17441 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    201    200    2997            H           2606    17446 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    2993    202    199            I           2606    17451 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    200    202    2997            V           2606    17456    rw_ca_level1 calevel1_assesment    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_ca_level1
    ADD CONSTRAINT calevel1_assesment FOREIGN KEY ("ID") REFERENCES public.rw_assessment("ID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.rw_ca_level1 DROP CONSTRAINT calevel1_assesment;
       public       postgres    false    222    224    3072            W           2606    17461    rw_ca_tank catank_assesment    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_ca_tank
    ADD CONSTRAINT catank_assesment FOREIGN KEY ("ID") REFERENCES public.rw_assessment("ID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.rw_ca_tank DROP CONSTRAINT catank_assesment;
       public       postgres    false    222    225    3072            X           2606    17466    rw_coating coating_assesment    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_coating
    ADD CONSTRAINT coating_assesment FOREIGN KEY ("ID") REFERENCES public.rw_assessment("ID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.rw_coating DROP CONSTRAINT coating_assesment;
       public       postgres    false    226    222    3072            J           2606    17471 '   component_master component_APIcomponent    FK CONSTRAINT     �   ALTER TABLE ONLY public.component_master
    ADD CONSTRAINT "component_APIcomponent" FOREIGN KEY ("ComponentTypeID") REFERENCES public.api_component_type("APIComponentTypeID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.component_master DROP CONSTRAINT "component_APIcomponent";
       public       postgres    false    204    2976    196            K           2606    17476 (   component_master component_componentType    FK CONSTRAINT     �   ALTER TABLE ONLY public.component_master
    ADD CONSTRAINT "component_componentType" FOREIGN KEY ("ComponentTypeID") REFERENCES public.component_type("ComponentTypeID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 T   ALTER TABLE ONLY public.component_master DROP CONSTRAINT "component_componentType";
       public       postgres    false    205    3020    204            L           2606    17481 $   component_master component_equipment    FK CONSTRAINT     �   ALTER TABLE ONLY public.component_master
    ADD CONSTRAINT component_equipment FOREIGN KEY ("EquipmentID") REFERENCES public.equipment_master("EquipmentID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public.component_master DROP CONSTRAINT component_equipment;
       public       postgres    false    204    215    3057            M           2606    17486 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    208    209    3033            N           2606    17491 5   django_admin_log django_admin_log_user_id_c564eba6_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 _   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk;
       public       postgres    false    208    200    2997            O           2606    17496    dm_items dm_items_ibfk_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.dm_items
    ADD CONSTRAINT dm_items_ibfk_1 FOREIGN KEY ("DMCategoryID") REFERENCES public.dm_category("DMCategoryID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 B   ALTER TABLE ONLY public.dm_items DROP CONSTRAINT dm_items_ibfk_1;
       public       postgres    false    213    212    3041            P           2606    17501 %   equipment_master equipment_designcode    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipment_master
    ADD CONSTRAINT equipment_designcode FOREIGN KEY ("DesignCodeID") REFERENCES public.design_code("DesignCodeID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.equipment_master DROP CONSTRAINT equipment_designcode;
       public       postgres    false    215    207    3022            Q           2606    17506 (   equipment_master equipment_equipmentType    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipment_master
    ADD CONSTRAINT "equipment_equipmentType" FOREIGN KEY ("EquipmentTypeID") REFERENCES public.equipment_type("EquipmentTypeID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 T   ALTER TABLE ONLY public.equipment_master DROP CONSTRAINT "equipment_equipmentType";
       public       postgres    false    215    216    3059            R           2606    17511 #   equipment_master equipment_facility    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipment_master
    ADD CONSTRAINT equipment_facility FOREIGN KEY ("FacilityID") REFERENCES public.facility("FacilityID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public.equipment_master DROP CONSTRAINT equipment_facility;
       public       postgres    false    215    218    3061            Y           2606    17516 "   rw_component rwcomponent_assesment    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_component
    ADD CONSTRAINT rwcomponent_assesment FOREIGN KEY ("ID") REFERENCES public.rw_assessment("ID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.rw_component DROP CONSTRAINT rwcomponent_assesment;
       public       postgres    false    227    222    3072            Z           2606    17521 "   rw_equipment rwequipment_assesment    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_equipment
    ADD CONSTRAINT rwequipment_assesment FOREIGN KEY ("ID") REFERENCES public.rw_assessment("ID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.rw_equipment DROP CONSTRAINT rwequipment_assesment;
       public       postgres    false    231    222    3072            [           2606    17526 (   rw_extcor_temperature rwextcor_assesment    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_extcor_temperature
    ADD CONSTRAINT rwextcor_assesment FOREIGN KEY ("ID") REFERENCES public.rw_assessment("ID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.rw_extcor_temperature DROP CONSTRAINT rwextcor_assesment;
       public       postgres    false    232    222    3072            \           2606    17531    rw_full_fcof rwfcof_assesment    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_full_fcof
    ADD CONSTRAINT rwfcof_assesment FOREIGN KEY ("ID") REFERENCES public.rw_assessment("ID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.rw_full_fcof DROP CONSTRAINT rwfcof_assesment;
       public       postgres    false    233    222    3072            ^           2606    17536 ,   rw_input_ca_level1 rwinputcalevel1_assesment    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_input_ca_level1
    ADD CONSTRAINT rwinputcalevel1_assesment FOREIGN KEY ("ID") REFERENCES public.rw_assessment("ID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 V   ALTER TABLE ONLY public.rw_input_ca_level1 DROP CONSTRAINT rwinputcalevel1_assesment;
       public       postgres    false    235    3072    222            _           2606    17541 (   rw_input_ca_tank rwinputcatank_assesment    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_input_ca_tank
    ADD CONSTRAINT rwinputcatank_assesment FOREIGN KEY ("ID") REFERENCES public.rw_assessment("ID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.rw_input_ca_tank DROP CONSTRAINT rwinputcatank_assesment;
       public       postgres    false    3072    236    222            `           2606    17546     rw_material rwmaterial_assesment    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_material
    ADD CONSTRAINT rwmaterial_assesment FOREIGN KEY ("ID") REFERENCES public.rw_assessment("ID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.rw_material DROP CONSTRAINT rwmaterial_assesment;
       public       postgres    false    3072    239    222            ]           2606    17551    rw_full_pof rwpof_assesment    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_full_pof
    ADD CONSTRAINT rwpof_assesment FOREIGN KEY ("ID") REFERENCES public.rw_assessment("ID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.rw_full_pof DROP CONSTRAINT rwpof_assesment;
       public       postgres    false    234    222    3072            a           2606    17556    rw_stream rwstream_assesment    FK CONSTRAINT     �   ALTER TABLE ONLY public.rw_stream
    ADD CONSTRAINT rwstream_assesment FOREIGN KEY ("ID") REFERENCES public.rw_assessment("ID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.rw_stream DROP CONSTRAINT rwstream_assesment;
       public       postgres    false    222    240    3072            S           2606    17561 $   facility_risk_target target_facility    FK CONSTRAINT     �   ALTER TABLE ONLY public.facility_risk_target
    ADD CONSTRAINT target_facility FOREIGN KEY ("FacilityID") REFERENCES public.facility("FacilityID") ON UPDATE RESTRICT ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public.facility_risk_target DROP CONSTRAINT target_facility;
       public       postgres    false    219    3061    218            &   .  x����N�0D��W����@�[�r�z�8Q�JmbG�߳NJ��"Y��3of�K�'�=�h����
%�J�U+%�Ӑ�VZo6�uh����/�	�.u֪m�n����V�Ğ�#%d.D0h�+=�����b��	�,'�X�=!`�t|u���%6wcwlm�}3M>O�pn+	:�8�9ү����0vෂ/�|�y�ằ��B�a��L0<Q����j�#t�T�*�L�N��c֞`C�x��q�����svN�e�Rޱ<���К�_��[È�u!�����H      *   �   x���1�0���>E.�*N�a�꤉ �DJ��ɈP�7��A�����٩������J#���fN�~)�Ԁ��P�a�b�� ���=�l�'�-2~�����|v��$�x�\�F��&r2;����y1Y��#�xN�      (   W   x�3�L+N+.�420��5��54�L�O��()M�34144��4wHO���K���4 ��2�442NIK!�+71�-;35W��(�+F��� rk 3      �   ?  x����n�0 ����q��,� m�q�.f;����4Uժ$9`_���a��� ��և��Զ
�i��t	������m���x��U�I��<�����=��$ ���'�c�D�v�*&
G�ï	[oY��|T����3�\l�h%�r��|��6o�F���rk��m�>�@���D�G��"r&�P[��dU�2�WrM�D�f��EDY�j�,ҵ�D�ZD2��ZD
���2�+����b�rSfZ����}���q��iw��ç�/�;x��n�Jy�z�����w���	^ǚ�/q�Γ_R���rj�Z���OK�O劻��H���j�
ƩD���
F2�� K���˩�K%�*�r�B��%�����C�01_�����p�8)��u����'��Q���!�m,�lk�&� z�� �@���k+l�5��}���4$Ӯ:^�;��Ju"�J/�\^�%�����X���27�pu;[w�`\��]_�����֤�~�����{4Ɖ9f"]P4��������M��<�����?V�W�݃uw��֟�1��`�      �      x������ � �      �      x������ � �      �   �   x�]�M� F��)8AS�m׽F��(�&����W�w����&�ī1��:9�^j��M(�ϟ}�2D�ocz�P>�`�`�G�R�G,�t��oX����5Pro���W',�[{?�u9���<�I�'7�I<��A�.z�OP���/�{ ��P��P�Z��{J�MZ�(��H@�u�ə�%W_xZ!᫰ɢ��+\�&P5_ 2�؃{#F�{� �-��      �     x�e�mK�0�_'��/�6��&i@�a2Q���@�ԺNܺ�l7���|�p�;���OI2�����r�l�Z!j��M�Y�a�Y�"���,
s\���*{ج�<�sZ� w��-���o��r�"ė�/W7�d�G�'����fz~vYK=��j0���^O�����0��v8��Q&`�D���Q@����X�;@���$~@�$���98Up��T�C�#�����˃�
����Á`����q���\      �      x������ � �      �      x������ � �      �   �  x��Sێ�0}�|�`i|&o��TH�����y!�V�8"�~���v몪A2�9�̘��;�6�%؞ߟ��������'xۦ���>�Ru��*	9�9���,�$|"���K9���y��D҄Oca�\�8��d>ǳ"P�>6�q!k�bX
ޯ���XVX(�����Xk�d�����t���ǳ�V��bQϗT��y
��;m5ٛS�J��h̬Z�UeQ��j���XM�ᵾ��Z_<�`OM�9mZ�O�(�)��9�7�O��ڙ��yK|�,?- ��_�zqn<~Ct_p���?(��+����A�x�c��h������΁@0Be�Y��H1.e���@g�i����r�(����:+�?&�_�[��G(�7��5�Jz4����3�!�����(	����GG-Cg��3P��^�� �k $4v>N��м@�8��5rV���%I���3�      �   �   x�]��n�@E��W�@�G[�<Q���`�&d�j�(j��WL�#l|}���a��֙�9�%ފ{f5�.D���CnJ�y�W�=Ȥ����G��B�F�j��7�a�G�Ş�� ?�:Tn �����|�o0��k�
����̹��;���[��{9��ZQwa!�S-�{�_2*�B6\��$��U4A݇�%���^��d�ẅ��}��      �   \   x�3��7��,+�K�4�2��9���� ��� ��@�xW_� wm�e�铘�`bh������闟��i�e��Y���	���qqq n,�      �   i   x�3�4204�54�52U0��24�22�46�q��v�	���4⌮VJ�H�KOMQ�R�VJ�L�I)2���KK�SsSS2Ks�bkkc9�9��0M5����=... �/h      �   �   x�M�͎�0���� \ʲ����&R��e��o����fF֠���
OԬ�a��l�M�g��)�zͪ��O2+uػ�͖�݅�[��	���K\�������������e���j��Y껹[��˰cM�<���{�x9[����t^FX&-t����'p5�X�/�8��R}p� �?xae�      �     x����j�0����t�α}����>d�Sַ�2�P��F7��K�%Q}8��x�)T�sʪ�PW���$�I���pi�K[3Y�?��VW8e�
[�<
%h7�Q�<w#H��8��et���	X3`�PQ�˻H@��Lި���A��RUI���.��Ƞ�G���]����1�s�gPc��*���ׂg�KV}-�g�6a������{�j5bt>�'��y0NT]<�g(.��gu��/��K��m�=|��]�c?T��      �     x�=�ˎ�0������e���������̆�`+E����E�=��9�<{�Gmט�<�h�����~�뮹a{�%�{<��&i�Hs�Uh��	ǡ�;��7yp������"�5���359[5Eɍ$�Ȼd�:Mͨ��'yFOy�[�?�<�E�շuGo�!�EF���v���\�1-!V�r%8\T�Er�X5o��P�f D���{ge�_�-q�!F|��[r<?j�̻2H�U�������#L��&��G`#wl{c}���vfȝ 8�u�߉eYO!j�      �   �   x�=�=�0���� ��w ��@,��D�4��)�'�*���׸&����8C�g�%����l�e�kܙ^�D�,�@_ܐ��|� '��0�QcY� �b$�{�8�T8#Wn�7#+���kpC�kI���{�
�86      �   �  x��X�R�8}n�L��ߓG�P�Ԇ�y٪)�D�/Y�f��oK-YJ������s�[R��m��x�ݔς�m�JV��㿼����n�v��pEo&��4A�p��[-%�i��۬�u�;�ܳ�5[�������yTڌiԋ�p͛���Ȅ���Y��`E�M����ZA���0�#�X7�n0�����i-�7H���[�;�[�mּ��(U�=���w����j��0ާ5�*��[���2��{.=�5[�,'�`�L �oT��͟�2^�Uy�d9n�r�U|��3��:<��
��oP��{����e/�k��	ȧ��^�i����fYk�4O��a��E�=1QzoLH�bRR)�t�>������{\g��uJ6P���Ыİج��y���;_�/-���|J�=��-~��e�wUd�+��)ǔ�1;�I"�w�R�T��L�:�����K+��.oOz�&Ąxd6V��`�S����\�x -��ܫ�.:��(,d����pY�y�f�I�ev�+%^!��+���+��;�H�	d1Z�՚��Z�)�;J1���e[֍L�tR��r
W5/pCdX�]�¼�	%UBT8�i�kv״�ь��v�&��&'kK���
���ԕkBz�A���ڬ7��!p�B��y7'�aZׅ��fwzU]��{r��0��Z�Hо�	�a
�[y[C�Q��<1��w]�p)-��:+;co�<�rSWt���c��n���/��U��QnJB� ��mV��K�)/�gp�����aHyh<�Ü��U�L�qo|�W�Q�<����	̷���*ϖ���e���C�hD:/E7�����ёg��3��Zճb�7dG��� ���|�m��ZDG�j���CX���|����h}q�({	gPG�M��K�D��8v׺�5�5�7U3���B��k�?j
O8��j.O�7�ˈ2�x����hL�w=���M�r(��:$,��s������yw��c��DS���r�c�2�aֱ»l��n�UҤC9@+���^�ҁ�(��9���Vo�!���,!��w�A�C��ы�({h��;6��y�n8KN�a�W5�����z�8�a��"��=d�5.;���zP�>�kI<&�,|Wo�6(�D���z3��r(8 �"��
zz]�ߏ	��ZV?!|0DXՀT���!����i�x��D��`�g4F��p8T'�d��ll+^�z�M���ۘ(EC�ۙ�|�=�����n�u�?!��1���a�y�9W�q�	݇�.�Qd�\l�&� �t�/���v.�h��d��|�R�[�[�!��t�~A�=������W)%+!`�o���u�m׼��^J��0$���!oa�|�߅s�0��U�?"������7�u%yq�4�6�R+����n�V�a��y�:�efC����g"޸�F�@,�ab��`��I���nR�Y���1��z��A���\WO�W�-�9kN?}Bro5&0�Ei��x�d�"�k�{	LF���\14ϊb���s-�U!�m�2V�8PJ=��@�٦������d���&��-<�_'�"��wˬd�5����_�9U�9ub���KP�?���1�|2>�w��Ğ�n�Ih�4�c��?������h�      �   �  x����R�0ǯ�S���$�w�2^��n;�^t��-#[@_�I�v��xa>N~��`� �nhJ����ٶ�X�|p��Є6�r}o��B��9	�D�P�PJOV2���E�`��A �1ARD"�Wt�7]O�s�������rs N�h������$���� �	-G�Q���L|+u�O��-�<�F,f�e9Ri�?'� �M�X^�M�W�Ez�SM_ڮڛnW����!�8%�%��{���W�U3��:bN<�mC�H_��R;_0�y�=�o���2��zٚ��3�������/�eg��~��]�<�m�`��Φ*���UAN� ���_����1tw4�'+���}_N �� I$R�T eyR��U͗�z
���9d�<��ش6��y[�ͳ1��@������Ҙ�4lmI��n�����N4�Qt|�1u�#
���y��D%�      �   �   x�U��N�0���+���ciY��6V�,ؘth,;r@|=�
�νsup!�{�]7��SLd�lD�%*b���D]嚈~ـ�F�`0M����^ѓ-�j��c��op���v.�h�<z�T��]��Pǽ5#yU�g*��ʯ���_�-�z	���6���_�5h~xm�;a+(�T��c�~El�4����7j��@�6��l@��el�ݕ�����!�6�Z�      �   �   x����
�0Eד��4�L�6f'>6���+7E�ԂM��*��B��n��9�``��lg9��O9-��"l���\�:!+���<Z�:5l���Gs�O�о߮E"���Q )"���A�uU����o�s�$Ȓ�g�u�PǍv�r����G����WB�5�eE      �   9   x�3�44 �e�(.�$H�,o����А�������4CNc8ψ+F��� ��      �   ^   x�3��M�+U(I-.1�4�2�+�KT�����`���ҢT�*#Nc.SQ�ZK��t���R�Cΰ����\ϐ�'1�Hs��qqq 3 �      �   �  x����n�0���)�F3���z�r�RE�V%K����_�]�(�&TpA3��?� iA�t
Ii� ��
m�O�W��+�
�D�TJ��H,P�?G��(��6�]"jy��u��-��	�ɛ��pt�n70�̂��e��{=~=D0�gt �0�������Im�H`��(2Yt#bBn��n$���ZƇ��S�t��ݝ����D~͚Ϙ���='�F�G)}�$nwz����Bx7���сB�X��*Cb�A��[�K+���ϭ����	t��++�/����o����0�D�T%�Sh�qZë�|>�	MžB.��pA���b��r���Ҳ���FZf,d���a�ٽD3ʥu���\.��ƅ��_�_�M<�k��_5��㯯M+��m+��0>����"]j�!��V#��9���VB��yS��ɱ9�H���D�^i"v&#�l�"����컷�����|.���m���      �   F  x��U�nQ<���V�����\��CN���g'$�#���a��S�U���ݧooL||�mS�*�=�\q�QIHV9\Y7���j7����[`|�Ly%\:*������ѣ#��,�۝�o?�����OP��'w��[�F�.�/�0��!n���+��P�h{��z'Q���/�o�W�8�2�K�դ�}j��p�'�_�B�_��0ų��ER�{6z�/����k���T/��h�Eì�#����0DPȈ9�b�
��,���Ӑ��PyxW�)����zϔ�Fl��Ba�ϛ��>�ՉM#�<���L6IC3�r.���\*+@ӆ��I 'L��B���J�UE���7�����ɉV�yD(h���ݔ١{Y-�������wn�?r] Ӌ��/H"�|Q�˕z	�<A�]�[�)0uM7M����1��У/�r�����NSI[KOj�/-y�VK������q�X��H���ш�W|:$9����!�u�X�Zj(�u}�h�]䍌�� G�:���^%�:e ��gA�x�w	?q&�ce&������9�+�c�.\�n��	���      �   a  x�͕Mrl7���D�T�Y��f�[ȧv۾�뤜��r�nI��9��̆���o��*Q�u��Y��3���-bޫl�����������z����]���0�����M��mjKq.f�X2L��ێ���{��R6$�ݲαu�y��\�ҩM�l�����9խ�*C+w������J�}��.6Ҧ�*e���c������7����2B�Y��b��Lv�йN;h����˪f�Gt,�B�Y�zXό���7��*�=�C���Ĕ��e��bF�d��嵧�ffk��z�s��d��"��`�Ah9ͷX�����v��$�eyI�C����D.'��7��A���M�s�R�ږ���~��(���s�1?�*k�6כs7�Z�봪���vsW�S���y�d���xι�
ϸث��n����eO���b����d�y
�M^|x4^:��5�UF��uh�d���5I����N_���"�@�v��%�V���ߐ������/"u ���i�7>RU�k�ε�d�K�C�)�P潁�W��~9��� E <���A[{��̀�0�i�\�nd�
�j�J��1�c�I|��k36�S4��:?�+�|3�-T(�O�4�	��;<вJ��f��TG��>���0�mP3̏�G3=/��
����>��b�x�:sr� �"��y��x��1�|6?큍#��0o�&�9��Ox� (�{ݞ��i	KQ���FfN�-4�=�j^�ʀo2�D@���Rz�ޞ�Fb�{��('�3Qd����y�Rc�@cC��b���N�� øi-��W�;�)��\` ,��J\�B�3��X��x�I_��2@���v�~�1o��߸��       �     x��V�n�0}6_�p4cn޾m"%}i��y�C��I����r�.٤
��񙙃���q��+�'����йNd���E�2Sv��1��^�r�+Z��R&�)_	\���"�!,z�}[�TU��lw�EQ����MtJ/K������0n��c1�|i'���G�Y�"���e��׷�4�@rV��G��1��[ڢ��nn��0�L���,�p�|�����4�cRͪ�~t�y��9T�)�/co'*�x��J�5����)��]�4��c�W�Z�%FȀ3��TژӴ��P�ő����(
x�N��>m�ΪM���,tr̔��K�t�?�]���$�%��R�ļ�����|)^W��)�i��3���Z�J�岪fj�q�|��.T�qE��G��7�(��0ok�qLе� C6=������m��'�nof-m)w���3�ʌOW��?��Kz{`h�7�F�gQG�L�JG�w�{��|d���_x���n�      �   S  x��X�r�0]���t��H2~hI��l�4�N����*h�H�-B����H�^�#�s$Q�##�=���v>��0F�c1w�M�?���E�g�H�(��'
�O�N?K�d��t/s�f���"Ku&L����~� ���"�	��o.
)�T����x:O��̋�s1b�1%�Z�O�J��Z�;���)�46�����T��_w�{D�q��� �o]焯fR	` ^�@��R�C��*��Px�(Kȅu��i; R��BLM�j��2WRi8���d����D���3Q�8eY��l���C��*ɕ��3�Dx�/'}�I��m}�Q'yH��5`��8������4��j]����>ի��潊JH;� �ġ㳅�)��}�'��ֹb��hx������s%Le!�D���TPvM�8^Cl�\���k6�1�-cv81~���c@�G�c����S�Q�h��`h�I�fK�Kc`@�A+g%�f�S+�x51I��H":�\u�K���r��F��q�`yd�%5;�q|}6��|>	wt�k�����1�,[���#l���>R����z�1/kJ��-��E`h�(�߻sX�(o=�ᣟ�7��?�
	 +K�.t!M�!".y�S~��9/4T��w��XGX�ixM���,n���Q�W��Ϸu�X�k��LYw�ΡU�~K�|�� 1^ݖ���Î!z}p5Ӫ'��r��xDv��t��,7�V\�A\w(����i��Y׬�����t�:1��Q��!�i���RUʪ���L��2�2��p� ��Ch���t�F��.��㹜�q^@�L����k�笤�7����dA      �     x���[r�0E��Ut��A�@���d��(��$r"����񜹾"�Roz����ąm����/���w�;� ?�0��W:���dr��C2��sB�+�	��e���T�b�+�ϒj�#/8b�s�9����#7&���40�m���e�;8���h�J���&W'�wH� �C�9y��ς	��D��8�`��1���|�����K����;������d7#�T����h�λX^�t�	�>\+<�{�u}� ?]��
��)2�[� �H���?w�2�-����є�}���{�6ƥ�re;���F���ú��Snh�u`��6C� ���9�_��Ȳ�9/UX�@vk�e]2+1����&��6�6H:��;�X�zA9��u�4`��s.��ےZ	{ji�����T�j�����ﴐ�8�d��!Y�0������H�4}r��{���^V�`=���m�Y"{��]G����]�|P�l�h��3P:� �[3<��?7"(D��lМc¥T��K�����&Y���Y��6��MC�⥣�&�f�ꖞɵ��$[eHu4�h|�󡽉r����>h�vǗ`�ϰ��{$�	���<�|7U�;<A��Mܿ�|�n}p;��jpE�\Zr�� qUF㓡"�?���O�����8�i�$Zm3dL28kWF���~�e�..N|#p�V>P��=�u�Q���D���gw>6�_%[��5%����a��g��>����8��      �   �  x��In%GD��� ��]|�s�����a/d��$!:�̖Ǆ�׎�^�[�� 2�>�6n1S�;}3Rc"�o"�-~�s�媘�m�3��J����kw�D�J�D^��;��P��1�e��i���X�tM4PJ����=�*j?aÖ& �P��,�v��"HXVj>�F�0g�z����7��(.D�=I���5����f��5b���WF���U�s�_�J�U��u<pX����;J�Y��t&\}��b�kF-��8�.R�{���q�!�)7�ě��wcܒ9r��-{!b��,�b�ͅ�n��me�� *7R���YA���8���*;�%���E��) �,]ho���"����8����]�t#��1��i�Õ��oMxJDz��"~�d�Xs1+*�6F�f5,͇r��J�|3>a�P�N-qp�k{��p�b���N���k(9�Y�C��k�䆽/a�m��ԇL�ҩ[��cE��;M�6��3�	i{����tHG��#��r�eV ����^Qt]���NZ�)�|�r�5�%z�~�OMf7�N�q��>�"M{�'N���h�e7��5\K��~��v�Xϸ1����,4q*Ɖ	�(���<M�sŕ��C?PH{�Iad�� -�O�W�e�/��8�@�q�����Afw% �2Ġ���Ųo�ܖ��3d�n���3q��"s�_ݐ��f����,�"Ȋ��S�0�[��m���	��(��Y5|�����Rw����Md��	�e7*U�����5�T�A#��,oB��7�����o�-.��'��"�6C����BA�H��L)���G���m"�#_��}AF��@�n�ׇ�	eh"'�C����0󆉉�'~cA����̗��s_��Q�N
�A�Хd�Z��H���5�x@��=�2�`� ��&;fU��S��e$�^���U �O;�7Z����t`6f>�9u!&y�o�Q�[����`J��׆�"���@b����ζ�� ��Z{��Y΅Lb�L�cW$�Y�MNu�O~��;��Q,GEd�FS���kt���}c���B+�L(^=��AG���X!\���ۏ�aO���EQR��8ְ���x��r�����sHӵ���T����O^x�̮"ʇ�'��>�xv #MԔq&ߑ�:�K�����G�)�d��A�މ]ۉg�ȝ�?����'���      �   �  x��W]��@}�_1 ;��d7�n���}a�K��P���)蠮��8��{�\w������6�xZc�d}��;��S@o��7��D�q�C��Rd�H�����P�W"�:k�b��1�E
�ɗ��P�M½{F��b����BGp�C��Q�cGt���S������R��I\��oιdh���n��~��s� �XB�#�D��xDg(�q2jF|t���1b��:Ԣ|�\�N�X'E��8�b�Dl������!��&POzM�2�+�=���$6=c�mH>��+�9�t۹K\;ݭ�8S�L��Ij�7�O\}A���q��6�=��*P� 5󧋨�K4�"Y���4� ���cM�(������ �vƿ������T7�˶E��W�P�ŷ�`�@f �� zXc*\k*K�\c)�iJ������Gh׽�����Il�ٌ�}a\|�XmG�s~'��reZY�?`q�I��y��G����l��U�*~����:X��D[���Di_їh��muV��ZA��7�#͞� \l��vG�߳���ER	�2jt�R=�]%uҊ�D;L�b��3�n�k .���L���jR��;뉬�n8O�]�q�l��t
e�	��2��3�C��p���w�aw����ټk}�(�&�2�I��,�
ܯp�ft�ֻ���4Ϳ�#
J      �   �   x�}�[� E�a1^�K���b&���H���,
�� p�z>�,�4L��v����#�S.�ЋK�[��E���{gj=(�4�>ׄd~�X޻���,0c�}OSӀB��"<�P��J�p��vڨ^d��ΖWb+��,�G8�{�9�1�p�^A�zM<wp�:��)��D|�ofT          @  x��S[��0�6��<����~���9ִЅҲ�&�����x���aѢ.}�囘 �4�q���+�Q�޳��X���gQ۰�^֚c��	x��(�����Y���P���\+��c�9��	S���j7MP;�ڧI���`K6�_��c�W�h��q��U|�<�`�p�Ւ�p����$/�2�M�5����σX��$O�Y�F&+5дv�.����u�JC}4�f�y���W�F-~u>X�`�;��Y$[*<�ĶLl� �hC��G����l�����3YP8ktm�¨)��B~�~�zui�4� ���m         �  x��XɎ�6=��%q�?�s	����oy�2#�k���I:��`2�HQ\̢���,�J�~�`��LY��Q�����k1g�j�kun����/ǟ�!�1L�X���_����?]�f0�Bd� &�9S��w�E9Sg}����C���!-}ևV�a�8L���V
Xbi���d�"�Iٰ���k��;�v�x�����8�)t5�ϭ9 b&�����ڈ��6�c�~�wq�$��oҪ�,����I7Z���]��t3��0�����a:�G����_XjN�U�J,���ޝ���O~7��O����6��!� ��o�Έ�⩝,Л�����m�W�D����9NWy�]-�ܜ����O
\��7�/ؾ��}�|-���]�x�!3�r�Z���#}�,5n�����VEx��b�d�9}�(�u�M�����������q�L�)$�����*��zAuJU�}�B��kW�o�=Y�����V�6����s1����[�<�dE�*�~�6���ĝ���T!t���d6���TE��v����a\��:*��Qi�/��Ee*X�,��3���6�1翣��Ir�4B��ui�6MAzќ���ԟ���i,�'^��J�Wq�$\�]�y�k2mmK��E�44-#�����!��ͣ��ɻ
R���v#V�D�M`F��4���%z�����Bc����6B���xDdͶ���\.�@��ů��>���q`�������(��zi�p �'
�:Lw�����m;/l���eg2 � ��]BCm��y�IT�@��p�3DC�EtW���h��%�n���`x?6݋��!�^*GQDq�ڐoӛc�+J^؆O�U(|&fv� �(Y�9���zd�-?����R��O����6C-R,X�ѽKbg�"��!���K���h�Q u
��ZS ����ou���~�^$��^���l���%"p�sѢ�����<$o��;�������?�[N�!zz"�j�+<���p�p�X�-�>���^�����-��:���B�����K��y1�W�o�C	z�k.i�L� ]`���t�n�9㮜Tf�Y���(�R�j��EW� ޔ���qf�b<�}%�z��s��m_E�	Ǣ6�6g�ܢ³r����?�􎀶��o�j6���P�ULB.���/R?R�S�3�~�!�W����HG�^���u��n�:a�         �  x��T�N�0<o�� �_yK$$$��S/�	�%'.IJ��g�>�T  ��%[ڙ�g֌xlrU��Z�
��b��*'k��)l�[�Ė�
u\�����g" .��(��S�q	���u�3ܘS�,7�yN�n�2ۓ���#<a�22T�7�ǂ&3��R�&�2BƣC�Rv������s:v�1=-��|�K�jɳ��̮�+2���A�,���Q���ifT]�=ۜ�[���/�
MB�\uP8t
���N�$�Úv%Q�iM<93�~~���[J��C�o|�BZU�zY�v��? C����)�-A�t:Hl���os���=���l�Q�z���g�(�횂/��@����i�wҐ~H��9����~?z��L!�]1�=�{���         �   x��Q�
�0=�_���4���s==x�e`�A��	�ߛn"C/N�B�&}�%��e-o��|n
\W_{���ۺ�B�zp��1-����<T�J#{+��S�y4Yξ�C>�2H��&����'��I�	���^9���AGf5$�yT�3�t��>��Χ���oɦ�ɡ	�l�0Gݬ��D(qh,7�(��'"�U0�]�ŨX*)�x����            x������ � �         �  x��W]k�0}��^�F��30!�cM�����h��]����&V�4�6�"�-�:�~ɀ��_Z���T��"��J�`*P���ށ�8+���F��>�iY� L��R�5uMW�دrlm�(QuW1Fͥԫzi�|���c3Yޛ��G��D��y)�ߐ����q~�?j>�����n�Q͵�k�ə�/L5� �1�)E�(�2�ё����Bm����N~_����d���r���I����� ��؃��=������j�8=$=H ����Y��Hs�?ڮB!u�S��E
����c�d�W2�K���d��
�Z� ~6��\��ba�}m�$>�@� k�'k��sL'��.�k9�X)��=�11q&T:3�pdMN7�+���������_�rkT�����=�\@<��"���8D�@�6�+��}|�.�V�k�0�MU�"�P��bO�>&�H}H^�$B_�V|�h������l�����z(P:�u���$4o���������Zg�E�K��DR�9kī=��T�����3�\�}uI�Z�]��m� l��#�@�YM�[��QN;�*�I�z�n8��dM�/���$�����Y���\yI����E��;�<T�w�.n��!�+j���`���-fIfH��Br��������ǎ;3`�R��R=575�}��´ǐ�z�{��d�           x����n�0E��W�Z������.�J�M�R��&���}��D�DNd�vr���� l����m�'_Y���Ōa]�J�Z�?�2M
�'�!��P��n�I�95��>��fݿ<�x�q�-�ef@�����{������l&%#&��7�X*��5,F4>#����s|<c�ʼ7�(j��nS�'oQ0�+O�;1K�|�齇4�߲\���' К�svv�솽8��[ƏLl.��ʵ�6/�k�[��$ҕS��W���>?�4��K�A�t���C������#$��8��2�7H!C��f��k�=K���F��Օ'i]d�<4ʢV@uX�[��r���|rMG�@�ݭ��A4�휫�ap#������l����ʢpV]��� �r�"���T'D�������:'���5���ӌNUK�Z�bRiRl[�Tuv�.9�4!(��'��ѭ_��P�Ş�z����Z��&l���P�N�&�j6����&Zy�y�<��<�7         Z   x�3��q�420��50�54U04�25�2��334245�2��s4§�l�!>%�`SB\�C�24��qrVHI��ǧ6F��� Z�&�      
   f   x�3�tI�MLO�4�420�Mpqzd�g@-@��	f�A&@eƜ>��@U@5@�@�H�p�p���d�� �i� kQ&\��~�%��Ȑ+F��� ��s         �  x�mWm�$;��ܥ��������c�Ԯ�
�H#ͤcm��6���k5���on8����K��������'����kyn�Ŀ��Y��c�7�yU��V��_'�N&��[?�G�c]װ���~���j�U+;�髌�i���	� ��e����|�nF/;ܶQ�5�b�(�U�m�g(v��b ���h�Gg����i�#�t|^g+IrX�9���O���Q��aφ�܁3����!�{V5gOV*+�L���ީ�D�z� 9���PX��A�1�i�p��6�UYK
�O���%��e[p��D���}��Ɇ�+�)p:ƶ>b#'�:B�[�)ō1����G|vLn���n�rr3��n	:��]��|c �^H��j0��舵H��.A��TIdx�dS�gׇ�ˍܿbu��C�g�����ʜ�����sV�RXr#ӯt�Qj�}�ۭj8�EjˍL�INIrV9���2R�� ʍԿw��4�M�:/�I'
��	�2u!���#Y�ȫS&IjS3�r��_��&�E�,֝�\'�FS�j�h;�����}��n1�� �Q[� M>ߎT�c����w/�U�\&>t5���7v�l���c�"��(���ɴ��U�?�Z�v;�l�V��'�q�˼9N�[ڵ:�?֗�����Aä���G�d'��S��n	ØK]��n�	���a:FA�X�tpd'�S�#�ѵ�2V���ߓ�)-%rW��P='��ּ�5�]�W-;Xt�6���,�z�#�G��t����4q`�4��y�Ĝ��LA#dߴ�p���v����I.&�1]�WR��ɣ����{������՘�0Z���i��xl�G���3�����ߘ��,Ѕ5��ӝv;�9�*�=2m�,�f�������iLI�G��%.7�|� @u�XB�#��I�A:�u3�ܷ>���m{���ؐ�t��;`���P���i�RK�T�aj�ZM2��I1z�]��K������J�b��1��8��+9�?1��         �   x�mQ�q�0{����[T/鿎�6�c����A�p�@��6,���+�1C�t�TUW;��ȕ0��Q�P$j�l	\e�8eJ�g`+9���V_��a*�� 0�������ڜ��'��4�p9���L�ZXtÆTO+��l㲁�[?�Y��m'V�ے��E�RY�D{��A[�+���+����T{.�����Hۈ�}v&��䈱�F����:z�������h1��������*_��� x0V(         �   x�m�Q�� C���P�$@�����v;��N�@=�D[����`|-�r�����Ѧ_��	v�s#�1���m���?1��Y฽cbzX�e���S"� u��E$�4ߗ$�$�"VJ�L��6�X��)�R	���ʖ��o��?W]�;RPc����M?������mp�ٛ�������_�m��h�Y�i?��� L&         J  x�mS;�e!�a/��/����|����@��I��(*3������ctPR�gIc4H�� ��/$���̛V0�ֺ�u}ܽ!�Sܕv�0lZnW��E��Ӟ�4G��0Hғ���ݚu�(NYW��K����j��5TX��.=ѥv�`(��-�I�QI��f@\1O�����[U<v*�;6�*=�[�&-ϩ���>���,�qL��6Ѫ'gOݯ;:��E���@�t�]�>��ڽ������,h�6����n!F2�&P鰴=`:�{p퐁�(\r��w)�/|_)�tO�����2����A��8/��&D��J�&         �  x�u�k��*�ǋ�_�^���q�!��{4���>�Ʃ�W������=a��'�;�OHvH���>��!n�?�'�Y!'�U!'��*��{�+��ᐬߟ���s�Y]*�K+�kT�K׬����y~���U�х�b�.Ċ9��*��B�����������@^�F��D�yiZr$Q+�������c�c~&G;F;M �1~�옜����������|u\v	թYQ�7�v@������;����F�#�T`�ݵ��Z.f��-��'�w��'L���[�O�/j��x�r����D͓'�0f|n��`�߶��7@ZI�#(O�� �v�Md��e�G����H-).)�d�X�G���짙�&�%�ђ���è��:J�n�ZQ�Yr�x��X ��$N�˯��4��W/��%���^0�>�ϢM��yjUBP:K���n�S>]B���Y�8�K.�YА�U�pn}���~��n���d��,I]%i�	���0Z	r�?`���,\�EXr�vD��pg��y���z����%k�mζ�!%J���%0�$�b#W��0F	Jtˈ�c���"fF���|?�����j�e�mP�l%����K��& L,Q6��&L*I��{�d$���O�;�8/�]�ϕ�-J���-��|ajMc��;s�0�]8b٭��f���b�U��$���V���Y�X̳�f>�V$��³�>�ړ��*�U�*ϸf��������I��sjؚ�5���|��\����֐�J�?kS���k�8�x��[���t#Z��{MK��٠ck��*���%��iN������k��=��y�y�+�/.�:�5��c��p��%��l��g�k8�?C$�UՏ�&3�]9jZ�5ܟ�bY<�~�b�ȥ��nP|�,�4t�|�D�g�s�i	m�j^��'gs&�5��o�� �?���         3  x�eRY��0���`m�t���%�W�I&	�f(.1Y?����b�Nu@�A`����!9���c��/$�/���l�DiS҇�X0��\��� ��!n2�� ��;�������������:�R��}WKo�^�dI$e;D����j�l=$)�T���5ңƜk^x�i$���-B����1�2���Ը���}��I�UP��X�)9�Dv L�wYF��PEd��q��=;��N�bu=�!��R����f��~#+Sf�t#�B��g�5�ς��l��q$���-����~T�/oi��         �  x��V�n7=S_�{1�HQ�t4&N\���@/�ɢ6�d[�E���&���zj����ǧa�z�������:~2	�����8I��h�Pϒh
>�2Us?|�B0
N��i~��1�D��b�;����LL)cE4)PD �\���YH���2���k�7������-<�~�KnT�/��,�
� ���F�Ӛ}�2J��F6��iV% �ݣ֟r�;wZ�Z���3JMP҂L#�H�x �{^��:83��Oq7�����s�*T��C�4��J(�;n;=��2o�d���#�<�RԌ�z5k���Bs�%V�6��ł��-���]�2��IpM�WI�U�m�ć��ρ7��a`�<�˶i�|eMwL��T6�W&��\�|!�J�|��!ɀ_���S�)m�~�NV�9f�o!fl���mp����-S��E�0���b)�^]_SV���VB�UJ�Rs��v���T�GB$R&�.�QRs�^6P�,��+�+"�`PB"�)�Cw�nJ�N��Ӓ�E���������s��~N{6�M7�Q\V]ߒB���iO��+c�=�)�r�T�:��H�5�vē�ꆒ=_�!�N��XbYܱ)d�k^�1'q�n�EE�|���!:t{���؍��j�#�}t�h>/I�T+��Oc�Ą�t�0�9	t�C%�l<9���~�'�l�X�I���^���Z���ǁ�/����OGPlD_���Z� ����]�T��Xv�۷�/Ϗ���Ŧx�uM��2��[���������OB��l߻���n[2\�uм֮��˪��좧��E��ݗ��Gp��,Y3�{9����6I��7�ҿۊ�u��� ˗�V>]|u��%f���	���p# ��;��:��뫟Z3(�e�V+�������J�ޣ~�ι����         �  x��W=�7�5%8A����_��8n��6����5��yҌ�%���>��J����%�����/�?��x�p�!|��n?��}�M�1hi�"�I,�";��g�b��cGՇr+U!�kVbݴ�y���%b��2�
Y�K�ܤmc���ή�����ߔ<��.*Z4��Ek��Y�1���`f�w[�x�ӡ�S�<�:�-�J��j�>�Q�"DX��M � di\D_��)]��iTإ}&}1T��x�	�̖�[r���x�>�l^+?��(C67�vաk�4W]�e%�e�#�˦��|G�gu!��d��f�Ge����=m8\ފ��X�H����!f^J�.r�р���QJEw��Eg�#�b�|T�]�[���Vݞ��
ߪdp��\Y& �oѼ���l�̳-�yk�&����P���jo�(D����u�K/i��5�70�P[�E��E���bQʗ��|M�����`��v)F����&ZX�A{�k/��������f.���%��p~��n�m�^n�l�����k��c��"��E}��#�SԹxQ��u��[͵�;8]FE�飥=�S�5+w0�>���D$�bl*^�T<�嘸D�B�] Ag�h��K�W�h�3Z����q��3M��5�������$#��%э �x^"~@r��c!Uneݦj�AE����{���	 |mfn�'5���󉵡��1�s���3��#J<f@z�S��0�bߚ��0�Ք��1c�k3�/�U��w��w]�}|�����_c/1�~Ҵ�1������^�).�gF�'b�W����Ki����{����pff�r[�YN�-��+����<-I�q�{����맧������dv�_�=?~yD�Z�.�>{L�\S�@:=x��YQS4�%㯑���I��)m�m���l�,         �  x��WMO1={~��(v�|�t[.H\{A	����\��u�iw����v�D�c?�����t�~�����L`M���!�v�c1K��,4i�e*�\Tf����1���됂2+�-�ꗻ7����E쓑�Q#����`��UpIR4d��k���A���bJʱ�͔�W�a�6�L}tcY�+�' ��-���q?e��)�lܐ��,�)�!���nSg�w����(㖠`?�b����6�<8ʨ�]��X����Ap}�FAZ����P���>N�Ó��mr��S�%�*��@l��x"�h�/��]lէh��n���rv�Q�FҴ4X�@'��ɠ�^�C���u>}��u1��S�8tN"�.�$-��M�3������,��*,��g0N�7�YƉ&�i�Ѩ�P�>�R"�;�`0���~ɰf�F���X��u��I}R2��f�2�IL��U;�H)d�H�ت"�qZ���\\H�'{Hu��NZڰn���?�F��jA�������#�m�+=���(��*rk�������+^��8��K.+�8��\��"b8xc�e'�C��
g�a�H�lc:-�Q�^6uPuW��Xu�'o�P�4�
/��)�N0_U��^`�"�q����#QE���oBV���4�����g��5���5�8K}��SW��'�8�\g�4�v 7 s��r5,�ғ���瞚� �N�Bշ]�=n[}B�N��ݙL�����2��K�-n��w�Û���F�n�Z\���v�܆x�W�������Y0×�ק����k�^�ܪ�,�v�D��}Uu�+k#�	Nnod ɩQIGG.p������3���T����YU�n*�#�������xz~��ܽ��_����-_Ͳ,� ���3         .  x�]RA��0;�c� �����߱�dfg�B���c�
	�G�׃��&�A�J�g�9hv�
z��=31
MMZ�q*�M2d��)H�J���<n������s�M0�xC&(�i*��Q��r�91.y򼴭i0z�6��"�b�$UrɃ�	{�,�7Ka�E`��fAN�mu����n��5+旸z��E���z�H'�|��e�UǍ,�+^�='���VQ8�Ԏ��z/��8�M��
{���/�Od3v��VW8~$�5�oT~���:9V��{��G����I�o��m`Yr����̿�%h�          �   x�e�K!D��a:������1���8�!*,D	�7M����vt����J.d��H�q������8s�'A�����v�p��~�{�*aT�=�I�a�&i�C�c�7v�gU��8�]Ȩ.�T�d�V��ju���7���U�H8��{��?�(0ᥣ�ef_/tI�      "   �   x����j�0�ϣ�ȽX�VZ�uVIr�z	D��@]���C�On����o�!��96-��*��k��Xr�&9�%�Al۾�/�=v��zi�KA�U���0��yяn
Di)5�r��m?��!0c�d�eޖ1#HZ��#�)�􈯲�`hVXg�pG�� 9s�%Q�ϯ�I@.$�;Y�wG�)��c� �f�      $   �   x���Q
1D��0Ř��az�s�m)�R��,���8d����0�K&3[���
�����}$�=Ɂ޳R2k|��nƸL�0d�h�~�4��1P��x�`:��|ܨ\��uQ<ݨ[]�a���tf=�j���_�z0�յ�������Ko1�2�J�"?zާ>[�o�� d�D     