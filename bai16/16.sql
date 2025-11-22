-- 1. Bảng thể loại
CREATE TABLE IF NOT EXISTS the_loai (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_the_loai VARCHAR(50) NOT NULL
);

-- 2. Bảng vai trò
CREATE TABLE IF NOT EXISTS vai_tro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_vai_tro VARCHAR(20) NOT NULL
);

-- 3. Bảng quốc gia
CREATE TABLE IF NOT EXISTS quoc_gia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_quoc_gia VARCHAR(50) NOT NULL
);

-- 4. Bảng người dùng
CREATE TABLE IF NOT EXISTS nguoi_dung (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_dang_nhap VARCHAR(50) NOT NULL,
    mat_khau VARCHAR(50) NOT NULL,
    ho_ten VARCHAR(50),
    email VARCHAR(50),
    sdt VARCHAR(10),
    vai_tro_id INT,
    ngay_sinh DATETIME,
    FOREIGN KEY (vai_tro_id) REFERENCES vai_tro(id)
);

-- 5. Bảng phim
CREATE TABLE IF NOT EXISTS phim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_phim VARCHAR(255) NOT NULL,
    dao_dien_id INT,
    nam_phat_hanh INT,
    poster VARCHAR(255),
    quoc_gia_id INT,
    so_tap INT,
    trailer VARCHAR(255),
    mo_ta TEXT,
    FOREIGN KEY (dao_dien_id) REFERENCES nguoi_dung(id),
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(id)
);

-- 6. Bảng phim - diễn viên
CREATE TABLE IF NOT EXISTS phim_dien_vien (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT,
    dien_vien_id INT,
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (dien_vien_id) REFERENCES nguoi_dung(id)
);

-- 7. Bảng phim - thể loại
CREATE TABLE IF NOT EXISTS phim_the_loai (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT,
    the_loai_id INT,
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id)
);

-- 8. Bảng tập phim
CREATE TABLE IF NOT EXISTS tap_phim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    so_tap INT,
    tieu_de VARCHAR(255),
    phim_id INT,
    thoi_luong FLOAT,
    trailer VARCHAR(255),
    FOREIGN KEY (phim_id) REFERENCES phim(id)
);


('Phim 23', 4, 2012, 'phim23.jpg', 3, 1, 'https://example.com/trailer/p23', 'Mo ta phim 23'),
('Phim 24', 5, 2013, 'phim24.jpg', 4, 1, 'https://example.com/trailer/p24', 'Mo ta phim 24'),
('Phim 25', 6, 2014, 'phim25.jpg', 5, 1, 'https://example.com/trailer/p25', 'Mo ta phim 25'),
('Phim 26', 7, 2015, 'phim26.jpg', 6, 1, 'https://example.com/trailer/p26', 'Mo ta phim 26'),
('Phim 27', 8, 2016, 'phim27.jpg', 7, 1, 'https://example.com/trailer/p27', 'Mo ta phim 27'),
('Phim 28', 9, 2017, 'phim28.jpg', 8, 1, 'https://example.com/trailer/p28', 'Mo ta phim 28'),
('Phim 29', 10, 2018, 'phim29.jpg', 9, 1, 'https://example.com/trailer/p29', 'Mo ta phim 29'),
('Phim 30', 11, 2019, 'phim30.jpg', 10, 1, 'https://example.com/trailer/p30', 'Mo ta phim 30');

-- 6. phim_the_loai (mỗi phim 1–2 thể loại)
INSERT INTO phim_the_loai (phim_id, the_loai_id) VALUES
(1,1),(1,2),
(2,2),(2,3),
(3,2),
(4,1),
(5,5),
(6,5),
(7,1),(7,9),
(8,7),
(9,5),
(10,2),(10,9),
(11,1),
(12,4),
(13,7),
(14,2),
(15,3),
(16,1),
(17,5),
(18,7),
(19,1),(19,5),
(20,2),
(21,1),
(22,3),
(23,7),
(24,4),
(25,2),
(26,1),
(27,5),
(28,7),
(29,1),
(30,2);

-- 7. phim_dien_vien (mỗi phim 2 diễn viên: dùng id 12..30)
INSERT INTO phim_dien_vien (phim_id, dien_vien_id) VALUES
(1,12),(1,13),
(2,13),(2,14),
(3,14),(3,15),
(4,15),(4,16),
(5,16),(5,17),
(6,17),(6,18),
(7,18),(7,19),
(8,19),(8,20),
(9,20),(9,21),
(10,21),(10,22),
(11,22),(11,23),
(12,23),(12,24),
(13,24),(13,25),
(14,25),(14,26),
(15,26),(15,27),
(16,27),(16,28),
(17,28),(17,29),
(18,29),(18,30),
(19,12),(19,13),
(20,14),(20,15),
(21,16),(21,17),
(22,18),(22,19),
(23,20),(23,21),
(24,22),(24,23),
(25,24),(25,25),
(26,26),(26,27),
(27,28),(27,29),
(28,30),(28,12),
(29,13),(29,14),
(30,15),(30,16);

-- 8. tap_phim (5 phim đầu, mỗi phim 3 tập = 15 rows)
INSERT INTO tap_phim (so_tap, tieu_de, phim_id, thoi_luong, trailer) VALUES
(1,'Phim 1 - Tap 1',1,90,'https://example.com/trailer/p1_t1'),
(2,'Phim 1 - Tap 2',1,92,'https://example.com/trailer/p1_t2'),
(3,'Phim 1 - Tap 3',1,88,'https://example.com/trailer/p1_t3'),

(1,'Phim 2 - Tap 1',2,45,'https://example.com/trailer/p2_t1'),
(2,'Phim 2 - Tap 2',2,47,'https://example.com/trailer/p2_t2'),
(3,'Phim 2 - Tap 3',2,44,'https://example.com/trailer/p2_t3'),

(1,'Phim 3 - Tap 1',3,50,'https://example.com/trailer/p3_t1'),
(2,'Phim 3 - Tap 2',3,51,'https://example.com/trailer/p3_t2'),
(3,'Phim 3 - Tap 3',3,49,'https://example.com/trailer/p3_t3'),

(1,'Phim 4 - Tap 1',4,40,'https://example.com/trailer/p4_t1'),
(2,'Phim 4 - Tap 2',4,42,'https://example.com/trailer/p4_t2'),
(3,'Phim 4 - Tap 3',4,41,'https://example.com/trailer/p4_t3'),

(1,'Phim 5 - Tap 1',5,60,'https://example.com/trailer/p5_t1'),
(2,'Phim 5 - Tap 2',5,62,'https://example.com/trailer/p5_t2'),
(3,'Phim 5 - Tap 3',5,59,'https://example.com/trailer/p5_t3');