CREATE TABLE hanghoa (
  MaHang NVARCHAR2(10) PRIMARY KEY,
  MaNhomHang NVARCHAR2(10) NOT NULL,
  MaNCC NVARCHAR2(10) NOT NULL,
  TenHang NVARCHAR2(50) NOT NULL,
  DVT NVARCHAR2(30) DEFAULT 'Chưa xác định',
  GiaBan FLOAT DEFAULT 0,
  HeSo FLOAT DEFAULT 1.2,
  GiaNhap FLOAT NOT NULL,
  HinhAnh NVARCHAR2(50) DEFAULT 'Chưa xác định',
  SoLuongTon FLOAT DEFAULT 0,
  TrangThai NUMBER DEFAULT 1
);
/

CREATE OR REPLACE TRIGGER insert_giaban
BEFORE INSERT ON hanghoa
FOR EACH ROW
BEGIN
    :NEW.GiaBan := :NEW.GiaNhap * :NEW.HeSo;
END;
/

CREATE OR REPLACE TRIGGER update_giaban
BEFORE UPDATE ON hanghoa
FOR EACH ROW
BEGIN
    IF UPDATING('GiaNhap') OR UPDATING('HeSo') THEN
        :NEW.GiaBan := :NEW.GiaNhap * :NEW.HeSo;
    END IF;
END;
/

INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH001', 'NH004', 'NCC001', N'Chuối già Nam Mỹ', N'Kg', 1.2, 25000, 'chuoiGia.jpg', 16.5);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH002', 'NH004', 'NCC002', N'Dưa hấu đỏ', N'Kg', 1.2, 12500, 'duaHauDo.jpg', 15);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH003', 'NH004', 'NCC001', N'Dưa lưới', N'Kg', 1.2, 45000, 'duaLuoi.jpg', 20);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH004', 'NH004', 'NCC002', N'Cam vàng nội địa Trung', N'Kg', 1.2, 40000, 'camVang.jpg', 20.5);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH005', 'NH004', 'NCC003', N'Nho xanh Nam Phi', N'Kg', 1.2, 125000, 'nhoXanh.jpg', 10.5);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH006', 'NH004', 'NCC004', N'Quýt giống Úc', N'Kg', 1.2, 40000, 'quytUc.jpg', 12.5);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH007', 'NH004', 'NCC003', N'Cam sành', N'Kg', 1.2, 12500, 'camSanh.jpg', 23);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH008', 'NH004', 'NCC005', N'Táo Autumn Mỹ', N'Kg', 1.2, 57500, 'taoMy.jpg', 8);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH009', 'NH004', 'NCC005', N'Ổi Đài Loan', N'Kg', 1.2, 17500, 'oiDaiLoan.jpg', 6);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH010', 'NH001', 'NCC001', N'Cải bẹ xanh', N'Kg', 1.2, 15000, 'caiBeXanh.jpg', 9);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH011', 'NH001', 'NCC001', N'Cải ngọt', N'Kg', 1.2, 15000, 'caiNgot.jpg', 6);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH012', 'NH001', 'NCC002', N'Cải thìa', N'Kg', 1.2, 15000, 'caiThia.jpg', 11);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH013', 'NH001', 'NCC003', N'Cải bẹ dún', N'Kg', 1.2, 15000, 'caiBeDun.jpg', 9);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH014', 'NH001', 'NCC003', N'Rau dền', N'Kg', 1.2, 12500, 'rauDen.jpg', 12);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH015', 'NH001', 'NCC002', N'Rau lang', N'Kg', 1.2, 15000, 'rauLang.jpg', 14);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH016', 'NH001', 'NCC004', N'Rau mồng tơi', N'Kg', 1.2, 12500, 'rauMongToi.jpg', 10.5);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH017', 'NH001', 'NCC005', N'Rau muống nước', N'Kg', 1.2, 7500, 'rauMuongNuoc.jpg', 13);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH018', 'NH001', 'NCC005', N'Rau ngót', N'Kg', 1.2, 15000, 'rauNgot.jpg', 5.2);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH019', 'NH001', 'NCC004', N'Rau tần ô', N'Kg', 1.2, 22500, 'rauTanO.jpg', 6.6);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH020', 'NH002', 'NCC001', N'Khoai lang Nhật', N'Kg', 1.2, 15000, 'khoaiLangNhat.jpg', 7);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH021', 'NH002', 'NCC002', N'Bí đỏ hột lộ', N'Kg', 1.2, 12500, 'biDoHoLo.jpg', 12);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH022', 'NH002', 'NCC001', N'Bí xanh', N'Kg', 1.2, 22500, 'biXanh.jpg', 7);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH023', 'NH002', 'NCC002', N'Cà chua', N'Kg', 1.2, 20000, 'caChua.jpg', 12);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH024', 'NH002', 'NCC003', N'Cà rốt', N'Kg', 1.2, 17500, 'caRot.jpg', 9);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH025', 'NH002', 'NCC003', N'Khoai tây', N'Kg', 1.2, 25000, 'khoaiTay.jpg', 15);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH026', 'NH002', 'NCC004', N'Củ cải trắng', N'Kg', 1.2, 15000, 'cuCaiTrang.jpg', 6);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH027', 'NH002', 'NCC005', N'Củ đậu', N'Kg', 1.2, 25000, 'cuDen.jpg', 9);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH028', 'NH002', 'NCC005', N'Khoai mỡ', N'Kg', 1.2, 25000, 'khoaiMo.jpg', 10);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH029', 'NH002', 'NCC004', N'Ớt chuông', N'Kg', 1.2, 17500, 'otChuong.jpg', 8);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH030', 'NH003', 'NCC005', N'Nấm hương', N'Kg', 1.2, 190000, 'namHuong.jpg', 6);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH031', 'NH003', 'NCC004', N'Nấm bào ngư trắng', N'Kg', 1.2, 190000, 'namBaoNguTrang.jpg', 5);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH032', 'NH003', 'NCC005', N'Nấm kim châm', N'Kg', 1.2, 190000, 'namKimCham.jpg', 7);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH033', 'NH003', 'NCC004', N'Nấm mối đen', N'Kg', 1.2, 190000, 'namMoiDen.jpg', 4);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH034', 'NH003', 'NCC005', N'Nấm linh chi nâu', N'Kg', 1.2, 185000, 'namLinhChi.jpg', 6);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH035', 'NH003', 'NCC004', N'Nấm đùi gà', N'Kg', 1.2, 185000, 'namDuiGa.jpg', 3);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH036', 'NH003', 'NCC005', N'Nấm rơm', N'Kg', 1.2, 100000, 'namRom.jpg', 10);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH037', 'NH003', 'NCC004', N'Nấm Notaly', N'Kg', 1.2, 190000, 'namNotaly.jpg', 4);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH038', 'NH003', 'NCC005', N'Nấm tuyết', N'Kg', 1.2, 500000, 'namTuyet.jpg', 3);
INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, HeSo, GiaNhap, HinhAnh, SoLuongTon) VALUES ('HH039', 'NH003', 'NCC005', N'Nấm mỡ nâu', N'Kg', 1.2, 290000, 'namMoNau.jpg', 7);

