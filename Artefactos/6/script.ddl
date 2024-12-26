-- Generado por Oracle SQL Developer Data Modeler 21.4.1.349.1605
--   en:        2024-12-26 12:45:23 CET
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE aplicación (
    id_aplicacion        INTEGER NOT NULL,
    proyecto_id_proyecto INTEGER NOT NULL,
    usuario_id_usuario   INTEGER NOT NULL
);

ALTER TABLE aplicación ADD CONSTRAINT aplicación_pk PRIMARY KEY ( id_aplicacion );

CREATE TABLE elemento_software (
    id_elementosw             INTEGER NOT NULL,
    nombre                    VARCHAR2(4000) NOT NULL,
    direccion_almacenamiento  VARCHAR2(4000) NOT NULL,
    inactivo                  CHAR(1),
    tarea_id_tarea            INTEGER NOT NULL,
    tipo_elemento             VARCHAR2(4000),
    elemento_sw_id_elementosw INTEGER,
    llama_a_programa_id       INTEGER,
    llamado_por_programa_id   INTEGER
);

ALTER TABLE elemento_software ADD CONSTRAINT elemento_software_pk PRIMARY KEY ( id_elementosw );

CREATE TABLE empresa_cliente (
    id_empresa           INTEGER NOT NULL,
    nombre               VARCHAR2(4000),
    inactivo             CHAR(1),
    personal_id_personal INTEGER NOT NULL
);

COMMENT ON COLUMN empresa_cliente.inactivo IS
    'Indica si una empresa cliente ha sido borrada y ya no se tiene relación con ella.';

ALTER TABLE empresa_cliente ADD CONSTRAINT empresa_cliente_pk PRIMARY KEY ( id_empresa );

CREATE TABLE formada_por (
    aplicación_id_aplicacion  INTEGER NOT NULL,
    elemento_sw_id_elementosw INTEGER NOT NULL
);

ALTER TABLE formada_por ADD CONSTRAINT formada_por_pk PRIMARY KEY ( aplicación_id_aplicacion,
                                                                    elemento_sw_id_elementosw );

CREATE TABLE llama_a (
    programa_id_elementosw         INTEGER NOT NULL,
    programa_llamado_id_elementosw INTEGER NOT NULL
);

ALTER TABLE llama_a ADD CONSTRAINT llama_a_pk PRIMARY KEY ( programa_id_elementosw,
                                                            programa_llamado_id_elementosw );

CREATE TABLE personal (
    id_personal        INTEGER NOT NULL,
    nombre             VARCHAR2(4000) NOT NULL,
    email              VARCHAR2(256 CHAR),
    telefono           NVARCHAR2(9),
    fecha_contratacion DATE,
    inactivo           CHAR(1)
);

ALTER TABLE personal ADD CONSTRAINT personal_pk PRIMARY KEY ( id_personal );

CREATE TABLE petición (
    id_peticion              INTEGER NOT NULL,
    aplicación_id_aplicacion INTEGER NOT NULL,
    descripcion              VARCHAR2(4000),
    tipo                     VARCHAR2(4000),
    es_urgente               CHAR(1),
    estado                   VARCHAR2(4000),
    complejidad              VARCHAR2(4000),
    orden                    VARCHAR2(4000),
    prioridad                VARCHAR2(4000),
    fecha_recepcion          DATE,
    fecha_inicio_estudio     DATE,
    fecha_inicio_prevista    DATE,
    fecha_inicio_real        DATE,
    fecha_aceptacion         DATE,
    usuario_id_usuario       INTEGER,
    técnico_id_personal      INTEGER
);

ALTER TABLE petición
    ADD CHECK ( tipo IN ( 'Adaptativo', 'Correctivo', 'Evolutivo', 'Perfectivo' ) );

ALTER TABLE petición
    ADD CHECK ( estado IN ( 'En desarrollo', 'En estudio', 'Pendiente', 'Rechazada', 'Recibida', 'Terminada' ) );

ALTER TABLE petición
    ADD CHECK ( complejidad IN ( 'Alta', 'Baja', 'Mediana' ) );

ALTER TABLE petición ADD CONSTRAINT petición_pk PRIMARY KEY ( id_peticion );

