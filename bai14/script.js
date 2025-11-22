let danSachPhim = [
    {
    id:1,
    tenPhim:"mưa đỏ",
    namPhatHanh: 2025,
    tuoi:16,
    thoiLuong:2,
    quocGia:"Việt Nam",
    poster:"banner.jpg",
    theLoai : "phim chiếu rạp",
    },

    {
    id:2,
    tenPhim:"conan",
    namPhatHanh: 2023,
    tuoi:10,
    thoiLuong:1.5,
    quocGia:"Nhật Bản",
    poster:"bab.jpg",
    theLoai : "phim chiếu rạp",
    
}
];
function chonphim(idphim){
let phimHienTai = danhSachPhim[0];
  for (let i=0; i< danhSachPhim.length;i++) {
    if (danhSachPhim[i].id == idPhim){
        banner.style.backgroundImange = danhSachPhim[i].poster
    }
  }
}
