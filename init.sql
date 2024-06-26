-- Create by xuanthulab.net

DROP TABLE IF EXISTS Donhang;
CREATE TABLE Donhang (
    DonhangID   INTEGER PRIMARY KEY AUTO_INCREMENT,
    KhachhangID INT,
    NhanvienID  INT,
    Ngaydathang DATE,
    ShipperID   INT
);


DROP TABLE IF EXISTS Danhmuc;
CREATE TABLE Danhmuc (
    DanhmucID  INTEGER  PRIMARY KEY AUTO_INCREMENT,
    TenDanhMuc NVARCHAR (255),
    MoTa       NVARCHAR (255)
);


DROP TABLE IF EXISTS Cungcap;
CREATE TABLE Cungcap (
    CungcapID INTEGER  PRIMARY KEY AUTO_INCREMENT,
    Tendaydu  NVARCHAR (255),
    TenLienhe NVARCHAR (255),
    Diachi    NVARCHAR (255),
    Thanhpho  NVARCHAR (255),
    MaBuudien NVARCHAR (255),
    Quocgia   NVARCHAR (255),
    Dienthoai NVARCHAR (255)
);

-- Sanpham
DROP TABLE IF EXISTS Sanpham;
CREATE TABLE Sanpham (
    SanphamID  INTEGER PRIMARY KEY AUTO_INCREMENT,
    TenSanpham NVARCHAR (255),
    CungcapID  INT,
    DanhmucID  INT,
    Donvi      NVARCHAR (255),
    Gia        DECIMAL(13, 2)
);

DROP TABLE IF EXISTS DonhangChitiet;
CREATE TABLE DonhangChitiet (
    DonhangChitietID INTEGER PRIMARY KEY AUTO_INCREMENT,
    DonhangID        INT,
    SanphamID        INT,
    Soluong          INT
);


DROP TABLE IF EXISTS Khachhang;
CREATE TABLE Khachhang (
    KhachhangID INTEGER  PRIMARY KEY AUTO_INCREMENT,
    HoTen       NVARCHAR (255),
    TenLienLac  NVARCHAR (255),
    Diachi      NVARCHAR (255),
    Thanhpho    NVARCHAR (255),
    MaBuudien   NVARCHAR (255),
    QuocGia     NVARCHAR (255)
);
DROP TABLE IF EXISTS Nhanvien;
CREATE TABLE Nhanvien (
    NhanviennID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Ten         NVARCHAR (255),
    Ho          NVARCHAR (255),
    NgaySinh    DATE,
    Anh         NVARCHAR (255),
    Ghichu      Text CHARACTER SET utf8
);
DROP TABLE IF EXISTS Shippers;
CREATE TABLE Shippers (
    ShipperID   INTEGER  PRIMARY KEY AUTO_INCREMENT,
    Hoten       NVARCHAR (255),
    Sodienthoai NVARCHAR (255)
);

-- AUTO_INCREMENT

-- Table: Cungcap
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (1, 'Công ty TNHH ABC', 'ABC', 'Địa chỉ dwj p', 'Hà Nội', '1222', 'Việt Nam', '(171) 555-2222');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (2, 'Công ty CP TMDV XYZ', 'ZYZ', 'Địa chỉ anwme crckov', 'Hải Phòng', '2222', 'Việt Nam', '(100) 555-4822');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (3, 'Trần Quỳnh Châu', 'Châu', 'Địa chỉ ujycp h', 'Vĩnh Phúc', '4555', 'Việt Nam', '(313) 555-5735');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (4, 'Trần Khánh Duy', 'Duy', 'Địa chỉ yxeyhn p', 'Đồng Nai', '100', 'Việt Nam', '(03) 3555-5011');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (5, 'Nguyễn Thị Trúc Đào', 'Đào', 'Địa chỉ vdxwt jbl', 'Quy Nhơn', '33007', 'Việt Nam', '(98) 598 76 54');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (6, 'Nguyễn Nhật Hải', 'Hải', 'Địa chỉ i zidsusij', 'Huế', '545', 'Việt Nam', '(06) 431-7877');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (7, 'Lâm Nhật Hào', 'Hào', 'Địa chỉ zu srdoxgcw', 'Hà Nội', '3058', 'Việt Nam', '(03) 444-2343');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (8, 'Nguyễn Thị Hân', 'Hân', 'Địa chỉ ofygwp ryyc', 'Hải Phòng', 'M14 GSD', 'Việt Nam', '(161) 555-4448');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (9, 'Nguyễn Trần Thế Hiển', 'Hiển', 'Địa chỉ e do', 'Vĩnh Phúc', 'S-345 67', 'Việt Nam', '031-987 65 43');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (10, 'Nguyễn Nhật Hoa', 'Hoa', 'Địa chỉ kicr nqvvm', 'Đồng Nai', '5442', 'Việt Nam', '(11) 555 4640');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (11, 'Trần Trọng Huân', 'Huân', 'Địa chỉ rcnuqhwo avcgbzay', 'Quy Nhơn', '10785', 'Việt Nam', '(010) 9984510');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (12, 'Quách Tuấn Huy', 'Huy', 'Địa chỉ ewitg g', 'Huế', '60439', 'Việt Nam', '(069) 992755');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (13, 'Trần Chí Kha', 'Kha', 'Địa chỉ wjmuty pagvqqxx', 'Hà Nội', '27478', 'Việt Nam', '(04721) 8713');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (14, 'Trần Ngọc Đăng Khoa', 'Khoa', 'Địa chỉ chpz zhet', 'Hải Phòng', '48100', 'Việt Nam', '(0544) 60323');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (15, 'Ngô Thảo Linh', 'Linh', 'Địa chỉ yxcl p', 'Vĩnh Phúc', '1320', 'Việt Nam', '(0)2-953010');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (16, 'Võ Phi Long', 'Long', 'Địa chỉ ckjj felwbp', 'Đồng Nai', '97101', 'Việt Nam', '(503) 555-9931');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (17, 'Nguyễn Hữu Luân', 'Luân', 'Địa chỉ zlyr e', 'Quy Nhơn', 'S-123 45', 'Việt Nam', '08-123 45 67');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (18, 'Lê Nhật Minh', 'Minh', 'Địa chỉ umd fqzcur', 'Huế', '75004', 'Việt Nam', '(1) 03.83.00.68');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (19, 'Lê Thúy Ngọc', 'Ngọc', 'Địa chỉ gqg yejolpub', 'Hà Nội', '02134', 'Việt Nam', '(617) 555-3267');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (20, 'Võ Thanh Nhã', 'Nhã', 'Địa chỉ cozl ysiqrlas', 'Hải Phòng', '0512', 'Việt Nam', '555-8787');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (21, 'Phạm Hữu Nhân', 'Nhân', 'Địa chỉ aecdqp ukqsazml', 'Vĩnh Phúc', '2800', 'Việt Nam', '43844108');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (22, 'Trần Mỹ Nhàn', 'Nhàn', 'Địa chỉ kbmslyhf ltvoher', 'Đồng Nai', '9999 ZZ', 'Việt Nam', '(12345) 1212');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (23, 'Hồng Thành Như', 'Như', 'Địa chỉ f dbt', 'Quy Nhơn', '53120', 'Việt Nam', '(953) 10956');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (24, 'Bùi Văn Nhí', 'Nhí', 'Địa chỉ qp mm', 'Huế', '2042', 'Việt Nam', '(02) 555-5914');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (25, 'Thái Thị Khã Nhưng', 'Nhưng', 'Địa chỉ mop yvyckieb', 'Hà Nội', 'H1J 1C3', 'Việt Nam', '(514) 555-9022');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (26, 'Phan Long Phi', 'Phi', 'Địa chỉ pmpkz ftri', 'Hải Phòng', '84100', 'Việt Nam', '(089) 6547665');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (27, 'Nguyễn Quốc Phong', 'Phong', 'Địa chỉ gkzfa jm', 'Vĩnh Phúc', '71300', 'Việt Nam', '85.57.00.07');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (28, 'Lý Mỹ Phụng', 'Phụng', 'Địa chỉ zvpus st', 'Đồng Nai', '74000', 'Việt Nam', '38.76.98.06');
INSERT INTO Cungcap (CungcapID, Tendaydu, TenLienhe, Diachi, Thanhpho, MaBuudien, Quocgia, Dienthoai) VALUES (29, 'Ngô Gia Quy', 'Quy', 'Địa chỉ i uef', 'Quy Nhơn', 'J2S 7S8', 'Việt Nam', '(514) 555-2955');