CREATE TABLE proyecto (
    id_proyecto                INTEGER NOT NULL,
    empresa_cliente_id_empresa INTEGER NOT NULL,
    precio_total               FLOAT,
    fecha_ini                  DATE,
    fecha_fin                  DATE,
    tiempo_estimado            INTEGER,
    tiempo_dedicado            INTEGER,
    estado                     VARCHAR2(4000),
    técnico_id_personal        INTEGER
);

ALTER TABLE proyecto ADD CONSTRAINT proyecto_pk PRIMARY KEY ( id_proyecto );

CREATE TABLE realiza (
    técnico_id_personal INTEGER NOT NULL,
    tarea_id_tarea      INTEGER NOT NULL,
    horas_estimadas     INTEGER,
    horas_reales        INTEGER
);

ALTER TABLE realiza ADD CONSTRAINT realiza_pk PRIMARY KEY ( técnico_id_personal,
                                                            tarea_id_tarea );

CREATE TABLE tarea (
    id_tarea             INTEGER NOT NULL,
    petición_id_peticion INTEGER NOT NULL,
    fecha_ini            DATE,
    fecha_fin            DATE,
    tipo                 VARCHAR2(4000)
);

ALTER TABLE tarea ADD CONSTRAINT tarea_pk PRIMARY KEY ( id_tarea );

CREATE TABLE técnico (
    id_personal INTEGER NOT NULL,
    categoria   VARCHAR2(4000) NOT NULL,
    coste_hora  FLOAT
);

ALTER TABLE técnico ADD CONSTRAINT técnico_pk PRIMARY KEY ( id_personal );

ALTER TABLE técnico ADD CONSTRAINT técnico_pkv1 UNIQUE ( id_personal );

CREATE TABLE usar (
    petición_id_peticion      INTEGER NOT NULL,
    elemento_sw_id_elementosw INTEGER NOT NULL,
    inicial                   DATE
);

ALTER TABLE usar ADD CONSTRAINT usar_pk PRIMARY KEY ( petición_id_peticion,
                                                      elemento_sw_id_elementosw );

CREATE TABLE usuario (
    id_usuario INTEGER NOT NULL,
    nombre     VARCHAR2(4000) NOT NULL,
    password   VARCHAR2(4000) NOT NULL,
    rol        VARCHAR2(4000)
);

ALTER TABLE usuario
    ADD CHECK ( nombre IN ( 'Comerical', 'Técnico', 'Usuario cliente' ) );

ALTER TABLE usuario ADD CONSTRAINT usuario_pkv1 PRIMARY KEY ( id_usuario );

CREATE TABLE usuario_cliente (
    id_usuario                 INTEGER NOT NULL,
    empresa_cliente_id_empresa INTEGER NOT NULL,
    nombre                     VARCHAR2(4000),
    email                      VARCHAR2(256 CHAR),
    telefono                   NVARCHAR2(9),
    departamento               VARCHAR2(100 CHAR),
    inactivo                   CHAR(1)
);

ALTER TABLE usuario_cliente ADD CONSTRAINT usuario_pk PRIMARY KEY ( id_usuario );

CREATE TABLE utiliza (
    usuario_id_usuario       INTEGER NOT NULL,
    aplicación_id_aplicacion INTEGER NOT NULL
);

ALTER TABLE utiliza ADD CONSTRAINT utiliza_pk PRIMARY KEY ( usuario_id_usuario,
                                                            aplicación_id_aplicacion );

ALTER TABLE aplicación
    ADD CONSTRAINT aplicación_proyecto_fk FOREIGN KEY ( proyecto_id_proyecto )
        REFERENCES proyecto ( id_proyecto );

ALTER TABLE aplicación
    ADD CONSTRAINT aplicación_usuario_fk FOREIGN KEY ( usuario_id_usuario )
        REFERENCES usuario_cliente ( id_usuario );

ALTER TABLE elemento_software
    ADD CONSTRAINT elemento_software_llama_a_fk FOREIGN KEY ( llama_a_programa_id,
                                                              llamado_por_programa_id )
        REFERENCES llama_a ( programa_id_elementosw,
                             programa_llamado_id_elementosw );

ALTER TABLE elemento_software
    ADD CONSTRAINT elemento_software_tarea_fk FOREIGN KEY ( tarea_id_tarea )
        REFERENCES tarea ( id_tarea );