CREATE TABLE hoadon (
  MaHD NVARCHAR2(10) PRIMARY KEY,
  MaNV NVARCHAR2(10) NOT NULL,
  MaKH NVARCHAR2(10),
  NgayTao DATE DEFAULT SYSDATE,
  TongTien FLOAT DEFAULT 0,
  TrangThai NVARCHAR2(50) DEFAULT 'Đã hoàn thành'
);

INSERT INTO hoadon (MaHD, MaNV, MaKH, TongTien) VALUES ('HD001', 'NV001', 'KH001', 0);
INSERT INTO hoadon (MaHD, MaNV, MaKH, TongTien) VALUES ('HD002', 'NV002', 'KH002', 0);
INSERT INTO hoadon (MaHD, MaNV, MaKH, TongTien) VALUES ('HD003', 'NV003', 'KH003', 0);
INSERT INTO hoadon (MaHD, MaNV, MaKH, TongTien) VALUES ('HD004', 'NV003', NULL, 0);

CREATE TABLE chitiethoadon (
  MaHang NVARCHAR2(10) NOT NULL,
  MaHD NVARCHAR2(10) NOT NULL,
  SoLuong NUMBER DEFAULT 1,
  ThanhTien FLOAT DEFAULT 0
);

CREATE OR REPLACE TRIGGER insert_thanhtien
BEFORE INSERT ON chitiethoadon
FOR EACH ROW
BEGIN
    SELECT (:NEW.SoLuong * h.GiaBan) INTO :NEW.ThanhTien
    FROM hanghoa h
    WHERE h.MaHang = :NEW.MaHang;
END;
/