-- Table: Danhmuc
INSERT INTO Danhmuc (DanhmucID, TenDanhMuc, MoTa) VALUES (1, 'Đồ uống', 'cafe, rượu, bia');
INSERT INTO Danhmuc (DanhmucID, TenDanhMuc, MoTa) VALUES (2, 'Gia vị', 'Nước sốt,  bơ, mứt , gia vị');
INSERT INTO Danhmuc (DanhmucID, TenDanhMuc, MoTa) VALUES (3, 'Bánh kẹo', 'kẹo, bánh kem ...');
INSERT INTO Danhmuc (DanhmucID, TenDanhMuc, MoTa) VALUES (4, 'Sản phẩm từ sữa', 'Phó mát');
INSERT INTO Danhmuc (DanhmucID, TenDanhMuc, MoTa) VALUES (5, 'Ngũ cốc', 'Bánh mì, gạo, ...');
INSERT INTO Danhmuc (DanhmucID, TenDanhMuc, MoTa) VALUES (6, 'Thịt', 'Các loại thịt');
INSERT INTO Danhmuc (DanhmucID, TenDanhMuc, MoTa) VALUES (7, 'Đồ khô', 'Thực phẩm sấy khô');
INSERT INTO Danhmuc (DanhmucID, TenDanhMuc, MoTa) VALUES (8, 'Đồ biển', 'Cá, cua biển');



-- Table: Donhang
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10248, 90, 5, '2019-07-04', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10249, 81, 6, '2019-07-05', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10250, 34, 4, '2019-07-08', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10251, 84, 3, '2019-07-08', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10252, 76, 4, '2019-07-09', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10253, 34, 3, '2019-07-10', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10254, 14, 5, '2019-07-11', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10255, 68, 9, '2019-07-12', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10256, 88, 3, '2019-07-15', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10257, 35, 4, '2019-07-16', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10258, 20, 1, '2019-07-17', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10259, 13, 4, '2019-07-18', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10260, 55, 4, '2019-07-19', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10261, 61, 4, '2019-07-19', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10262, 65, 8, '2019-07-22', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10263, 20, 9, '2019-07-23', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10264, 24, 6, '2019-07-24', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10265, 7, 2, '2019-07-25', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10266, 87, 3, '2019-07-26', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10267, 25, 4, '2019-07-29', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10268, 33, 8, '2019-07-30', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10269, 89, 5, '2019-07-31', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10270, 87, 1, '2019-08-01', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10271, 75, 6, '2019-08-01', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10272, 65, 6, '2019-08-02', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10273, 63, 3, '2019-08-05', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10274, 85, 6, '2019-08-06', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10275, 49, 1, '2019-08-07', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10276, 80, 8, '2019-08-08', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10277, 52, 2, '2019-08-09', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10278, 5, 8, '2019-08-12', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10279, 44, 8, '2019-08-13', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10280, 5, 2, '2019-08-14', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10281, 69, 4, '2019-08-14', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10282, 69, 4, '2019-08-15', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10283, 46, 3, '2019-08-16', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10284, 44, 4, '2019-08-19', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10285, 63, 1, '2019-08-20', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10286, 63, 8, '2019-08-21', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10287, 67, 8, '2019-08-22', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10288, 66, 4, '2019-08-23', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10289, 11, 7, '2019-08-26', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10290, 15, 8, '2019-08-27', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10291, 61, 6, '2019-08-27', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10292, 81, 1, '2019-08-28', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10293, 80, 1, '2019-08-29', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10294, 65, 4, '2019-08-30', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10295, 85, 2, '2019-09-02', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10296, 46, 6, '2019-09-03', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10297, 7, 5, '2019-09-04', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10298, 37, 6, '2019-09-05', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10299, 67, 4, '2019-09-06', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10300, 49, 2, '2019-09-09', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10301, 86, 8, '2019-09-09', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10302, 76, 4, '2019-09-10', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10303, 30, 7, '2019-09-11', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10304, 80, 1, '2019-09-12', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10305, 55, 8, '2019-09-13', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10306, 69, 1, '2019-09-16', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10307, 48, 2, '2019-09-17', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10308, 2, 7, '2019-09-18', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10309, 37, 3, '2019-09-19', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10310, 77, 8, '2019-09-20', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10311, 18, 1, '2019-09-20', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10312, 86, 2, '2019-09-23', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10313, 63, 2, '2019-09-24', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10314, 65, 1, '2019-09-25', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10315, 38, 4, '2019-09-26', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10316, 65, 1, '2019-09-27', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10317, 48, 6, '2019-09-30', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10318, 38, 8, '2019-10-01', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10319, 80, 7, '2019-10-02', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10320, 87, 5, '2019-10-03', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10321, 38, 3, '2019-10-03', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10322, 58, 7, '2019-10-04', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10323, 39, 4, '2019-10-07', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10324, 71, 9, '2019-10-08', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10325, 39, 1, '2019-10-09', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10326, 8, 4, '2019-10-10', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10327, 24, 2, '2019-10-11', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10328, 28, 4, '2019-10-14', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10329, 75, 4, '2019-10-15', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10330, 46, 3, '2019-10-16', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10331, 9, 9, '2019-10-16', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10332, 51, 3, '2019-10-17', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10333, 87, 5, '2019-10-18', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10334, 84, 8, '2019-10-21', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10335, 37, 7, '2019-10-22', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10336, 60, 7, '2019-10-23', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10337, 25, 4, '2019-10-24', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10338, 55, 4, '2019-10-25', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10339, 51, 2, '2019-10-28', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10340, 9, 1, '2019-10-29', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10341, 73, 7, '2019-10-29', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10342, 25, 4, '2019-10-30', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10343, 44, 4, '2019-10-31', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10344, 89, 4, '2019-11-01', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10345, 63, 2, '2019-11-04', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10346, 65, 3, '2019-11-05', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10347, 21, 4, '2019-11-06', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10348, 86, 4, '2019-11-07', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10349, 75, 7, '2019-11-08', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10350, 41, 6, '2019-11-11', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10351, 20, 1, '2019-11-11', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10352, 28, 3, '2019-11-12', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10353, 59, 7, '2019-11-13', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10354, 58, 8, '2019-11-14', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10355, 4, 6, '2019-11-15', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10356, 86, 6, '2019-11-18', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10357, 46, 1, '2019-11-19', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10358, 41, 5, '2019-11-20', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10359, 72, 5, '2019-11-21', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10360, 7, 4, '2019-11-22', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10361, 63, 1, '2019-11-22', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10362, 9, 3, '2019-11-25', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10363, 17, 4, '2019-11-26', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10364, 19, 1, '2019-11-26', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10365, 3, 3, '2019-11-27', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10366, 29, 8, '2019-11-28', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10367, 83, 7, '2019-11-28', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10368, 20, 2, '2019-11-29', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10369, 75, 8, '2019-12-02', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10370, 14, 6, '2019-12-03', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10371, 41, 1, '2019-12-03', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10372, 62, 5, '2019-12-04', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10373, 37, 4, '2019-12-05', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10374, 91, 1, '2019-12-05', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10375, 36, 3, '2019-12-06', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10376, 51, 1, '2019-12-09', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10377, 72, 1, '2019-12-09', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10378, 24, 5, '2019-12-10', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10379, 61, 2, '2019-12-11', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10380, 37, 8, '2019-12-12', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10381, 46, 3, '2019-12-12', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10382, 20, 4, '2019-12-13', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10383, 4, 8, '2019-12-16', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10384, 5, 3, '2019-12-16', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10385, 75, 1, '2019-12-17', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10386, 21, 9, '2019-12-18', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10387, 70, 1, '2019-12-18', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10388, 72, 2, '2019-12-19', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10389, 10, 4, '2019-12-20', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10390, 20, 6, '2019-12-23', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10391, 17, 3, '2019-12-23', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10392, 59, 2, '2019-12-24', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10393, 71, 1, '2019-12-25', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10394, 36, 1, '2019-12-25', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10395, 35, 6, '2019-12-26', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10396, 25, 1, '2019-12-27', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10397, 60, 5, '2019-12-27', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10398, 71, 2, '2019-12-30', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10399, 83, 8, '2019-12-31', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10400, 19, 1, '2020-01-01', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10401, 65, 1, '2020-01-01', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10402, 20, 8, '2020-01-02', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10403, 20, 4, '2020-01-03', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10404, 49, 2, '2020-01-03', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10405, 47, 1, '2020-01-06', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10406, 62, 7, '2020-01-07', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10407, 56, 2, '2020-01-07', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10408, 23, 8, '2020-01-08', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10409, 54, 3, '2020-01-09', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10410, 10, 3, '2020-01-10', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10411, 10, 9, '2020-01-10', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10412, 87, 8, '2020-01-13', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10413, 41, 3, '2020-01-14', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10414, 21, 2, '2020-01-14', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10415, 36, 3, '2020-01-15', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10416, 87, 8, '2020-01-16', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10417, 73, 4, '2020-01-16', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10418, 63, 4, '2020-01-17', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10419, 68, 4, '2020-01-20', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10420, 88, 3, '2020-01-21', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10421, 61, 8, '2020-01-21', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10422, 27, 2, '2020-01-22', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10423, 31, 6, '2020-01-23', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10424, 51, 7, '2020-01-23', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10425, 41, 6, '2020-01-24', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10426, 29, 4, '2020-01-27', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10427, 59, 4, '2020-01-27', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10428, 66, 7, '2020-01-28', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10429, 37, 3, '2020-01-29', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10430, 20, 4, '2020-01-30', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10431, 10, 4, '2020-01-30', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10432, 75, 3, '2020-01-31', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10433, 60, 3, '2020-02-03', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10434, 24, 3, '2020-02-03', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10435, 16, 8, '2020-02-04', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10436, 7, 3, '2020-02-05', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10437, 87, 8, '2020-02-05', 1);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10438, 79, 3, '2020-02-06', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10439, 51, 6, '2020-02-07', 3);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10440, 71, 4, '2020-02-10', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10441, 55, 3, '2020-02-10', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10442, 20, 3, '2020-02-11', 2);
INSERT INTO Donhang (DonhangID, KhachhangID, NhanvienID, Ngaydathang, ShipperID) VALUES (10443, 66, 8, '2020-02-12', 1);