ALTER TABLE elemento_software
    ADD CONSTRAINT elemento_sw_elemento_sw_fk FOREIGN KEY ( elemento_sw_id_elementosw )
        REFERENCES elemento_software ( id_elementosw );

ALTER TABLE empresa_cliente
    ADD CONSTRAINT empresa_cliente_personal_fk FOREIGN KEY ( personal_id_personal )
        REFERENCES personal ( id_personal );

ALTER TABLE formada_por
    ADD CONSTRAINT formada_por_aplicación_fk FOREIGN KEY ( aplicación_id_aplicacion )
        REFERENCES aplicación ( id_aplicacion );

ALTER TABLE formada_por
    ADD CONSTRAINT formada_por_elemento_sw_fk FOREIGN KEY ( elemento_sw_id_elementosw )
        REFERENCES elemento_software ( id_elementosw );

ALTER TABLE llama_a
    ADD CONSTRAINT llama_a_elemento_software_fk FOREIGN KEY ( programa_id_elementosw )
        REFERENCES elemento_software ( id_elementosw );

ALTER TABLE personal
    ADD CONSTRAINT personal_usuario_fk FOREIGN KEY ( id_personal )
        REFERENCES usuario ( id_usuario );

ALTER TABLE petición
    ADD CONSTRAINT petición_aplicación_fk FOREIGN KEY ( aplicación_id_aplicacion )
        REFERENCES aplicación ( id_aplicacion );

ALTER TABLE petición
    ADD CONSTRAINT petición_técnico_fk FOREIGN KEY ( técnico_id_personal )
        REFERENCES técnico ( id_personal );

ALTER TABLE petición
    ADD CONSTRAINT petición_usuario_fk FOREIGN KEY ( usuario_id_usuario )
        REFERENCES usuario_cliente ( id_usuario );

ALTER TABLE proyecto
    ADD CONSTRAINT proyecto_empresa_cliente_fk FOREIGN KEY ( empresa_cliente_id_empresa )
        REFERENCES empresa_cliente ( id_empresa );

ALTER TABLE proyecto
    ADD CONSTRAINT proyecto_técnico_fk FOREIGN KEY ( técnico_id_personal )
        REFERENCES técnico ( id_personal );

ALTER TABLE realiza
    ADD CONSTRAINT realiza_tarea_fk FOREIGN KEY ( tarea_id_tarea )
        REFERENCES tarea ( id_tarea );

ALTER TABLE realiza
    ADD CONSTRAINT realiza_técnico_fk FOREIGN KEY ( técnico_id_personal )
        REFERENCES técnico ( id_personal );

ALTER TABLE tarea
    ADD CONSTRAINT tarea_petición_fk FOREIGN KEY ( petición_id_peticion )
        REFERENCES petición ( id_peticion );

ALTER TABLE técnico
    ADD CONSTRAINT técnico_personal_fk FOREIGN KEY ( id_personal )
        REFERENCES personal ( id_personal );

ALTER TABLE usar
    ADD CONSTRAINT usar_elemento_software_fk FOREIGN KEY ( elemento_sw_id_elementosw )
        REFERENCES elemento_software ( id_elementosw );

ALTER TABLE usar
    ADD CONSTRAINT usar_petición_fk FOREIGN KEY ( petición_id_peticion )
        REFERENCES petición ( id_peticion );

ALTER TABLE usuario_cliente
    ADD CONSTRAINT usuario_cliente_usuario_fk FOREIGN KEY ( id_usuario )
        REFERENCES usuario ( id_usuario );

ALTER TABLE usuario_cliente
    ADD CONSTRAINT usuario_empresa_cliente_fk FOREIGN KEY ( empresa_cliente_id_empresa )
        REFERENCES empresa_cliente ( id_empresa );

ALTER TABLE utiliza
    ADD CONSTRAINT utiliza_aplicación_fk FOREIGN KEY ( aplicación_id_aplicacion )
        REFERENCES aplicación ( id_aplicacion );

ALTER TABLE utiliza
    ADD CONSTRAINT utiliza_usuario_fk FOREIGN KEY ( usuario_id_usuario )
        REFERENCES usuario_cliente ( id_usuario );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            15
-- CREATE INDEX                             0
-- ALTER TABLE                             45
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