CREATE OR REPLACE TRIGGER insert_tongtien
FOR INSERT ON chitiethoadon
COMPOUND TRIGGER

    -- Define a collection to store the MaHD values
    TYPE MaHD_TableType IS TABLE OF chitiethoadon.MaHD%TYPE;
    MaHD_Table MaHD_TableType := MaHD_TableType();

    -- Statement-level trigger to gather MaHD values
    AFTER EACH ROW IS
    BEGIN
        MaHD_Table.EXTEND;
        MaHD_Table(MaHD_Table.LAST) := :NEW.MaHD;
    END AFTER EACH ROW;

    -- Row-level trigger to update TongTien
    AFTER STATEMENT IS
    BEGIN
        FOR i IN 1..MaHD_Table.COUNT LOOP
            UPDATE hoadon h
            SET h.TongTien = (SELECT NVL(SUM(ThanhTien), 0) FROM chitiethoadon WHERE MaHD = MaHD_Table(i))
            WHERE h.MaHD = MaHD_Table(i);
        END LOOP;
    END AFTER STATEMENT;

END insert_tongtien;
/

CREATE OR REPLACE TRIGGER insert_chitiethoadon
AFTER INSERT ON chitiethoadon
FOR EACH ROW
BEGIN
    UPDATE hanghoa h
    SET h.SoLuongTon = h.SoLuongTon - :NEW.SoLuong
    WHERE h.MaHang = :NEW.MaHang;
END;
/

INSERT ALL
    INTO chitiethoadon (MaHang, MaHD, SoLuong, ThanhTien) VALUES ('HH001', 'HD001', 2, 0)
    INTO chitiethoadon (MaHang, MaHD, SoLuong, ThanhTien) VALUES ('HH011', 'HD002', 3, 0)
    INTO chitiethoadon (MaHang, MaHD, SoLuong, ThanhTien) VALUES ('HH012', 'HD002', 3, 0)
    INTO chitiethoadon (MaHang, MaHD, SoLuong, ThanhTien) VALUES ('HH013', 'HD003', 2, 0)
    INTO chitiethoadon (MaHang, MaHD, SoLuong, ThanhTien) VALUES ('HH014', 'HD003', 5, 0)
    INTO chitiethoadon (MaHang, MaHD, SoLuong, ThanhTien) VALUES ('HH015', 'HD004', 2, 0)
    INTO chitiethoadon (MaHang, MaHD, SoLuong, ThanhTien) VALUES ('HH016', 'HD004', 4, 0)
    INTO chitiethoadon (MaHang, MaHD, SoLuong, ThanhTien) VALUES ('HH023', 'HD001', 2, 0)
    INTO chitiethoadon (MaHang, MaHD, SoLuong, ThanhTien) VALUES ('HH036', 'HD002', 3, 0)
SELECT * FROM dual;


CREATE TABLE phieunhap (
  MaPN NVARCHAR2(10) PRIMARY KEY,
  MaNV NVARCHAR2(10) NOT NULL,
  MaNCC NVARCHAR2(10) NOT NULL,
  NgayNhap DATE DEFAULT SYSDATE,
  TongTien FLOAT NOT NULL,
  TrangThai NVARCHAR2(50) DEFAULT 'Đã nhập hàng'
);

INSERT INTO phieunhap (MaPN, MaNV, MaNCC, TongTien) VALUES
('PN001', 'NV001', 'NCC001', 2000000);

CREATE TABLE chitietphieunhap (
  MaPN NVARCHAR2(10) NOT NULL,
  MaHang NVARCHAR2(10) NOT NULL,
  GiaNhap NUMBER NOT NULL,
  SoLuong NUMBER DEFAULT 10,
  ThanhTien NUMBER DEFAULT 0
);

CREATE OR REPLACE TRIGGER tinh_thanh_tien_ctpn
BEFORE INSERT ON chitietphieunhap
FOR EACH ROW
BEGIN
    :NEW.ThanhTien := :NEW.GiaNhap * :NEW.SoLuong;
END;
/

CREATE OR REPLACE TRIGGER tinh_tong_tien_phieunhap
FOR INSERT ON chitietphieunhap
COMPOUND TRIGGER

    -- Define a collection to store the MaPN values
    TYPE MaPN_TableType IS TABLE OF chitietphieunhap.MaPN%TYPE;
    MaPN_Table MaPN_TableType := MaPN_TableType();

    -- Statement-level trigger to gather MaPN values
    AFTER EACH ROW IS
    BEGIN
        MaPN_Table.EXTEND;
        MaPN_Table(MaPN_Table.LAST) := :NEW.MaPN;
    END AFTER EACH ROW;

    -- Row-level trigger to update TongTien
    AFTER STATEMENT IS
    BEGIN
        FOR i IN 1..MaPN_Table.COUNT LOOP
            UPDATE phieunhap
            SET TongTien = (SELECT NVL(SUM(ThanhTien), 0) FROM chitietphieunhap WHERE MaPN = MaPN_Table(i))
            WHERE MaPN = MaPN_Table(i);
        END LOOP;
    END AFTER STATEMENT;

