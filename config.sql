CREATE USER ADMIN IDENTIFIED BY "admin123";
CREATE USER CUONG IDENTIFIED BY "123";
CREATE USER LINH IDENTIFIED BY "123";
CREATE USER MINH IDENTIFIED BY "123";

CREATE ROLE CHNONGSAN_NHANVIEN;

GRANT SELECT, INSERT, UPDATE, DELETE ON CHNongSan.hanghoa TO CHNONGSAN_NHANVIEN;
GRANT SELECT, INSERT, UPDATE, DELETE ON CHNongSan.nhanvien TO CHNONGSAN_NHANVIEN;
GRANT SELECT, INSERT, UPDATE, DELETE ON CHNongSan.nhomhang TO CHNONGSAN_NHANVIEN;
GRANT SELECT, INSERT, UPDATE, DELETE ON CHNongSan.chitiethoadon TO CHNONGSAN_NHANVIEN;
GRANT SELECT, INSERT, UPDATE, DELETE ON CHNongSan.chitietphieunhap TO CHNONGSAN_NHANVIEN;
GRANT SELECT, INSERT, UPDATE, DELETE ON CHNongSan.hoadon TO CHNONGSAN_NHANVIEN;
GRANT SELECT, INSERT, UPDATE, DELETE ON CHNongSan.khachhang TO CHNONGSAN_NHANVIEN;
GRANT SELECT, INSERT, UPDATE, DELETE ON CHNongSan.phieunhap TO CHNONGSAN_NHANVIEN;
GRANT SELECT, INSERT, UPDATE, DELETE ON CHNongSan.nhacungcap TO CHNONGSAN_NHANVIEN;

GRANT EXECUTE ON CHNONGSAN.INSERTHANGHOA TO CHNONGSAN_NHANVIEN;
GRANT EXECUTE ON CHNONGSAN.UPDATEHANGHOA TO CHNONGSAN_NHANVIEN;

GRANT CREATE SESSION TO CUONG;
GRANT CREATE SESSION TO LINH;
GRANT CREATE SESSION TO MINH;
GRANT CREATE SESSION TO ADMIN;

GRANT CHNONGSAN_NHANVIEN TO CUONG;
GRANT CHNONGSAN_NHANVIEN TO LINH;
GRANT CHNONGSAN_NHANVIEN TO MINH;
GRANT CHNONGSAN_NHANVIEN TO ADMIN;

GRANT SYSDBA TO ADMIN;

SELECT granted_role 
FROM dba_role_privs
WHERE GRANTEE = 'CUONG';

SELECT *
FROM dba_tab_privs  
WHERE GRANTEE = 'CHNONGSAN_NHANVIEN';



