create database WEBKPI;
use WEBKPI;
create table role
(
	roleid int primary key,
    rolename nvarchar(100)
);
insert into role value(1,"Giảng Viên");
insert into role value(2,"Hiệu Trưởng");
insert into role value(3,"Trưởng Khoa");
insert into role value(4,"Trưởng Bộ Môn");
insert into role value(5,"Phòng TCCB");
insert into role value(6,"Admin");

create table users
(
	username char(20) primary key,
    pass char(20),
    hoten nvarchar(100),
    ngaysinh date,
    gioitinh bit,
    socmnd char(20),
    diachi nvarchar(500),
    sdt char(15),
    email char(100),
    ghichu nvarchar(500),
    roleid int,
    foreign key (roleid) references role(roleid)
);


create table bieumau
(
	mabieumau int primary key,
    tenbieumau nvarchar(100),
    namhoc char(50),
    nguoitao char(20),
    foreign key (nguoitao) references users(username)
) ;
create table nhomtieuchi
(
	manhomtc int primary key,
    tennhomtc nvarchar(100),
    mabieumau int ,
    foreign key (mabieumau) references bieumau(mabieumau)
);
create table tieuchi
(
	matieuchi int primary key,
    tentieuchi nvarchar(500),
    manhomtc int,
    mabieumau int,
    diemtudanhgia int,
    diemtruongbomon int,
    diemtruongkhoa int,
    diembgh int,
    foreign key (mabieumau) references bieumau(mabieumau),
    foreign key (manhomtc) references nhomtieuchi(manhomtc)
);