END tinh_tong_tien_phieunhap;
/

CREATE OR REPLACE TRIGGER update_gia_nhap_hanghoa
AFTER INSERT ON chitietphieunhap
FOR EACH ROW
BEGIN
    UPDATE hanghoa
    SET GiaNhap = :NEW.GiaNhap
    WHERE MaHang = :NEW.MaHang
    AND GiaNhap < :NEW.GiaNhap;
END;
/

CREATE OR REPLACE TRIGGER update_so_luongton_ctpn
AFTER INSERT ON chitietphieunhap
FOR EACH ROW
BEGIN
    UPDATE hanghoa
    SET SoLuongTon = SoLuongTon + :NEW.SoLuong
    WHERE MaHang = :NEW.MaHang;
END;
/

INSERT ALL
    INTO chitietphieunhap (MaPN, MaHang, GiaNhap, SoLuong, ThanhTien) VALUES ('PN001', 'HH001', 12500, 4, 0)
    INTO chitietphieunhap (MaPN, MaHang, GiaNhap, SoLuong, ThanhTien) VALUES ('PN001', 'HH003', 50000, 5, 0)
    INTO chitietphieunhap (MaPN, MaHang, GiaNhap, SoLuong, ThanhTien) VALUES ('PN001', 'HH006', 12000, 5, 0)
    INTO chitietphieunhap (MaPN, MaHang, GiaNhap, SoLuong, ThanhTien) VALUES ('PN001', 'HH012', 8000, 5, 0)
    INTO chitietphieunhap (MaPN, MaHang, GiaNhap, SoLuong, ThanhTien) VALUES ('PN001', 'HH015', 8000, 5, 0)
SELECT * FROM dual;

CREATE TABLE khachhang (
  MaKH NVARCHAR2(10) PRIMARY KEY,
  TenKH NVARCHAR2(50) NOT NULL,
  SDT NVARCHAR2(30) DEFAULT 'Chưa xác đinh',
  DiaChi NVARCHAR2(50) DEFAULT 'Chưa xác đinh',
  TrangThai NUMBER DEFAULT 1
);

INSERT INTO khachhang (MaKH, TenKH, SDT, DiaChi) VALUES ('KH001', N'Nguyễn Văn Phú', '0987654321', N'Lê Trọng Tấn');
INSERT INTO khachhang (MaKH, TenKH, SDT, DiaChi) VALUES ('KH002', N'Trần Thị Dung', '0123456789', N'Bình Chánh');
INSERT INTO khachhang (MaKH, TenKH, SDT, DiaChi) VALUES ('KH003', N'Lê Văn Sỹ', '0912345678', N'Lạc Long Quân');
INSERT INTO khachhang (MaKH, TenKH, SDT, DiaChi) VALUES ('KH004', N'Phạm Thị Kim', '0876543210', N'Thành Thái');
INSERT INTO khachhang (MaKH, TenKH, SDT, DiaChi) VALUES ('KH005', N'Hoàng Văn Cường', '0965432187', N'Điện Biên Phủ');

CREATE TABLE nhacungcap (
  MaNCC NVARCHAR2(10) PRIMARY KEY,
  TenNCC NVARCHAR2(50) NOT NULL,
  SDT NVARCHAR2(30) DEFAULT 'Chưa xác đinh',
  DiaChi NVARCHAR2(50) DEFAULT 'Chưa xác đinh',
  TrangThai NUMBER DEFAULT 1
);

INSERT INTO nhacungcap (MaNCC, TenNCC, SDT, DiaChi) VALUES ('NCC001', N'LangFarm', '0765486382', N'Bình Thạnh');
INSERT INTO nhacungcap (MaNCC, TenNCC, SDT, DiaChi) VALUES ('NCC002', N'Nông sản Nguyên Vy', '0765486383', N'Lâm Đồng');
INSERT INTO nhacungcap (MaNCC, TenNCC, SDT, DiaChi) VALUES ('NCC003', N'SUNRISE INS', '0765486384', 'Tp.HCM');
INSERT INTO nhacungcap (MaNCC, TenNCC, SDT, DiaChi) VALUES ('NCC004', N'Thành Nam', '0765486385', N'Bình Dương');
INSERT INTO nhacungcap (MaNCC, TenNCC, SDT, DiaChi) VALUES ('NCC005', N'Nam Đô', '0765486386', N'Đà Nẵng');

