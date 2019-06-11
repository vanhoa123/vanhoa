CREATE TABLE NGUOIDUNG1  
( Ma_ND number(10) NOT NULL  ,  
  Ten_ND varchar2(50) NOT NULL,  
  city varchar2(50),
  CONSTRAINT NGUOIDUNG1_pk PRIMARY KEY (Ma_ND) ,
  Mat_Khau number(10) NOT NULL ,
  NhanVien_ID number(10)NOT NULL ,
  Login_Sai number(2) NOT NULL,
  Ngay_Login date NOT NULL,
  Ngay_Tao date NOT NULL,
  Ngay_Capnhat date NOT NULL           
);
CREATE SEQUENCE Nguoidung31_seq START WITH 1 INCREMENT BY 1;
SELECT * from NGUOIDUNG1;
drop table Nguoidung3;
/

 insert into NGUOIDUNG1 (Ma_Nd,ten_nd,city,mat_khau,nhanvien_id,login_sai,ngay_login,ngay_tao,ngay_capnhat)
values (11,'vanhoa','cantho','123','01','0','25-May-2019','15-May-2019','26-May-2019')
INSERT ALL
 into NGUOIDUNG1 (ma_nd,ten_nd,city,mat_khau,nhanvien_id,login_sai,ngay_login,ngay_tao,ngay_capnhat)
values (12,'ngoctu','dongthap','124','01','0','20-May-2019','14-May-2019','25-May-2019')
 into NGUOIDUNG1 (ma_nd,ten_nd,city,mat_khau,nhanvien_id,login_sai,ngay_login,ngay_tao,ngay_capnhat)
values (13,'thaihon','soctrang','125','01','0','16-May-2019','11-May-2019','22-May-2019')
 into NGUOIDUNG1 (ma_nd,ten_nd,city,mat_khau,nhanvien_id,login_sai,ngay_login,ngay_tao,ngay_capnhat)
values (14,'tandat','cantho','126','01','0','15-May-2019','10-May-2019','21-May-2019')
 into NGUOIDUNG1 (ma_nd,ten_nd,city,mat_khau,nhanvien_id,login_sai,ngay_login,ngay_tao,ngay_capnhat)
values (15,'thuyduong','baclieu','127','01','0','05-May-2019','01-May-2019','12-May-2019')
SELECT * FROM Dual;

select * from NGUOIDUNG1 where city ='soctrang'
/
Drop table nguoidung
/
Create table DANGNHAP (
   Ten_TK varchar2(50)NOT NULL,
   MK nvarchar2(20) NOT NULL
   
 );  

select * from DANGNHAP  where TEN_TK ='minhhao'   
/
INSERT ALL
   into DANGNHAP (TEN_TK,MK) values('ngoctu','***')
   into DANGNHAP (TEN_TK,MK) values('hoa','154')
   into DANGNHAP (TEN_TK,MK) values('ngocquynh','***')
   into DANGNHAP (TEN_TK,MK) values('thaihon','***')
   into DANGNHAP (TEN_TK,MK) values('tandat','***')
   into DANGNHAP (TEN_TK,MK) values('thuyduong','***')
   into DANGNHAP (TEN_TK,MK) values('minhhao','***')
   into DANGNHAP (TEN_TK,MK) values('minh','***')
SELECT * FROM dual;   
//
select * from Dangki
/



select * from CSS_STG.DB_THUEBAO where rownum < 10
CREATE TABLE Dangki (
        taikhoan NVARCHAR2 (30) NOT NULL,
        matkhau NVARCHAR2  (30) NOT NULL,
        email NVARCHAR2(100) NOT NULL,
        phone NUMBER (10) NOT NULL,
        fullname NVARCHAR2(150) NOT NULL,
        birthday NUMBER ( 30) NOT NULL,
        gioitinh NVARCHAR2(3) NOT NULL,
        diachi VARCHAR2 (50) NULL,
        PRIMARY KEY (taikhoan)
);
CREATE TABLE DangNhap (
        taikhoan NVARCHAR2 (30) NOT NULL,
        matkhau NVARCHAR2  (30) NOT NULL,
        ngaydangnhap date NOT NULL,

        ALTER USER usera IDENTIFIED BY 123456789;-- Thay dổi pass
       
        
);
CREATE TABLE KhachHang (
       MAKH varchar (10) PRIMARY KEY,
       Nguoidung_id number (10) NOT NULL,
       DiaChi varchar2 (40) NULL,
       ThoigianOnline number(20) NULL,
       Ngaydangnhap Date NOT NULL,
       Dangxuat Date NOT NULL,
       
       
       
);
select * from KhachHang;
CREATE TABLE QuanLi (
       fullname NVARCHAR2(150) NOT NULL,
       email NVARCHAR2(100) NOT NULL,
       ALTER USER usera PASSWORD EXPIRE;-- làm cho một tài khoản hết hạn
       CREATE USER usera IDENTIFIED BY 123456 PASSWORD EXPIRE; -- bắt buộc một tài khoản hết hạn
       ALTER USER usera ACCOUNT LOCK;-- cho phép tài khoản bất kì truy suất vào CSDL
       ALTER USER usera ACCOUNT UNLOCK;-- nguợc lại không cho phép
       SELECT username, account_status FROM dba_users;-- xem trạng thái hoạt dộng của các user
       DROP USER usera; -- xóa User
       
       
);

       

SELECT * From Dangki 
SELECT * From DangNhap
select DIACHI_DV  from ADMIN_STG.DONVI



SELECT
		DONVI_TTVT_ID, MA_DONVI_TTVT, SUBSTR(TEN_DONVI_TTVT,26,3) TEN_DONVI_TTVT,
		SUM(BRCD_TB_PTM) AS BRCD_TB_PTM,
		SUM(MYTV_TB_PTM) AS MYTV_TB_PTM
FROM DULIEU_STG.VNPT_STG_REPORT
WHERE
		TO_CHAR(SYSDATE, 'YYYYMM') = SUBSTR(CHUKYNO, 1, 6)
GROUP BY DONVI_TTVT_ID, MA_DONVI_TTVT, TEN_DONVI_TTVT