-- Table: DonhangChitiet
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (1, 10248, 11, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (2, 10248, 42, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (3, 10248, 72, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (4, 10249, 14, 9);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (5, 10249, 51, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (6, 10250, 41, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (7, 10250, 51, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (8, 10250, 65, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (9, 10251, 22, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (10, 10251, 57, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (11, 10251, 65, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (12, 10252, 20, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (13, 10252, 33, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (14, 10252, 60, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (15, 10253, 31, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (16, 10253, 39, 42);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (17, 10253, 49, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (18, 10254, 24, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (19, 10254, 55, 21);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (20, 10254, 74, 21);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (21, 10255, 2, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (22, 10255, 16, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (23, 10255, 36, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (24, 10255, 59, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (25, 10256, 53, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (26, 10256, 77, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (27, 10257, 27, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (28, 10257, 39, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (29, 10257, 77, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (30, 10258, 2, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (31, 10258, 5, 65);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (32, 10258, 32, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (33, 10259, 21, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (34, 10259, 37, 1);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (35, 10260, 41, 16);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (36, 10260, 57, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (37, 10260, 62, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (38, 10260, 70, 21);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (39, 10261, 21, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (40, 10261, 35, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (41, 10262, 5, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (42, 10262, 7, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (43, 10262, 56, 2);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (44, 10263, 16, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (45, 10263, 24, 28);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (46, 10263, 30, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (47, 10263, 74, 36);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (48, 10264, 2, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (49, 10264, 41, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (50, 10265, 17, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (51, 10265, 70, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (52, 10266, 12, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (53, 10267, 40, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (54, 10267, 59, 70);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (55, 10267, 76, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (56, 10268, 29, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (57, 10268, 72, 4);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (58, 10269, 33, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (59, 10269, 72, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (60, 10270, 36, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (61, 10270, 43, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (62, 10271, 33, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (63, 10272, 20, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (64, 10272, 31, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (65, 10272, 72, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (66, 10273, 10, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (67, 10273, 31, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (68, 10273, 33, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (69, 10273, 40, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (70, 10273, 76, 33);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (71, 10274, 71, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (72, 10274, 72, 7);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (73, 10275, 24, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (74, 10275, 59, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (75, 10276, 10, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (76, 10276, 13, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (77, 10277, 28, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (78, 10277, 62, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (79, 10278, 44, 16);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (80, 10278, 59, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (81, 10278, 63, 8);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (82, 10278, 73, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (83, 10279, 17, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (84, 10280, 24, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (85, 10280, 55, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (86, 10280, 75, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (87, 10281, 19, 1);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (88, 10281, 24, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (89, 10281, 35, 4);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (90, 10282, 30, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (91, 10282, 57, 2);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (92, 10283, 15, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (93, 10283, 19, 18);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (94, 10283, 60, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (95, 10283, 72, 3);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (96, 10284, 27, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (97, 10284, 44, 21);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (98, 10284, 60, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (99, 10284, 67, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (100, 10285, 1, 45);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (101, 10285, 40, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (102, 10285, 53, 36);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (103, 10286, 35, 100);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (104, 10286, 62, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (105, 10287, 16, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (106, 10287, 34, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (107, 10287, 46, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (108, 10288, 54, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (109, 10288, 68, 3);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (110, 10289, 3, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (111, 10289, 64, 9);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (112, 10290, 5, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (113, 10290, 29, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (114, 10290, 49, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (115, 10290, 77, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (116, 10291, 13, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (117, 10291, 44, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (118, 10291, 51, 2);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (119, 10292, 20, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (120, 10293, 18, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (121, 10293, 24, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (122, 10293, 63, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (123, 10293, 75, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (124, 10294, 1, 18);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (125, 10294, 17, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (126, 10294, 43, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (127, 10294, 60, 21);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (128, 10294, 75, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (129, 10295, 56, 4);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (130, 10296, 11, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (131, 10296, 16, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (132, 10296, 69, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (133, 10297, 39, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (134, 10297, 72, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (135, 10298, 2, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (136, 10298, 36, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (137, 10298, 59, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (138, 10298, 62, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (139, 10299, 19, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (140, 10299, 70, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (141, 10300, 66, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (142, 10300, 68, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (143, 10301, 40, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (144, 10301, 56, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (145, 10302, 17, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (146, 10302, 28, 28);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (147, 10302, 43, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (148, 10303, 40, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (149, 10303, 65, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (150, 10303, 68, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (151, 10304, 49, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (152, 10304, 59, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (153, 10304, 71, 2);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (154, 10305, 18, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (155, 10305, 29, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (156, 10305, 39, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (157, 10306, 30, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (158, 10306, 53, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (159, 10306, 54, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (160, 10307, 62, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (161, 10307, 68, 3);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (162, 10308, 69, 1);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (163, 10308, 70, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (164, 10309, 4, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (165, 10309, 6, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (166, 10309, 42, 2);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (167, 10309, 43, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (168, 10309, 71, 3);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (169, 10310, 16, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (170, 10310, 62, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (171, 10311, 42, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (172, 10311, 69, 7);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (173, 10312, 28, 4);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (174, 10312, 43, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (175, 10312, 53, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (176, 10312, 75, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (177, 10313, 36, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (178, 10314, 32, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (179, 10314, 58, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (180, 10314, 62, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (181, 10315, 34, 14);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (182, 10315, 70, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (183, 10316, 41, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (184, 10316, 62, 70);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (185, 10317, 1, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (186, 10318, 41, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (187, 10318, 76, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (188, 10319, 17, 8);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (189, 10319, 28, 14);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (190, 10319, 76, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (191, 10320, 71, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (192, 10321, 35, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (193, 10322, 52, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (194, 10323, 15, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (195, 10323, 25, 4);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (196, 10323, 39, 4);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (197, 10324, 16, 21);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (198, 10324, 35, 70);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (199, 10324, 46, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (200, 10324, 59, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (201, 10324, 63, 80);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (202, 10325, 6, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (203, 10325, 13, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (204, 10325, 14, 9);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (205, 10325, 31, 4);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (206, 10325, 72, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (207, 10326, 4, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (208, 10326, 57, 16);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (209, 10326, 75, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (210, 10327, 2, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (211, 10327, 11, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (212, 10327, 30, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (213, 10327, 58, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (214, 10328, 59, 9);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (215, 10328, 65, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (216, 10328, 68, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (217, 10329, 19, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (218, 10329, 30, 8);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (219, 10329, 38, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (220, 10329, 56, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (221, 10330, 26, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (222, 10330, 72, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (223, 10331, 54, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (224, 10332, 18, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (225, 10332, 42, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (226, 10332, 47, 16);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (227, 10333, 14, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (228, 10333, 21, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (229, 10333, 71, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (230, 10334, 52, 8);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (231, 10334, 68, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (232, 10335, 2, 7);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (233, 10335, 31, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (234, 10335, 32, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (235, 10335, 51, 48);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (236, 10336, 4, 18);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (237, 10337, 23, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (238, 10337, 26, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (239, 10337, 36, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (240, 10337, 37, 28);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (241, 10337, 72, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (242, 10338, 17, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (243, 10338, 30, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (244, 10339, 4, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (245, 10339, 17, 70);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (246, 10339, 62, 28);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (247, 10340, 18, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (248, 10340, 41, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (249, 10340, 43, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (250, 10341, 33, 8);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (251, 10341, 59, 9);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (252, 10342, 2, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (253, 10342, 31, 56);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (254, 10342, 36, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (255, 10342, 55, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (256, 10343, 64, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (257, 10343, 68, 4);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (258, 10343, 76, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (259, 10344, 4, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (260, 10344, 8, 70);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (261, 10345, 8, 70);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (262, 10345, 19, 80);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (263, 10345, 42, 9);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (264, 10346, 17, 36);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (265, 10346, 56, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (266, 10347, 25, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (267, 10347, 39, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (268, 10347, 40, 4);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (269, 10347, 75, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (270, 10348, 1, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (271, 10348, 23, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (272, 10349, 54, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (273, 10350, 50, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (274, 10350, 69, 18);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (275, 10351, 38, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (276, 10351, 41, 13);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (277, 10351, 44, 77);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (278, 10351, 65, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (279, 10352, 24, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (280, 10352, 54, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (281, 10353, 11, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (282, 10353, 38, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (283, 10354, 1, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (284, 10354, 29, 4);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (285, 10355, 24, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (286, 10355, 57, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (287, 10356, 31, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (288, 10356, 55, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (289, 10356, 69, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (290, 10357, 10, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (291, 10357, 26, 16);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (292, 10357, 60, 8);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (293, 10358, 24, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (294, 10358, 34, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (295, 10358, 36, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (296, 10359, 16, 56);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (297, 10359, 31, 70);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (298, 10359, 60, 80);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (299, 10360, 28, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (300, 10360, 29, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (301, 10360, 38, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (302, 10360, 49, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (303, 10360, 54, 28);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (304, 10361, 39, 54);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (305, 10361, 60, 55);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (306, 10362, 25, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (307, 10362, 51, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (308, 10362, 54, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (309, 10363, 31, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (310, 10363, 75, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (311, 10363, 76, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (312, 10364, 69, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (313, 10364, 71, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (314, 10365, 11, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (315, 10366, 65, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (316, 10366, 77, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (317, 10367, 34, 36);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (318, 10367, 54, 18);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (319, 10367, 65, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (320, 10367, 77, 7);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (321, 10368, 21, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (322, 10368, 28, 13);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (323, 10368, 57, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (324, 10368, 64, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (325, 10369, 29, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (326, 10369, 56, 18);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (327, 10370, 1, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (328, 10370, 64, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (329, 10370, 74, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (330, 10371, 36, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (331, 10372, 20, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (332, 10372, 38, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (333, 10372, 60, 70);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (334, 10372, 72, 42);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (335, 10373, 58, 80);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (336, 10373, 71, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (337, 10374, 31, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (338, 10374, 58, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (339, 10375, 14, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (340, 10375, 54, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (341, 10376, 31, 42);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (342, 10377, 28, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (343, 10377, 39, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (344, 10378, 71, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (345, 10379, 41, 8);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (346, 10379, 63, 16);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (347, 10379, 65, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (348, 10380, 30, 18);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (349, 10380, 53, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (350, 10380, 60, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (351, 10380, 70, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (352, 10381, 74, 14);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (353, 10382, 5, 32);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (354, 10382, 18, 9);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (355, 10382, 29, 14);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (356, 10382, 33, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (357, 10382, 74, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (358, 10383, 13, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (359, 10383, 50, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (360, 10383, 56, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (361, 10384, 20, 28);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (362, 10384, 60, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (363, 10385, 7, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (364, 10385, 60, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (365, 10385, 68, 8);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (366, 10386, 24, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (367, 10386, 34, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (368, 10387, 24, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (369, 10387, 28, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (370, 10387, 59, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (371, 10387, 71, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (372, 10388, 45, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (373, 10388, 52, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (374, 10388, 53, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (375, 10389, 10, 16);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (376, 10389, 55, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (377, 10389, 62, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (378, 10389, 70, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (379, 10390, 31, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (380, 10390, 35, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (381, 10390, 46, 45);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (382, 10390, 72, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (383, 10391, 13, 18);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (384, 10392, 69, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (385, 10393, 2, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (386, 10393, 14, 42);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (387, 10393, 25, 7);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (388, 10393, 26, 70);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (389, 10393, 31, 32);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (390, 10394, 13, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (391, 10394, 62, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (392, 10395, 46, 28);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (393, 10395, 53, 70);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (394, 10395, 69, 8);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (395, 10396, 23, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (396, 10396, 71, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (397, 10396, 72, 21);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (398, 10397, 21, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (399, 10397, 51, 18);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (400, 10398, 35, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (401, 10398, 55, 120);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (402, 10399, 68, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (403, 10399, 71, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (404, 10399, 76, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (405, 10399, 77, 14);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (406, 10400, 29, 21);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (407, 10400, 35, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (408, 10400, 49, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (409, 10401, 30, 18);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (410, 10401, 56, 70);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (411, 10401, 65, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (412, 10401, 71, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (413, 10402, 23, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (414, 10402, 63, 65);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (415, 10403, 16, 21);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (416, 10403, 48, 70);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (417, 10404, 26, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (418, 10404, 42, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (419, 10404, 49, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (420, 10405, 3, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (421, 10406, 1, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (422, 10406, 21, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (423, 10406, 28, 42);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (424, 10406, 36, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (425, 10406, 40, 2);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (426, 10407, 11, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (427, 10407, 69, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (428, 10407, 71, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (429, 10408, 37, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (430, 10408, 54, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (431, 10408, 62, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (432, 10409, 14, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (433, 10409, 21, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (434, 10410, 33, 49);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (435, 10410, 59, 16);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (436, 10411, 41, 25);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (437, 10411, 44, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (438, 10411, 59, 9);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (439, 10412, 14, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (440, 10413, 1, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (441, 10413, 62, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (442, 10413, 76, 14);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (443, 10414, 19, 18);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (444, 10414, 33, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (445, 10415, 17, 2);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (446, 10415, 33, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (447, 10416, 19, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (448, 10416, 53, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (449, 10416, 57, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (450, 10417, 38, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (451, 10417, 46, 2);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (452, 10417, 68, 36);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (453, 10417, 77, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (454, 10418, 2, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (455, 10418, 47, 55);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (456, 10418, 61, 16);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (457, 10418, 74, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (458, 10419, 60, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (459, 10419, 69, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (460, 10420, 9, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (461, 10420, 13, 2);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (462, 10420, 70, 8);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (463, 10420, 73, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (464, 10421, 19, 4);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (465, 10421, 26, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (466, 10421, 53, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (467, 10421, 77, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (468, 10422, 26, 2);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (469, 10423, 31, 14);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (470, 10423, 59, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (471, 10424, 35, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (472, 10424, 38, 49);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (473, 10424, 68, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (474, 10425, 55, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (475, 10425, 76, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (476, 10426, 56, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (477, 10426, 64, 7);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (478, 10427, 14, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (479, 10428, 46, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (480, 10429, 50, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (481, 10429, 63, 35);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (482, 10430, 17, 45);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (483, 10430, 21, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (484, 10430, 56, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (485, 10430, 59, 70);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (486, 10431, 17, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (487, 10431, 40, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (488, 10431, 47, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (489, 10432, 26, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (490, 10432, 54, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (491, 10433, 56, 28);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (492, 10434, 11, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (493, 10434, 76, 18);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (494, 10435, 2, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (495, 10435, 22, 12);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (496, 10435, 72, 10);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (497, 10436, 46, 5);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (498, 10436, 56, 40);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (499, 10436, 64, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (500, 10436, 75, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (501, 10437, 53, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (502, 10438, 19, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (503, 10438, 34, 20);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (504, 10438, 57, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (505, 10439, 12, 15);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (506, 10439, 16, 16);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (507, 10439, 64, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (508, 10439, 74, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (509, 10440, 2, 45);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (510, 10440, 16, 49);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (511, 10440, 29, 24);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (512, 10440, 61, 90);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (513, 10441, 27, 50);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (514, 10442, 11, 30);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (515, 10442, 54, 80);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (516, 10442, 66, 60);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (517, 10443, 11, 6);
INSERT INTO DonhangChitiet (DonhangChitietID, DonhangID, SanphamID, Soluong) VALUES (518, 10443, 28, 12);


-- Table: Khachhang
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (1, 'Đặng Tuấn Anh', 'Đặng Tuấn Anh', 'nkhbiq Bà Rịa - Vũng Tàu', 'Bà Rịa - Vũng Tàu', '222', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (2, 'Hoàng Đức Anh', 'Hoàng Đức Anh', 'u Kiên Giang', 'Kiên Giang', '100', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (3, 'Lưu Trang Anh', 'Lưu Trang Anh', 'h Gia Lai', 'Gia Lai', '222', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (4, 'Phạm Hoàng Anh', 'Phạm Hoàng Anh', 'bo Sơn La', 'Sơn La', '100', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (5, 'Đỗ Hoàng Gia Bảo', 'Đỗ Hoàng Gia Bảo', 'dpbzwnf ﻿An Giang', 'An Giang', '100', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (6, 'Trần Thị Minh Châu', 'Trần Thị Minh Châu', 'sizxey Hưng Yên', 'Hưng Yên', '100', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (7, 'Tăng Phương Chi', 'Tăng Phương Chi', 'g Hải Dương', 'Hải Dương', '888', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (8, 'Phạm Tiến Dũng', 'Phạm Tiến Dũng', 'isbk Nghệ An', 'Nghệ An', '666', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (9, 'Nguyễn Thái Dương', 'Nguyễn Thái Dương', 'mnn Bạc Liêu', 'Bạc Liêu', '222', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (10, 'Trần An Dương', 'Trần An Dương', 'kh Lâm Đồng', 'Lâm Đồng', '100', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (11, 'Mạc Trung Đức', 'Mạc Trung Đức', 'ivwfcu Đồng Nai', 'Đồng Nai', '500', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (12, 'Vũ Hương Giang', 'Vũ Hương Giang', 'lz Hà Tĩnh', 'Hà Tĩnh', '777', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (13, 'Nguyễn Thị Ngân Hà', 'Nguyễn Thị Ngân Hà', 'uklfrhrq Vĩnh Long', 'Vĩnh Long', '100', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (14, 'Nguyễn Lê Hiếu', 'Nguyễn Lê Hiếu', 'giwumbyj Bình Thuận', 'Bình Thuận', '999', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (15, 'Nguyễn Lê Hiếu', 'Nguyễn Lê Hiếu', 'ffc Cà Mau', 'Cà Mau', '100', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (16, 'Phạm Xuân Hòa', 'Phạm Xuân Hòa', 'nfxh Lào Cai', 'Lào Cai', '222', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (17, 'Họ và tên học sinh', 'Họ và tên học sinh', 'yxtniqbt Khánh Hòa', 'Khánh Hòa', '100', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (18, 'Nguyễn Hùng Anh', 'Nguyễn Hùng Anh', 'd Đắk Lắk', 'Đắk Lắk', '200', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (19, 'Nguyễn Ngọc Anh', 'Nguyễn Ngọc Anh', 'zsb Bình Dương', 'Bình Dương', '777', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (20, 'Mai Tùng Bách', 'Mai Tùng Bách', 'fxrtrx Đồng Tháp', 'Đồng Tháp', '100', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (21, 'Nguyễn Trần Bình', 'Nguyễn Trần Bình', 'b Thừa Thiên Huế', 'Thừa Thiên Huế', '666', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (22, 'Vũ Điệp Chi', 'Vũ Điệp Chi', 'cchw Cà Mau', 'Cà Mau', '200', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (23, 'Phạm Văn Đạt', 'Phạm Văn Đạt', 'ij Nam Định', 'Nam Định', '455', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (24, 'Hoàng An Đông', 'Hoàng An Đông', 'b Lâm Đồng', 'Lâm Đồng', '222', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (25, 'Vũ Trung Đức', 'Vũ Trung Đức', 'bvny Cao Bằng', 'Cao Bằng', '300', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (26, 'Phí Vũ Trí Đức', 'Phí Vũ Trí Đức', 'jfmmxqhk Tây Ninh', 'Tây Ninh', '222', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (27, 'Đặng Gia Hân', 'Đặng Gia Hân', 'lgomcta Bắc Kạn', 'Bắc Kạn', '222', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (28, 'Lưu Ngọc Hiền', 'Lưu Ngọc Hiền', 'gxjdbeiy Hà Giang', 'Hà Giang', '222', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (29, 'Phạm Ngọc Hiếu', 'Phạm Ngọc Hiếu', 'uz Sóc Trăng', 'Sóc Trăng', '500', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (30, 'Phạm Sỹ Hiếu', 'Phạm Sỹ Hiếu', 'f Quảng Ninh', 'Quảng Ninh', '300', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (31, 'Phạm Phương Hoa', 'Phạm Phương Hoa', 'fddehn Quảng Trị', 'Quảng Trị', '500', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (32, 'Vũ Đức Huy', 'Vũ Đức Huy', 'pjchwptz Bình Thuận', 'Bình Thuận', '100', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (33, 'Vũ Thanh Huyền', 'Vũ Thanh Huyền', 'hkfqpjnc Hà Giang', 'Hà Giang', '455', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (34, 'Phạm Thu Huyền', 'Phạm Thu Huyền', 'k Quảng Ngãi', 'Quảng Ngãi', '200', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (35, 'Nguyễn Tuấn Hưng', 'Nguyễn Tuấn Hưng', 'clroobs Thái Nguyên', 'Thái Nguyên', '222', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (36, 'Trần Đức Hưng', 'Trần Đức Hưng', 'tdhkypf Hậu Giang', 'Hậu Giang', '999', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (37, 'Nguyễn Tiến Hưng', 'Nguyễn Tiến Hưng', 'tfnduv Tiền Giang', 'Tiền Giang', '777', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (38, 'Lê Nguyễn Diệu Hương', 'Lê Nguyễn Diệu Hương', 'mql Hòa Bình', 'Hòa Bình', '888', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (39, 'Nguyễn Hữu Ngọc Khánh', 'Nguyễn Hữu Ngọc Khánh', 'nwsh Cao Bằng', 'Cao Bằng', '100', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (40, 'Bùi Nam Khánh', 'Bùi Nam Khánh', 'piii Lào Cai', 'Lào Cai', '222', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (41, 'Đinh Ngọc Khánh', 'Đinh Ngọc Khánh', 'cctzlelo Bình Dương', 'Bình Dương', '999', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (42, 'Hồ Nguyễn Minh Khuê', 'Hồ Nguyễn Minh Khuê', 'eca Hưng Yên', 'Hưng Yên', '999', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (43, 'Phạm Vũ Diệp Lam', 'Phạm Vũ Diệp Lam', 'qqebgrj Long An', 'Long An', '222', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (44, 'Đinh Hoàng Tùng Lâm', 'Đinh Hoàng Tùng Lâm', 'gjorbv Bình Phước', 'Bình Phước', '100', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (45, 'Lê Quang Long', 'Lê Quang Long', 'rpm Hậu Giang', 'Hậu Giang', '777', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (46, 'Phạm Thị Phương Mai', 'Phạm Thị Phương Mai', 'za Ninh Thuận', 'Ninh Thuận', '888', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (47, 'Lê Trần Tuấn Minh', 'Lê Trần Tuấn Minh', 'qnnefkav Hà Nam', 'Hà Nam', '222', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (48, 'Nguyễn Thị Bích Ngọc', 'Nguyễn Thị Bích Ngọc', 'gqc Bắc Giang', 'Bắc Giang', '100', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (49, 'Lê Trung Nguyên', 'Lê Trung Nguyên', 'azfzd Hà Tĩnh', 'Hà Tĩnh', '455', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (50, 'Lê Quỳnh Nhi', 'Lê Quỳnh Nhi', 'eqauglc Hải Dương', 'Hải Dương', '666', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (51, 'Nguyễn Tuyết Anh Nhi', 'Nguyễn Tuyết Anh Nhi', 'aep Thanh Hóa', 'Thanh Hóa', '455', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (52, 'Đinh Phú Sang', 'Đinh Phú Sang', 'lasrfx Bình Định', 'Bình Định', '888', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (53, 'Đào Duy Thái', 'Đào Duy Thái', 'rxbhgrh Bạc Liêu', 'Bạc Liêu', '455', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (54, 'Vũ Minh Thư', 'Vũ Minh Thư', 'kgy Hà Nam', 'Hà Nam', '666', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (55, 'Nguyễn Mạnh Hùng', 'Nguyễn Mạnh Hùng', 'g Bình Phước', 'Bình Phước', '888', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (56, 'Phạm Thị Bích Ngọc', 'Phạm Thị Bích Ngọc', 'susjs Quảng Bình', 'Quảng Bình', '100', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (57, 'Nguyễn Thúy Hảo', 'Nguyễn Thúy Hảo', 'p Bắc Kạn', 'Bắc Kạn', '222', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (58, 'Trần Thị Hường', 'Trần Thị Hường', 'hyc Kiên Giang', 'Kiên Giang', '300', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (59, 'Phạm Thị Phượng', 'Phạm Thị Phượng', 'ruol Ninh Bình', 'Ninh Bình', '777', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (60, 'Nguyễn Thị Bích Thúy', 'Nguyễn Thị Bích Thúy', 'tcv Quảng Bình', 'Quảng Bình', '500', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (61, 'Vũ Thị Văn Thường', 'Vũ Thị Văn Thường', 'lwi Đắk Lắk', 'Đắk Lắk', '500', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (62, 'Đoàn Thị Thu Huyền', 'Đoàn Thị Thu Huyền', 'hqt Bắc Ninh', 'Bắc Ninh', '666', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (63, 'Vũ Thị Kim Chung', 'Vũ Thị Kim Chung', 'qrydwfap Đồng Nai', 'Đồng Nai', '222', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (64, 'Nguyễn Thu Hương', 'Nguyễn Thu Hương', 'xw Bắc Ninh', 'Bắc Ninh', '222', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (65, 'Nguyễn Thị Hương', 'Nguyễn Thị Hương', 'ndwdbnus Phú Thọ', 'Phú Thọ', '500', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (66, 'Vũ Thị Hưng', 'Vũ Thị Hưng', 'rtwu Đồng Tháp', 'Đồng Tháp', '222', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (67, 'Nguyễn Thị Hường', 'Nguyễn Thị Hường', 'xa Phú Yên', 'Phú Yên', '300', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (68, 'Vũ Thị Phương Mai', 'Vũ Thị Phương Mai', 'erqcp Điện Biên', 'Điện Biên', '100', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (69, 'Nguyễn Thị Thắm', 'Nguyễn Thị Thắm', 'qjutk Trà Vinh', 'Trà Vinh', '888', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (70, 'Đoàn Thị Hương', 'Đoàn Thị Hương', 'rq Bến Tre', 'Bến Tre', '777', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (71, 'Phạm Thu Hương', 'Phạm Thu Hương', 'nv Quảng Nam', 'Quảng Nam', '100', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (72, 'Ngô Thị Minh Phương', 'Ngô Thị Minh Phương', 'qwzj Thái Bình', 'Thái Bình', '222', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (73, 'Nguyễn Thị Hằng Nga', 'Nguyễn Thị Hằng Nga', 'hgbkjrn Yên Bái', 'Yên Bái', '200', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (74, 'Nguyễn Diệu Hương', 'Nguyễn Diệu Hương', 'mamqnydv Đắk Nông', 'Đắk Nông', '300', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (75, 'Nguyễn Thu Hoài', 'Nguyễn Thu Hoài', 'opuza Bến Tre', 'Bến Tre', '455', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (76, 'Nguyễn Thị Lý', 'Nguyễn Thị Lý', 'jnu Vĩnh Phúc', 'Vĩnh Phúc', '100', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (77, 'Hoàng Thị Hương', 'Hoàng Thị Hương', 'yzsq Kon Tum', 'Kon Tum', '200', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (78, 'Trần Thanh Diệp', 'Trần Thanh Diệp', 'l Kon Tum', 'Kon Tum', '500', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (79, 'Nguyễn Quỳnh Giang', 'Nguyễn Quỳnh Giang', 'npkxbcod Bình Định', 'Bình Định', '666', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (80, 'Vũ Thị Thu Hương', 'Vũ Thị Thu Hương', 'r Đắk Nông', 'Đắk Nông', '500', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (81, 'Hoàng Thị Bích Ngọc', 'Hoàng Thị Bích Ngọc', 'a Lai Châu', 'Lai Châu', '100', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (82, 'Trần Thị Thanh Tâm', 'Trần Thị Thanh Tâm', 'xonov Hòa Bình', 'Hòa Bình', '100', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (83, 'Nguyễn Thị Phương', 'Nguyễn Thị Phương', 'zokhkh Tuyên Quang', 'Tuyên Quang', '999', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (84, 'Trần Diễm Thùy Dương', 'Trần Diễm Thùy Dương', 'xsyfrb Lai Châu', 'Lai Châu', '500', 'Anh');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (85, 'Phạm Thị Kim Phúc', 'Phạm Thị Kim Phúc', 'epwvs Phú Thọ', 'Phú Thọ', '999', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (86, 'Trần Thị Hảo', 'Trần Thị Hảo', 'ir Khánh Hòa', 'Khánh Hòa', '200', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (87, 'Bùi Thị Kim Oanh', 'Bùi Thị Kim Oanh', 'lghhp Lạng Sơn', 'Lạng Sơn', '222', 'Việt Nam');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (88, 'Phạm Ánh Tuyết', 'Phạm Ánh Tuyết', 'jz Lạng Sơn', 'Lạng Sơn', '222', 'Đức');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (89, 'Đặng Thùy Vân', 'Đặng Thùy Vân', 'isw Bắc Giang', 'Bắc Giang', '222', 'Mỹ');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (90, 'Nguyễn Bích Thủy', 'Nguyễn Bích Thủy', 'dtfbfx Điện Biên', 'Điện Biên', '500', 'Ý');
INSERT INTO Khachhang (KhachhangID, HoTen, TenLienLac, Diachi, Thanhpho, MaBuudien, QuocGia) VALUES (91, 'Vũ Thế Hưng', 'Vũ Thế Hưng', 'gqflx Gia Lai', 'Gia Lai', '222', 'Ý');

-- Table: Nhanvien
INSERT INTO Nhanvien (NhanviennID, Ten, Ho, NgaySinh, Anh, Ghichu) VALUES (1, 'Bình', 'Trương Gia', '1990-12-08', '1.jpg', 'Ghi chú về nhân viên Bình: Nhiệt tình ...');
INSERT INTO Nhanvien (NhanviennID, Ten, Ho, NgaySinh, Anh, Ghichu) VALUES (2, 'Chi', 'Lương Vũ Diệp', '1991-02-19', '2.jpg', 'Ghi chú về nhân viên Chi ...');
INSERT INTO Nhanvien (NhanviennID, Ten, Ho, NgaySinh, Anh, Ghichu) VALUES (3, 'Đức', 'Vũ Minh', '1992-08-30', '3.jpg', 'Ghi chú về nhân viên Đức');
INSERT INTO Nhanvien (NhanviennID, Ten, Ho, NgaySinh, Anh, Ghichu) VALUES (4, 'Hiền', 'Lý Vi', '1995-09-19', '4.jpg', 'Ghi chú về nhân viên Hiền');
INSERT INTO Nhanvien (NhanviennID, Ten, Ho, NgaySinh, Anh, Ghichu) VALUES (5, 'Huyền', 'Mai Khánh', '1995-03-04', '5.jpg', 'Ghi chú về nhân viên Huyền');
INSERT INTO Nhanvien (NhanviennID, Ten, Ho, NgaySinh, Anh, Ghichu) VALUES (6, 'Minh', 'Lương Bình', '1993-07-02', '6.jpg', 'Ghi chú về nhân viên Minh');
INSERT INTO Nhanvien (NhanviennID, Ten, Ho, NgaySinh, Anh, Ghichu) VALUES (7, 'Ninh', 'Nguyễn Quang', '1990-05-29', '7.jpg', 'Ghi chú về nhân viên Ninh');
INSERT INTO Nhanvien (NhanviennID, Ten, Ho, NgaySinh, Anh, Ghichu) VALUES (8, 'Như', 'Đỗ Tâm', '1998-01-09', '8.jpg', 'Ghi chú về nhân viên Như');
INSERT INTO Nhanvien (NhanviennID, Ten, Ho, NgaySinh, Anh, Ghichu) VALUES (9, 'Tùng', 'Nguyễn Mạnh', '1999-07-02', '9.jpg', 'Ghi chú về nhân viên Tùng');
INSERT INTO Nhanvien (NhanviennID, Ten, Ho, NgaySinh, Anh, Ghichu) VALUES (10, 'Anh', 'Lương Phương', '1998-09-19', '10.jpg', 'Ghi chú về nhân viên Anh');



-- Table: Sanpham
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (1, 'Bia 333', 1, 1, 'thùng', 300000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (2, 'Nước ngọt Coca cola', 1, 1, 'thùng', 200000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (3, 'Tương Ớt Chin-Su (250g)', 1, 2, 'chai', 12000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (4, 'Dầu Đậu Nành Simply', 2, 2, 'chai', 247000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (5, 'Bột cần tây sấy lạnh', 2, 2, 'túi', 145000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (6, 'Giấm táo hữu cơ Organic Bragg', 3, 2, 'túi', 136000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (7, 'Mít sấy thăng hoa', 3, 7, 'túi', 30000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (8, 'Tương ớt Thái Long Hảo Hạng 250gr', 3, 2, 'chai', 25000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (9, 'Xúc Xích Dinh Dưỡng Thịt Heo Ponnie', 4, 6, 'túi', 16000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (10, 'Tôm thịt đông lạnh size 31/40 Đôi Đũa Vàng gói 450g', 4, 8, 'túi', 150000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (11, 'Combo 3 hộp phô mai Con Bò Cười', 5, 4, 'hộp', 109000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (12, 'Thùng 24 Hộp Sữa Đậu Đen', 5, 4, 'thùng', 300000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (13, 'Cá viên đông lạnh Home Food gói 500g', 6, 8, 'túi', 60000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (14, 'Mít sấy dẻo Nông Lâm Food', 6, 7, 'túi', 69000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (15, 'Dầu Ôliu Nguyên Chất Olivoilà', 6, 2, 'chai', 86000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (16, 'Hộp bánh Cookies Đại Phát (240g)', 7, 3, 'hộp', 280000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (17, 'Combo 5 hộp pate thịt gà và que cua', 7, 6, 'hộp', 175000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (18, 'Bào Ngư Hàn Quốc (Sống)', 7, 8, 'con', 68000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (19, 'Bánh Trứng tươi - Chà Bông KARO Richy', 8, 3, 'túi', 33000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (20, 'Bánh Gạo Hàn Quốc Nhỏ Richy', 8, 3, 'túi', 13000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (21, 'Bánh dừa nướng Bảo Linh', 8, 3, 'hộp', 20000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (22, 'Ngũ Cốc Sấy Khô Calbee', 9, 5, 'túi', 189000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (23, 'Bột ngũ cốc Damtuh Hàn Quốc', 9, 5, 'túi', 265000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (24, 'Lốc 6 Chai Olong Không Đường Tea+', 10, 1, 'lốc', 50000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (25, 'Bánh Bơ Trứng Richy', 11, 3, 'túi', 19000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (26, 'Bánh gạo chùm ngây vị sầu riêng Morice', 11, 3, 'túi', 17000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (27, 'Kẹo sâm Hamer Nhập khẩu Mỹ', 11, 3, 'hộp', 300000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (28, 'MÍT SẤY GIÒN 120g', 12, 7, 'túi', 37000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (29, 'Thịt hộp Heo 2 lát Master', 12, 6, 'hộp', 18000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (30, 'Tu Hài (Sống)', 13, 8, 'kg', 320000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (31, 'Thùng 12 Hộp Sữa Uống Tiệt Trùng', 14, 4, 'hộp', 350000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (32, 'Sữa bột tách kem A2 Úc', 14, 4, 'túi', 279000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (33, 'Sữa bột Goldcare Gain', 15, 4, 'chai', 234000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (34, 'Thùng Bia Heineken 24 Lon Thường', 16, 1, 'thùng', 395000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (35, 'Trà Hoa Cúc Hùng Phát hộp 25 gói x 2 g', 16, 1, 'hộp', 36000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (36, 'Ngao Hai Cồi (Sống)', 17, 8, 'kg', 280000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (37, 'Hàu Nhật Nguyên Con', 17, 8, 'kg', 250000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (38, 'Trà Hoa Cúc Hùng Phát hộp 25 gói x 2 g', 18, 1, 'gói', 32000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (39, 'NƯỚC TÁO ÉP NGUYÊN CHẤT REAL JUICE 2 LÍT', 18, 1, 'chai', 75000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (40, 'Cua Thịt Cà Mau (Kg)', 19, 8, 'kg', 500000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (41, 'Cá Saba Phile Tươi (Kg)', 19, 8, 'kg', 220000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (42, 'Ngũ cốc siêu dinh dưỡng', 20, 5, 'túi', 385000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (43, 'Trà Đào Sả Cozy - Lốc 4 hộp', 20, 1, 'lốc', 28000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (44, 'Dầu hạt cải nguyên chất nội địa Nhật Bản', 20, 2, 'chai', 134000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (45, 'Đầu Cá Hồi Tươi', 21, 8, 'kg', 220000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (46, 'Cá Cờ Kiếm Sushi', 21, 8, 'kg', 250000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (47, 'Bánh quy trứng muối Đài Loan', 22, 3, 'túi', 95000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (48, 'Kẹo Alpenliebe Hương Dâu Kem', 22, 3, 'túi', 12000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (49, 'Bánh Quy Bơ Danisa', 23, 3, 'hộp', 300000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (50, 'Bánh Quy Bơ Thập Cẩm Lu', 23, 3, 'túi', 140000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (51, 'Đồ ăn vặt Mít sấy', 24, 7, 'cân', 31000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (52, 'Túi 16 Gói Bột Ngũ Cốc Nestle', 24, 5, 'túi', 64000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (53, 'Thịt Hộp Tulip Pork Luncheon', 24, 6, 'hộp', 87000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (54, 'Khô Gà Lá Chanh Thượng Hạng', 25, 6, 'hộp', 68000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (55, 'Thịt heo bằm cay Weichuan', 25, 6, 'hộp', 45000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (56, 'Ngũ cốc siêu lợi sữa An Việt', 26, 5, 'hộp', 120000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (57, 'Bột ngũ cốc Calsome hương Vani', 26, 5, 'túi', 51000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (58, 'Cá Thu 1 nắng (Kg)', 27, 8, 'kg', 300000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (59, 'Sữa Bột Nguyên Kem Dutch Lady', 28, 4, 'hộp', 180000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (60, 'Sữa Bột Full Cream Devondale', 28, 4, 'túi', 269000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (61, 'Nước mắm truyền thống Lê Gia', 29, 2, 'chai', 89000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (62, 'Bánh Goute Hộp 8 Cái', 29, 3, 'hộp', 50000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (63, 'Nước Chấm Ông Tây Chai', 7, 2, 'chai', 15000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (64, 'Ngũ Cốc Dinh Dưỡng BEONE', 12, 5, 'hộp', 319000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (65, 'Dầu Ăn Tường An (5L)', 2, 2, 'chai', 180000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (66, 'Bột Ngọt Vedan 400g', 2, 2, 'túi', 30000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (67, 'Nước Gạo Hàn Quốc Sun-Hee chai 1,5L', 16, 1, 'chai', 49000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (68, 'Bánh Yến Mạch + mè đen Fine', 8, 3, 'hộp', 50000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (69, 'Sữa bột Suremilk Canxi', 15, 4, 'hộp', 270000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (70, 'Trà Lipton Nhãn Vàng 25 Túi/ Hộp', 7, 1, 'hộp', 33000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (71, 'Thùng 24 Hộp Sữa Tươi', 15, 4, 'thùng', 240000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (72, 'Sữa Hạt Hạnh Nhân Nguyên Chất', 14, 4, 'thùng', 105000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (73, 'Cá Hồi Phi Lê Tươi Nguyên Miếng', 17, 8, 'kg', 300000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (74, 'ĐẬU PHỘNG SẤY TỎI ỚT HIỆU TÂN LỘC', 4, 7, 'kg', 82000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (75, 'Thùng Sữa đậu nành Fami', 12, 1, 'thùng', 145000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (76, 'Trà Xanh Bao Thiếc Cầu Đất Farm', 23, 1, 'hộp', 42000);
INSERT INTO Sanpham (SanphamID, TenSanpham, CungcapID, DanhmucID, Donvi, Gia) VALUES (77, 'Hạt Nêm Knorr Từ Thịt Thăn', 12, 2, 'túi', 17000);


-- Table: Shippers
INSERT INTO Shippers (ShipperID, Hoten, Sodienthoai) VALUES (1, 'Grab', '984590840');
INSERT INTO Shippers (ShipperID, Hoten, Sodienthoai) VALUES (2, 'Bee', '348905444');
INSERT INTO Shippers (ShipperID, Hoten, Sodienthoai) VALUES (3, 'GoViet', '834905845');


select SanphamID, TenSanpham, Gia from Sanpham;

UPDATE  Sanpham SET Gia = Gia + 10000 WHERE SanphamID = 1;


CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS VALUES
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00),
(2, 'Khilan', 25, 'Delhi', 1500.00),
(3, 'Kaushik', 23, 'Kota', 2000.00),
(4, 'Chaitali', 25, 'Mumbai', 6500.00),
(5, 'Hardik', 27, 'Bhopal', 8500.00),
(6, 'Komal', 22, 'Hyderabad', 4500.00),
(7, 'Muffy', 24, 'Indore', 10000.00);

# delete all records in the CUSTOMERS table
DELETE FROM CUSTOMERS;

SELECT * FROM CUSTOMERS;

START TRANSACTION;
    UPDATE CUSTOMERS SET SALARY = 2000 WHERE ID = 1;
# If you do not want to commit the transaction, you can use the ROLLBACK statement.
COMMIT;
ROLLBACK;

SELECT * FROM CUSTOMERS;

# Save point command
DELETE FROM CUSTOMERS;

INSERT INTO CUSTOMERS VALUES
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00),
(2, 'Khilan', 25, 'Delhi', 1500.00),
(3, 'Kaushik', 23, 'Kota', 2000.00),
(4, 'Chaitali', 25, 'Mumbai', 6500.00),
(5, 'Hardik', 27, 'Bhopal', 8500.00),
(6, 'Komal', 22, 'Hyderabad', 4500.00),
(7, 'Muffy', 24, 'Indore', 10000.00);

SELECT * FROM CUSTOMERS;

START TRANSACTION;
    SAVEPOINT SP1;
    DELETE FROM CUSTOMERS WHERE ID = 1;

    SAVEPOINT SP2;

    DELETE FROM CUSTOMERS WHERE ID = 2;

    SAVEPOINT SP3;
    DELETE FROM CUSTOMERS WHERE ID = 3;

## Rollback to the savepoint SP3
    ROLLBACK TO SP2;

## Rollback to the savepoint SP2
    ROLLBACK TO SP3;

## RELEASE SAVEPOINT command
    RELEASE SAVEPOINT SP2;

    COMMIT;