CREATE TABLE nhanvien (
  MaNV NVARCHAR2(10) PRIMARY KEY,
  TenNV NVARCHAR2(50) NOT NULL,
  SDT NVARCHAR2(30) DEFAULT 'Chưa xác định',
  UserName NVARCHAR2(30) NOT NULL,
  Password NVARCHAR2(30) NOT NULL,
  ChucVu NVARCHAR2(50) DEFAULT 'Nhân viên',
  DiaChi NVARCHAR2(50) DEFAULT 'Chưa xác định',
  TrangThai NUMBER DEFAULT 1
);

INSERT INTO nhanvien (MaNV, TenNV, SDT, UserName, Password, ChucVu, DiaChi) VALUES ('NV001', N'Nguyễn Văn Bình', '0897785658', 'admin', 'admin123', N'Quản lý', 'TPHCM');
INSERT INTO nhanvien (MaNV, TenNV, SDT, UserName, Password, ChucVu, DiaChi) VALUES ('NV002', N'Hồ Văn Cường', '0897785623', 'cuong', '123', N'Nhân viên', 'TPHCM');
INSERT INTO nhanvien (MaNV, TenNV, SDT, UserName, Password, ChucVu, DiaChi) VALUES ('NV003', N'Trương Thị Tuyết Linh', '0897785612', 'linh', '123', N'Nhân viên', 'TPHCM');
INSERT INTO nhanvien (MaNV, TenNV, SDT, UserName, Password, ChucVu, DiaChi) VALUES ('NV004', N'Võ Văn Minh', '0897785123', 'minh', '123', N'Nhân viên', 'TPHCM');

CREATE TABLE nhomhang (
  MaNhomHang NVARCHAR2(10) PRIMARY KEY,
  TenNhomHang NVARCHAR2(50) NOT NULL,
  TrangThai NUMBER DEFAULT 1
);

INSERT INTO nhomhang (MaNhomHang, TenNhomHang) VALUES ('NH001', N'Rau');
INSERT INTO nhomhang (MaNhomHang, TenNhomHang) VALUES ('NH002', N'Củ');
INSERT INTO nhomhang (MaNhomHang, TenNhomHang) VALUES ('NH003', N'Nấm');
INSERT INTO nhomhang (MaNhomHang, TenNhomHang) VALUES ('NH004', N'Trái cây');

ALTER TABLE nhanvien
  ADD CONSTRAINT UQ_NhanVien_UserName UNIQUE (UserName);
ALTER TABLE nhacungcap
  ADD CONSTRAINT UQ_NhaCungCap_TenNCC UNIQUE (TenNCC);
ALTER TABLE hanghoa
  ADD CONSTRAINT UQ_HangHoa_TenHang UNIQUE (TenHang);
ALTER TABLE nhomhang
  ADD CONSTRAINT UQ_NhomHang_TenNhomHang UNIQUE (TenNhomHang);
ALTER TABLE hanghoa
  ADD CONSTRAINT FK_HangHoa_NhomHang FOREIGN KEY (MaNhomHang) REFERENCES nhomhang (MaNhomHang);
ALTER TABLE hanghoa
  ADD CONSTRAINT FK_HangHoa_NhaCungCap FOREIGN KEY (MaNCC) REFERENCES nhacungcap (MaNCC);

ALTER TABLE hoadon
  ADD CONSTRAINT FK_HoaDon_NhanVien FOREIGN KEY (MaNV) REFERENCES nhanvien (MaNV);
ALTER TABLE hoadon
  ADD CONSTRAINT FK_HoaDon_KhachHang FOREIGN KEY (MaKH) REFERENCES khachhang (MaKH);

ALTER TABLE phieunhap
  ADD CONSTRAINT FK_PhieuNhap_NhanVien FOREIGN KEY (MaNV) REFERENCES nhanvien (MaNV);
ALTER TABLE phieunhap
  ADD CONSTRAINT FK_PhieuNhap_NhaCungCap FOREIGN KEY (MaNCC) REFERENCES nhacungcap (MaNCC);
ALTER TABLE chitiethoadon
  ADD CONSTRAINT PK_ChiTietHoaDon PRIMARY KEY (MaHang, MaHD);
ALTER TABLE chitiethoadon
  ADD CONSTRAINT FK_ChiTietHoaDon_HoaDon FOREIGN KEY (MaHD) REFERENCES hoadon (MaHD);
ALTER TABLE chitiethoadon
  ADD CONSTRAINT FK_ChiTietHoaDon_HangHoa FOREIGN KEY (MaHang) REFERENCES HangHoa (MaHang);
