--liquibase formatted sql

--changeset ssaha:insert into SAMPLE_TAB
SET SCHEMA SAMPLE_SCHEMA;
insert into SAMPLE_TAB values (next value for seq_SAMPLE_TAB, 'EK THA PANI','TAMAL DEB',sysdate);
insert into SAMPLE_TAB values (next value for seq_SAMPLE_TAB, 'SWARAJ','PUNEET KHANNA',sysdate);
SET SCHEMA PUBLIC;