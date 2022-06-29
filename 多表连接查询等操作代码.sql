##USE gfidms;
##SELECT xfz.ability,dtsc.renjun
##FROM xfz,dtsc
##WHERE xfz.ability = dtsc.renjun;

##CREATE VIEW v_xfz
##AS SELECT id,age,ability
##FROM xfz
##WHERE ability=60 and 30;
##DESC v_xfz;

##CREATE OR REPLACE VIEW v_xfz
##AS SELECT id,age,ability
##FROM xfz
##WHERE ability=60;
##DESC v_xfz;

##BEGIN;
##DELETE FROM v_xfz;
##ROLLBACK;
##INSERT INTO v_xfz VALUES('1');
##SAVEPOINT a;
##ROLLBACK TO a;
##DELETE FROM v_xfz WHERE v_xfz_str = '1';
##COMMIT;
##ROLLBACK;

##CREATE USER hoh@host IDENTIFIED BY '111111';  # 创建授权用户
##ALTER USER hoh@host IDENTIFIED BY '121212';  # 修改用户密码
##DROP USER hoh@host;  # 删除用户
##GRANT ALL ON *.* TO hoh@host;  # 授予用户权限
##Show grants for root@localhost;  # 显示权限
##REVOKE SELECT ON *.* FROM hoh@host;  # 撤销用户权限
##CREATE USER hh@host IDENTIFIED BY '111111';
##grant all privileges on *.* to 'hh'@'%' identified by '111111' with grant option；
##flush privileges;