ALTER TABLE chitietphieunhap
  ADD CONSTRAINT PK_ChiTietPhieuNhap PRIMARY KEY (MaPN, MaHang);
ALTER TABLE chitietphieunhap
  ADD CONSTRAINT FK_ChiTietPhieuNhap_MaHang FOREIGN KEY (MaHang) REFERENCES hanghoa (MaHang);
ALTER TABLE chitietphieunhap
  ADD CONSTRAINT FK_ChiTietPhieuNhap_PhieuNhap FOREIGN KEY (MaPN) REFERENCES PhieuNhap (MaPN);

-- Update HangHoa
CREATE OR REPLACE PROCEDURE sp_UpdateHangHoa (
    p_MaHang IN VARCHAR2,
    p_MaNhomHang IN VARCHAR2,
    p_MaNCC IN VARCHAR2,
    p_TenHang IN NVARCHAR2,
    p_DVT IN NVARCHAR2,
    p_GiaNhap IN NUMBER,
    p_HeSo IN FLOAT,
    p_HinhAnh IN NVARCHAR2,
    p_SoLuongTon IN FLOAT
) IS
BEGIN
    UPDATE hanghoa
    SET 
        MaNhomHang = p_MaNhomHang,
        MaNCC = p_MaNCC,
        TenHang = p_TenHang,
        DVT = p_DVT,
        GiaNhap = p_GiaNhap,
        HeSo = p_HeSo,
        SoLuongTon = p_SoLuongTon,
        HinhAnh = p_HinhAnh
    WHERE MaHang = p_MaHang;
END;
/

-- Insert HangHoa
CREATE OR REPLACE PROCEDURE sp_InsertHangHoa (
    p_MaHang IN VARCHAR2,
    p_MaNhomHang IN VARCHAR2,
    p_MaNCC IN VARCHAR2,
    p_TenHang IN NVARCHAR2,
    p_DVT IN NVARCHAR2,
    p_GiaNhap IN NUMBER,
    p_HeSo IN FLOAT,
    p_HinhAnh IN NVARCHAR2,
    p_SoLuongTon IN FLOAT
) IS
BEGIN
    INSERT INTO hanghoa (MaHang, MaNhomHang, MaNCC, TenHang, DVT, GiaNhap, HeSo, HinhAnh, SoLuongTon)
    VALUES (p_MaHang, p_MaNhomHang, p_MaNCC, p_TenHang, p_DVT, p_GiaNhap, p_HeSo, p_HinhAnh, p_SoLuongTon);
END;
/

-- Search HangHoa
CREATE OR REPLACE PROCEDURE sp_SearchInHangHoa (
    p_searchStr IN NVARCHAR2,
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM hanghoa WHERE MaHang = p_searchStr OR TenHang LIKE '%' || p_searchStr || '%';
END;
/

-- Search HangHoa with MaHang
CREATE OR REPLACE PROCEDURE sp_SearchHangHoaWithMaHang (
    p_searchStr IN NVARCHAR2,
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM hanghoa WHERE MaHang = p_searchStr;
END;
/

-- Get List HangHoa
CREATE OR REPLACE PROCEDURE sp_getListHangHoa (
    p_trangThai IN NUMBER,
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM hanghoa WHERE TrangThai = p_trangThai;
END;
/

-- Get HangHoa
CREATE OR REPLACE PROCEDURE sp_getHangHoa (
    p_MaHang IN VARCHAR2,
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM hanghoa WHERE MaHang = p_MaHang;
END;
/

-- Get Last HangHoa
CREATE OR REPLACE PROCEDURE sp_getLastHangHoa (
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM hanghoa ORDER BY mahang DESC FETCH FIRST 1 ROW ONLY;
END;
/

-- Delete HangHoa
CREATE OR REPLACE PROCEDURE sp_deleteHangHoa (
    p_MaHang IN VARCHAR2
) IS
BEGIN
    UPDATE hanghoa SET TrangThai = 0 WHERE MaHang = p_MaHang;
END;
/

-- Recover HangHoa
CREATE OR REPLACE PROCEDURE sp_recoverHangHoa (
    p_MaHang IN VARCHAR2
) IS
BEGIN
    UPDATE hanghoa SET TrangThai = 1 WHERE MaHang = p_MaHang;
END;
/

-- Get List HangHoa Theo MaNhom
CREATE OR REPLACE PROCEDURE sp_getListHangHoaTheoMaNhom (
    p_MaNhom IN VARCHAR2,
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM hanghoa WHERE MaNhomHang = p_MaNhom AND TrangThai = 1;
END;
/
CREATE OR REPLACE PROCEDURE sp_getListHoaDon (
    trangThai IN NUMBER,
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM HoaDon WHERE TrangThai = trangThai;
END;
/

CREATE OR REPLACE PROCEDURE sp_getHoaDon (
    MaHD IN VARCHAR2,
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM HoaDon WHERE TrangThai = 1 AND MaHD = MaHD;
END;
/

CREATE OR REPLACE PROCEDURE sp_getLastHoaDon (
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM HoaDon ORDER BY MaHD DESC FETCH FIRST 1 ROW ONLY;
END;
/

CREATE OR REPLACE PROCEDURE sp_insertHoaDon (
    MaHD IN VARCHAR2,
    MaNV IN VARCHAR2,
    MaKH IN VARCHAR2,
    TongTien IN NUMBER
) IS
BEGIN
    INSERT INTO HoaDon (MaHD, MaNV, MaKH, TongTien)
    VALUES (MaHD, MaNV, MaKH, TongTien);
END;
/

--Procedure ChiTietHoaDon
-- insert CTHD
CREATE OR REPLACE PROCEDURE sp_insertChiTietHoaDon (
  MaHang IN VARCHAR2,
  MaHD IN VARCHAR2,
  SoLuong IN FLOAT,
  ThanhTien IN FLOAT
)
IS
BEGIN
  INSERT INTO chitiethoadon(MaHang, MaHD, SoLuong, ThanhTien)
  VALUES (MaHang, MaHD, SoLuong, ThanhTien);
END;
/

--Get List ChiTietHoaDon
CREATE OR REPLACE PROCEDURE sp_getListCTHD (
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT chitiethoadon.MaHang, MaHD, TenHang, SoLuong, SoLuongTon, DVT, GiaBan, ThanhTien 
    FROM chitiethoadon 
    JOIN hanghoa ON chitiethoadon.MaHang = hanghoa.MaHang;
END;
/

--Procedure for KhachHang
-- Get List KhachHang
CREATE OR REPLACE PROCEDURE sp_getListKhachHang (
    p_trangThai IN NUMBER,
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM KhachHang WHERE TrangThai = p_trangThai;
END;
/

-- Get KhachHang
CREATE OR REPLACE PROCEDURE sp_getKhachHang (
    p_MaKH IN VARCHAR2,
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM KhachHang WHERE TrangThai = 1 AND MaKH = p_MaKH;
END;
/

-- Get KhachHang theo sdt
CREATE OR REPLACE PROCEDURE sp_getKhachHangTheoSDT (
    p_sdt IN NVARCHAR2,
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM KhachHang WHERE TrangThai = 1 AND SDT = p_sdt;
END;
/

-- Get Last KhachHang
CREATE OR REPLACE PROCEDURE sp_getLastKhachHang (
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM khachhang ORDER BY MaKH DESC FETCH FIRST 1 ROW ONLY;
END;
/

-- Update KhachHang
CREATE OR REPLACE PROCEDURE sp_updateKH (
    p_MaKH IN NVARCHAR2,
    p_TenKH IN NVARCHAR2,
    p_SDT IN VARCHAR2,
    p_DiaChi IN NVARCHAR2
) IS
BEGIN
    UPDATE khachhang
    SET
        TenKH = p_TenKH,
        SDT = p_SDT,
        DiaChi = p_DiaChi
    WHERE MaKH = p_MaKH;
END;
/

-- Insert KhachHang
CREATE OR REPLACE PROCEDURE sp_insertKH (
    p_MaKH IN NVARCHAR2,
    p_TenKH IN NVARCHAR2,
    p_SDT IN VARCHAR2,
    p_DiaChi IN NVARCHAR2
) IS
BEGIN
    INSERT INTO khachhang(MaKH, TenKH, SDT, DiaChi)
    VALUES (p_MaKH, p_TenKH, p_SDT, p_DiaChi);
END;
/

-- Delete KhachHang
CREATE OR REPLACE PROCEDURE sp_deleteKhachHang (
    p_MaKH IN VARCHAR2
) IS
BEGIN
    UPDATE khachhang SET TrangThai = 0 WHERE MaKH = p_MaKH;
END;
/

-- Recover KhachHang
CREATE OR REPLACE PROCEDURE sp_recoverKhachHang (
    p_MaKH IN VARCHAR2
) IS
BEGIN
    UPDATE khachhang SET TrangThai = 1 WHERE MaKH = p_MaKH;
END;
/

-- Login
CREATE OR REPLACE PROCEDURE sp_login (
    p_username IN VARCHAR2, 
    p_password IN VARCHAR2, 
    p_cursor OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM nhanvien WHERE username = p_username AND password = p_password;
END;
/

-- Thong ke doanh thu theo ngay
CREATE OR REPLACE PROCEDURE sp_DoanhThuTheoNgay (
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT TRUNC(NgayTao) AS Ngay, SUM(TongTien) AS DoanhThu 
    FROM hoadon 
    GROUP BY TRUNC(NgayTao);
END;
/

-- Thong ke hang hoa ban chay theo so luong
CREATE OR REPLACE PROCEDURE sp_HangHoaBanChayTheoSoLuong (
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT hanghoa.TenHang, SUM(chitiethoadon.SoLuong) AS SoLuong 
    FROM hanghoa 
    JOIN chitiethoadon ON chitiethoadon.MaHang = hanghoa.MaHang 
    GROUP BY hanghoa.TenHang 
    ORDER BY SoLuong DESC;
END;
/

-- Get Last PhieuNhap
CREATE OR REPLACE PROCEDURE sp_getLastPhieuNhap (
    p_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_cursor FOR
    SELECT * FROM phieunhap ORDER BY MaPN DESC FETCH FIRST 1 ROW ONLY;
END;
/

-- Update Supplier
CREATE OR REPLACE PROCEDURE sp_updateNCC (
  p_MaNCC IN VARCHAR2,
  p_TenNCC IN NVARCHAR2,
  p_SDT IN VARCHAR2,
  p_DiaChi IN NVARCHAR2
)
IS
BEGIN
  UPDATE nhacungcap
  SET TenNCC = p_TenNCC,
      SDT = p_SDT,
      DiaChi = p_DiaChi
  WHERE MaNCC = p_MaNCC;
END;
/

-- Insert Supplier
CREATE OR REPLACE PROCEDURE sp_insertNCC (
  p_MaNCC IN VARCHAR2,
  p_TenNCC IN NVARCHAR2,
  p_SDT IN VARCHAR2,
  p_DiaChi IN VARCHAR2
)
IS
BEGIN
  INSERT INTO nhacungcap(MaNCC, TenNCC, SDT, DiaChi)
  VALUES (p_MaNCC, p_TenNCC, p_SDT, p_DiaChi);
END;
/

-- Get List of Purchase Order Details
CREATE OR REPLACE PROCEDURE sp_getListCTPN (
  p_cursor OUT SYS_REFCURSOR
)
IS
BEGIN
  OPEN p_cursor FOR
    SELECT chitietphieunhap.MaHang, MaPN, TenHang, SoLuong, SoLuongTon, chitietphieunhap.GiaNhap, GiaBan, ThanhTien
    FROM chitietphieunhap
    JOIN hanghoa ON chitietphieunhap.MaHang = hanghoa.MaHang;
END;
/

-- Insert Purchase Order Detail
CREATE OR REPLACE PROCEDURE sp_insertCTPN (
  p_MaPN VARCHAR2,
  p_MaHang VARCHAR2,
  p_GiaNhap FLOAT,
  p_SoLuong FLOAT,
  p_ThanhTien FLOAT
)
IS
BEGIN
  INSERT INTO chitietphieunhap(MaHang, MaPN, GiaNhap, SoLuong, ThanhTien)
  VALUES (p_MaHang, p_MaPN, p_GiaNhap, p_SoLuong, p_ThanhTien);
END;
/

-- Get Products by Group and Supplier
CREATE OR REPLACE PROCEDURE sp_getListHHTheoNhomVaNCC (
  p_MaNhom VARCHAR2,
  p_MaNCC VARCHAR2,
  p_cursor OUT SYS_REFCURSOR
)
IS
BEGIN
  OPEN p_cursor FOR
    SELECT *
    FROM hanghoa
    WHERE MaNhomHang = p_MaNhom AND MaNCC = p_MaNCC AND TrangThai = 1;
END;
/

-- Get Products by Supplier
CREATE OR REPLACE PROCEDURE sp_getListHangHoaTheoMaNCC (
  p_MaNCC VARCHAR2,
  p_cursor OUT SYS_REFCURSOR
)
IS
BEGIN
  OPEN p_cursor FOR
    SELECT *
    FROM hanghoa
    WHERE MaNCC = p_MaNCC AND TrangThai = 1;
END;
/

-- Get Last Purchase Order
CREATE OR REPLACE PROCEDURE sp_getLastPhieuNhap (
  p_cursor OUT SYS_REFCURSOR
)
IS
BEGIN
  OPEN p_cursor FOR
    SELECT *
    FROM phieunhap
    ORDER BY MaPN DESC
    FETCH FIRST 1 ROW ONLY;
END;
/



