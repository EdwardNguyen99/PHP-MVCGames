-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 16, 2020 lúc 08:35 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhang1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL,
  `idDT` int(11) NOT NULL,
  `hoten` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `tieude` varchar(200) NOT NULL,
  `noidung` text NOT NULL,
  `ngay_comment` date DEFAULT NULL,
  `kiem_duyet` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `idDH` int(4) NOT NULL,
  `idUser` int(4) NOT NULL DEFAULT 0,
  `ThoiDiemDatHang` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TenNguoiNhan` varchar(100) NOT NULL DEFAULT '',
  `DTNguoiNhan` varchar(100) DEFAULT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `idPTTT` varchar(20) NOT NULL,
  `idPTGH` varchar(20) NOT NULL,
  `Tax` int(11) NOT NULL,
  `Shipping` int(11) NOT NULL,
  `DaXuLy` tinyint(1) NOT NULL DEFAULT 0,
  `GhiChu` varchar(255) NOT NULL DEFAULT '',
  `DaTraTien` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhangchitiet`
--

CREATE TABLE `donhangchitiet` (
  `idChiTiet` int(4) NOT NULL,
  `idDH` int(4) NOT NULL DEFAULT 0,
  `idDT` int(4) NOT NULL DEFAULT 0,
  `TenDT` varchar(255) NOT NULL,
  `SoLuong` int(4) NOT NULL DEFAULT 0,
  `Gia` int(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `games`
--

CREATE TABLE `games` (
  `idDT` int(12) NOT NULL,
  `idLoai` int(12) NOT NULL DEFAULT 0,
  `idCL` int(9) NOT NULL DEFAULT 0,
  `TenDT` varchar(100) NOT NULL DEFAULT '',
  `MoTa` varchar(255) NOT NULL DEFAULT '',
  `NgayCapNhat` date NOT NULL DEFAULT '0000-00-00',
  `Gia` int(11) NOT NULL DEFAULT 0,
  `GiaKM` int(11) NOT NULL,
  `urlHinh` varchar(255) NOT NULL,
  `baiviet` text DEFAULT NULL,
  `SoLanXem` int(4) DEFAULT 0,
  `SoLuongTonKho` int(4) DEFAULT 0,
  `GhiChu` varchar(255) DEFAULT NULL,
  `SoLanMua` int(4) DEFAULT 0,
  `AnHien` int(1) DEFAULT 1,
  `Hot` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `games`
--

INSERT INTO `games` (`idDT`, `idLoai`, `idCL`, `TenDT`, `MoTa`, `NgayCapNhat`, `Gia`, `GiaKM`, `urlHinh`, `baiviet`, `SoLanXem`, `SoLuongTonKho`, `GhiChu`, `SoLanMua`, `AnHien`, `Hot`) VALUES
(491, 44, 1, 'GOD OF WARS', ' ABCDEFGH', '2009-02-02', 1535900, 14591050, 'Images/13.jpg', '<h3 class=\"has-text-align-center\"><span style=\"text-decoration: underline;\">NHỮNG CƯ DÂN KÉM THÂN THIỆN XỨ LOUISIANA</span></h3>\r\n<div class=\"jeg_share_button share-float jeg_sticky_share clearfix share-monocrhome\"></div><div class=\"content-inner\">\r\n<h4>God of War là bản reboot đầu tiên với hướng tiếp cận nội dung hoàn toàn mới của series game phiêu lưu hành động &#8220;chặt chém&#8221; nổi tiếng suốt bao thế hệ PlayStation.</h4>\r\n<p>Thông tin God of War được reboot ban đầu khiến không ít người chơi và fan của series game đình đám này lo ngại, nhưng xem ra một tựa game lớn mang lại danh tiếng cho PlayStation 4 không thể bị xem nhẹ trước quyết định reboot này. Có thể nói đội ngũ phát triển đã làm rất tốt những gì cần làm, dù trò chơi vẫn không tránh khỏi vài vấn đề thiếu hoàn hảo. Dù vậy, điểm cộng đầu tiên là cho dù bạn đã từng chơi những phần chơi trước trong series game này hay chưa, thì vẫn có thể tiếp cận được với bản reboot này do mọi thứ đều theo hướng nội dung khác biệt so với các phần trước. Thay vì thần thoại Hy Lạp thì nội dung đã được chuyển sang thần thoại Bắc Âu.</p>', 116, 200, NULL, 112, 1, 1),
(492, 44, 1, 'NARUTO SHIPPUDEN', 'ABCDEF\r\n', '2009-02-02', 1300000, 12327730, 'Images/22.jpg', '</div></div><p style=\"text-align: justify\"><br />\r\nMột trong nhiều tựa game khởi đầu cho thế hệ này chính là <strong><a href=\"tags/naruto-x-boruto-ninja-voltage.39794/\" class=\"Tinhte_XenTag_TagLink\" target=\"_blank\"><b>Naruto X Boruto Ninja Voltage</b></a></strong> - phiên bản Mobile siêu độc do <a href=\"tags/bandai-namco.11216/\" class=\"Tinhte_XenTag_TagLink\" target=\"_blank\"><b>Bandai Namco</b></a> chính thức phát hành. Sau một thời gian dài ấp ủ, Naruto X Boruto Ninja Voltage đã được xác nhận là sẽ cập bến thị trường di động quốc tế trong tương lai gần. Game sẽ hiện diện trên cả hai nền tảng Android và iOS, cho phép đại đa số game thủ có thể thưởng thức game.<br />', 101, 200, NULL, 99, 1, 1),
(493, 44, 1, 'ONE PIECE', 'ABC\r\n', '2009-02-02', 1200000, 950000, 'Images/15.jpg', '<div class=\"jeg_share_button share-float jeg_sticky_share clearfix share-monocrhome\"></div><div class=\"content-inner\">\r\n<p>One Piece: Pirate Warriors 4 là phần chơi mới nhất trong series musou về One Piece với cuộc phiêu lưu đầy kịch tính của băng hải tặc Mũ Rơm.</p>\r\n<p>Nhắc đến One Piece, có lẽ tôi nhớ nhiều nhất là kỷ lục số tập manga và anime thuộc &#8220;hàng khủng&#8221;. Nói đến trò chơi điện tử thì đây cũng là một trong số những bộ manga và anime hiếm hoi có nhiều game ăn theo nhất, đủ mọi thể loại từ đấu thẻ bài tới phiêu lưu hành động rồi đến thế giới mở như <a href=\"https://trainghiemso.vn/one-piece-world-seeker-review/\" target=\"_blank\" rel=\"noopener noreferrer\" data-wpel-link=\"internal\">One Piece World Seeker</a> hay thậm chí cả một series game musou. One Piece: Pirate Warriors 4 là phần chơi mới nhất trong dòng game musou này. Tuy tuyến nội dung có thể không có nhiều bổ sung so Pirate Warriors 3, nhưng bù lại là hệ thống chiến đấu đa dạng và hấp dẫn với hơn 40 nhân vật điều khiển, đủ sức &#8220;hớp hồn&#8221; bất kỳ fan cứng nào và đặc biệt là nội dung bám sát nguyên tác.</p><div class=\'jnews_inline_related_post_wrapper right\'>', 255, 200, NULL, 157, 1, 1),
(494, 44, 1, 'Resident Evil', 'AVC\r\n', '2009-02-02', 1400000, 1250000, 'Images/16.jpg', '<h3 class=\"has-text-align-center\"><span style=\"text-decoration: underline;\">NHỮNG CƯ DÂN KÉM THÂN THIỆN XỨ LOUISIANA</span></h3>\r\n\r\n\r\n\r\n<p>Khởi đầu mang đậm chất <a href=\"https://en.wikipedia.org/wiki/The_Shining_(film)\">The Shining</a> chỉ là một phần nhỏ trong số những yếu tố khác nhau tạo nên tông điệu &#8220;lạnh sống lưng&#8221; của <strong><em>Resident Evil 7: Biohazard</em></strong> dưới góc nhìn thứ nhất tương đồng với những <em>Outlast, Alien: Isolation </em>hay<em> Amnesia</em>&#8230; nhưng điều đó không có nghĩa rằng <strong><em>Resident Evil 7: Biohazard</em></strong> trở thành một tựa game thuần &#8220;kinh dị hù dọa&#8221; như những tựa game trên.</p>\r\n\r\n\r\n\r\n<p>Góc nhìn thứ nhất của trò chơi thực sự không làm thay đổi cốt lõi của <em>Resident Evil</em> nhiều đến thế, bởi mặc cho nửa đầu của game đầy rẫy những tình huống &#8220;chạy và nấp&#8221; thay vì tả xung hữu đột như các tựa game trước đây, người chơi vẫn phải lượn lờ xung quanh một khu vực chính của game với hàng tá công việc khác nhau: tìm đường, thu thập và kết hợp vật dụng, giải đố, sắp xếp thùng đồ và dĩ nhiên không thể thiếu những lá thảo mộc xanh để hồi máu, có chăng chỉ khác là thay vì kết hợp với thảo mộc đỏ thì hóa chất là nguyên liệu còn lại để tạo nên một lọ thuốc thần kỳ có khả năng khiến cho một cánh tay bị cụt&#8230; ngừng chảy máu, hoặc&nbsp;xóa nhòa mọi vết sẹo chỉ trong tích tắc.</p>\r\n\r\n\r\n\r\n<p>Thậm chí, cái cách mà <strong><em>Resident Evil 7: Biohazard</em></strong> thực hiện khoản chiến đấu với súng đạn cũng rất cổ điển: luôn luôn bắn&nbsp;mọi thứ di chuyển về phía bạn vào đầu chúng, hoặc vào những bộ phận hơi bị &#8220;nổi&#8221; so với phần còn lại của cơ thể của chúng.</p>\r\n\r\n\r\n\r\n<p>Nếu như có cái gì đó đang &#8220;mất tích&#8221; ở đây, thì có lẽ đó là cái chất &#8220;melodrama&#8221; của Nhật Bản hiện hữu trong <em>Resident Evil</em> trước đây gần như bị xóa nhòa.</p>\r\n\r\n\r\n\r\n<p>Hai tiếng đồng hồ đầu tiên trong nhà chính của biệt thự Bakers có lẽ là điểm sáng lớn nhất trong toàn bộ trò chơi với một mô-típ không mới nhưng đầy thú vị.</p>\r\n\r\n\r\n\r\n<p>Bạn hoàn toàn có thể tự do khám phá căn nhà không theo bất kỳ trình tự nào, thế nhưng cái cách mà trò chơi cân bằng nhịp độ và sắp đặt những tình tiết hù dọa thực sự tài tình với nhiều yếu tố khác nhau: một kẻ thù đeo bám bạn &#8220;dai như đỉa&#8221; tương tự như Nemesis, cái cảm giác chật hẹp khó thở khi những gì xảy ra ngoài tầm nhìn của mình đang dõi theo bước chân của mình và sẵn sàng &#8220;nhảy xổ&#8221; ra đúng lúc mà mình kém tập trung nhất, và dĩ nhiên là cả khả năng tự vệ hạn chế của nhân vật chính.</p>\r\n<p>Chỉ với khẩu súng lục và shotgun với vài viên đạn trong tay cùng khả năng&#8230; che mặt để giảm thiểu sát thương nhận được chứ không thể né người một cách tài ba như Claire Redfield, cho tới tốc độ di chuyển &#8220;rùa bò&#8221; thượng hạng, có lẽ chưa bao giờ mà nhân vật chính trong <em>Resident Evil</em> mang lại cảm giác mỏng manh đến như thế.</p>', 575, 200, NULL, 491, 1, 1),
(495, 44, 1, 'WWE', 'ABC', '2009-02-02', 950000, 850000, 'Images/18.jpg', 'WWE 2k19 chính thức công bố cùng AJ Styles là nhân vật đại diện. 2K Games đã chính thức công bố phiên bản mới nhất trong series WWE của mình, 2K19. Game sẽ phát hành vào 9/10 năm nay trên PC, Xbox One và PS4. Rất tiếc, có lẽ sau phiên bản tệ hại năm ngoái với đầy lỗi mà WWE 2K19 sẽ không xuất hiện trên Nintendo Switch lần này. AJ Styles cũng là nhân vật đại diện cho WWE 2k19 năm nay, anh đã đánh bại Shinsuke Nakamura trong một trận Last Man Standing nhằm bảo vệ thành công chức vô địch WWE Heavyweight Championship.', 510, 200, NULL, 483, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh`
--

CREATE TABLE `hinh` (
  `id_hinh` int(11) NOT NULL,
  `idDT` int(11) NOT NULL,
  `urlHinh` varchar(150) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT 1,
  `anhien` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `hinh`
--

INSERT INTO `hinh` (`id_hinh`, `idDT`, `urlHinh`, `stt`, `anhien`) VALUES
(1, 500, 'Images/13.jpg', 1, 1),
(2, 500, 'Images/14.jpg', 1, 1),
(3, 500, 'Images/15.jpg', 1, 1),
(4, 500, 'Images/16.jpg', 1, 1),
(5, 491, 'Images/17.jpg', 1, 1),
(6, 491, 'Images/18.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin`
--

CREATE TABLE `tin` (
  `idTin` int(11) NOT NULL,
  `TieuDe` varchar(255) NOT NULL DEFAULT '',
  `TieuDe_KhongDau` varchar(255) DEFAULT NULL,
  `TomTat` varchar(1000) DEFAULT NULL,
  `urlHinh` varchar(255) DEFAULT NULL,
  `Ngay` datetime DEFAULT '0000-00-00 00:00:00',
  `Content` text DEFAULT NULL,
  `idLT` int(11) NOT NULL DEFAULT 0,
  `AnHien` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tin`
--

INSERT INTO `tin` (`idTin`, `TieuDe`, `TieuDe_KhongDau`, `TomTat`, `urlHinh`, `Ngay`, `Content`, `idLT`, `AnHien`) VALUES
(20, 'PES 2021 chính thức: Season Update của PES 20, giá rẻ, nhiều quà tặng', 'PES 2021 chính thức: Season Update của PES 20, giá rẻ, nhiều quà tặng', 'Kể từ PES 6 thì năm vừa qua là một thành công lớn đối với Konami khi mà PES 2020 đã thống trị hầu hết các sân cỏ 3D. Thừa hưởng di sản từ PES 2020, phiên bản PES 2021 sau rất nhiều tin đồn thì Playsta..', 'Images/7.jpg', '2008-03-30 00:00:00', '<p align=\"center\"><BR>\r\n  <IMG alt=\"2\" hspace=\"5\" src=\"http://songdep.xitrum.net/images/Felicity-Wishes-XXVI-Print-C10231843.jpg\" align=\"center\" vspace=\"5\" border=\"0\"><BR>\r\n</p>\r\n<p><strong>Truyện thứ   nhất:</strong></p>\r\n<p> Khi Mùa Xuân chuẩn bị ra đi thì Mùa Hè đến. Mùa Hè mang   đến cho Mùa Xuân một bó hoa hồng rất đẹp và nói :</p>\r\n<p> -Mùa Xuân ơi, hãy tin   tôi, tôi yêu em. hãy ở lại với tôi. Chúng ta sẽ cùng đi chơi, đến tất cả những   nơi mà em muốn.</p>\r\n<p> Nhưng Mùa Xuân không yêu Mùa Hè. Và cô ra đi. Mùa Hè   buồn lắm. Mùa Hè ốm, nhiệt độ lên cao. Mọi thứ xung quanh trở nên rất nóng.</p>\r\n<p> Sau một thời gian, Mùa Thu đến, mang theo rất nhiều trái cây ngon. Mùa   Thu rất yêu Mùa Hè. Cô không muốn Mùa Hè phải buồn.</p>\r\n<p> - Mùa Hè ơi, đừng   buồn nữa. Hãy ở lại với em. Em sẽ mang lại hạnh phúc cho anh.</p>\r\n<p> Nhưng với   Mùa Hè, Mùa Xuân là tất cả. Và anh ra đi.</p>\r\n<p> Mùa Thu khóc, khóc nhiều lắm. Mọi   thứ xung quanh trở nên ướt.</p>\r\n<p> Một thời gian sau, Mùa Đông đến, mang theo   cậu con trai của mình là Băng Giá. Những giọt nước mắt của Mùa Thu làm Băng Giá   cảm thấy xao xuyến. Anh cảm thấy muốn đem lại hạnh phúc cho Mùa Thu</p>\r\n<p>- Mùa   Thu ơi, hãy ở bên tôi. Tôi sẽ xây cho em những lâu đài, những con đường bằng   băng. Tôi sẽ hát cho em nghe những bài hát hay nhất. Hãy ở bên tôi.</p>\r\n<p>-   Không, Băng Giá ạ. Ở bên anh tôi sẽ luôn cảm thấy lạnh lẽo thôi.</p>\r\n<p> Và Mùa   Thu ra đi. Băng Giá buồn lắm. Gió thổi mạnh. Chỉ trong một đêm thôi, mọi thứ trở   nên trắng xóa bởi tuyết. Mùa Đông thấy con như vậy thì buồn lắm. Bà   nói:</p>\r\n<p>-Tại sao con không yêu Mùa Xuân ? Cô ấy đã đến và hứa sẽ mang lại   cho con hạnh phúc. </p>\r\n<p>- Không mẹ ơi, con không thích. Chúng ta hãy rời khỏi   đây đi. </p>\r\n<p>Và họ ra đi.</p>\r\n<p> Chỉ còn lại một mình Mùa Xuân. Cô khóc. Nhưng   rôì, bất chợt Mùa Xuân nhìn ra xung quanh: \"Ôi tại sao mình phải khóc chứ? Mình   còn rất trẻ, và xinh đẹp nữa. Thời gian dành cho mình không nhiều. Tại sao mình   không làm những việc có ý nghĩa hơn?\".</p>\r\n<p> Và mọi thứ như sống lại: cây cối   tươi xanh, ra hoa, đâm chồi, nảy lộc....</p>\r\n<p> Đây chỉ là một câu chuyện cổ   tích của Nga thôi. Nhưng những gì đọng lại thì nhiều lắm... </p>\r\n<p>  <strong><em>Phải chăng chúng ta cứ luôn chạy theo những thứ mãi mãi không thuộc   về mình, luôn đòi hỏi những gì không dành cho mình? Chúng ta cứ luôn đợi chờ, hi   vọng, rồi buồn, rồi khóc. Có biết bao nhiêu người như thế? Và có bao nhiêu người   như Mùa Xuân, nhận ra con đường phía trước?...</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Truyện thứ hai:</strong></p>\r\n<p align=\"center\"><IMG alt=\"2\" hspace=\"5\" src=\"http://songdep.xitrum.net/images/Felicity-Wishes-VII-Print-C10231827.jpg\" align=\"center\" vspace=\"5\" border=\"0\"></p>\r\n<p>Mặt trăng và Mặt Trời tranh cãi với   nhau về Trái Đất. Mặt Trời nói: \"Lá và cây cối, tất cả đều màu xanh\". Nhưng Mặt   Trăng thì lại cho rằng, tất cả chúng mang một ánh bạc lấp lánh. Mặt Trăng nói   rằng, con người trên Trái Đất thường ngủ. Còn Mặt Trời lại bảo con người luôn   hoạt động đấy chứ.</p>\r\n<p>- Con người hoạt động, vậy tại sao trên Trái Đất lại   yên ắng đến vậy ?- Mặt Trăng cãi.</p>\r\n<p>- Ai bảo là trên Trái Đất yên lặng? -   Mặt Trời ngạc nhiên - Trên Trái Đất mọi thứ đều hoạt động, và còn rất ồn ào, náo   nhiệt nữa. </p>\r\n<p> Và họ cãi nhau rất lâu, cho đến khi Gió bay ngang qua. </p>\r\n<p>- Tại sao các bạn lại cãi nhau về chuyện này chứ? Tôi đã ở bên cạnh Mặt   Trời khi Mặt Trời nhìn xuống Trái Đất, và tôi cũng đi cùng Mặt Trăng khi Mặt   Trăng xuất hiện. Khi Mặt Trời xuất hiện, mọi thứ là ban ngày, cây cối màu xanh,   con người hoạt đông. Còn khi Trăng lên, đêm về, mọi người chìm vào giấc ngủ. </p>\r\n<p>  <em><strong>Nếu chỉ nhìn mọi việc dưới con mắt của mình, thì   mọi thứ chẳng có gì là hoàn hảo, trọn vẹn cả. </strong></em>Không thể đánh giá   Trái Đất chỉ bằng con mắt của Mặt Trời hoặc Mặt trăng được. Cũng vậy khi đánh   giá một con người, một sự việc nào đó, không thể nhìn từ một phía   được...</p>\r\n<p>&nbsp;  </p>\r\n<p><strong>Truyện thứ ba:</strong></p>\r\n<p>  Một hôm,   Mặt Trời, Gió và Mặt trăng đến ăn tối tại nhà của bác Sấm Sét và cô Tia Chớp.   Còn Mẹ của họ là Vì Sao thì ở nhà. </p>\r\n<p> Mặt Trời và Gió rất tham lam, và luôn   chỉ nghĩ đến bản thân mình. Trong bữa ăn, họ ăn rất nhiều và không nghĩ gì dến   người mẹ đang ở nhà cả. Còn Mặt Trăng, mỗi một món ăn, cô lại để dành mang về   cho mẹ một ít. Khi bọn họ trở về nhà, Vì Sao đã hỏi :</p>\r\n<p>- Các con yêu quý,   ở đó họ cho các con ăn những gì?</p>\r\n<p>- Con được ăn rất nhiều món ngon mẹ ạ, và   con đã ăn hết tất cả phần của mình - Mặt Trời trả lời.</p>\r\n<p>- Con cũng đã ăn rất   nhiều mẹ ạ, ăn hết tất cả - Gió nói.</p>\r\n<p> Còn Mặt Trăng, cô lấy tất cả những gì đã   đẻ dành cho mẹ ra, dọn lên bàn và mời Vì Sao ăn. Và họ đã có một bữa ăn không   chỉ đầy những thức ăn ngon, mà còn đầy cả lòng yêu thương nữa.</p>\r\n<p> Vì Sao rất   buồn vì Mặt Trời và Gió. Bà nói:</p>\r\n<p>- Mặt Trời, con trai của ta. Con chỉ luôn   nghĩ đến mình, chỉ quan tâm đến cảm xúc của mình, mà chẳng bao giơ nghĩ đến   người khác. Sau này sẽ không có ai muốn gần gũi và yêu quý con đâu. Con sẽ trở   thành một con người nóng bỏng, gay gắt, để rồi tất cả mọi người, mỗi khi nhìn   thấy con đều phải che mặt lại.</p>\r\n<p> Còn con, Gió yêu quý. Con rất tham lam.   Con luôn sống cho bản thân. Sẽ không có ai yêu quý con cả, và mọi người luôn   tránh xa con.</p>\r\n<p> Mặt trăng yêu quý của ta, con thật là một người chu đáo,   ngoan ngoãn. Con sẽ trở nên trong sáng, mát dịu. Tất cả mọi người rồi sẽ yêu quý   con.</p>\r\n<p>  <strong><em>Cuộc sống luôn vậy, luôn có sự vận động nhân   quả. Cho và được cho luôn tồn tại song song với   nhau.</em></strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Truyện thứ   tư:</strong></p>\r\n<p>  Tia Nắng là một cô gái rất xinh xắn, dễ thương. Cô không   đẹp cái vẻ đẹp lộng lẫy, kiêu xa. Mà đó là cái vẻ đẹp bình dị, gẫn gũi. Lúc bấy   giờ, có nhiều chàng trai để ý Tia Nắng lắm. Mặt Trời mạnh mẽ và ấm áp, chàng Gió   kiêu ngạo và bướng bỉnh, Mặt Trăng nhẹ nhàng và gần gũi... Tất cả bọn họ đều   mong có được Tia Nắng. Nhưng mỗi người đều thể hiện tình cảm của mình theo một   cách riêng</p>\r\n<p> Mặt Trời nóng bỏng, luôn mang lại cho Tia Nắng những điều bất   ngờ, thú vị, những cuộc dạo chơi bên dòng suối, trên những sườn đồi, trong những   cánh rừng đầy hương hoa... Bên mặt Trời, Tia Nắng luôn thấy yêu đời, yêu cuộc   sống.</p>\r\n<p> Mặt Trăng lại luôn mang cho Tia Nắng những phút giây nhẹ nhàng, êm   đềm, thoải mái nhất. Bên Mặt Trăng Tia Nắng luôn có những phút giây để nhìn lại   mình, để nhớ lại những gì mình đã làm, đã trải qua. Từ đó tìm ra ý nghĩa của   cuộc sống. </p>\r\n<p> Còn với chàng Gió. Gió kiêu ngạo và lạnh lùng. Gió sâu sắc và   tình cảm. Với Gió, Tia Nắng luôn được nhìn thấy cuộc sống ở khía cạnh khác. Một   cuộc sống nội tâm, một cuộc sống không phải toàn màu hồng như với Măt Trời,   không nhẹ nhàng như với Mặt Trăng. Nhưng cô sợ Gió. Bởi vì cô biết Gió không bao   giờ là của cô cả. Gió kiêu ngạo lạnh lùng quá, để không thể cất lên được tiếng   Yêu. </p>\r\n<p> Và kết quả thì có lẽ ai cũng biết rồi. Tia Nắng đã chọn cho mình   Mặt Trời. Cuộc sống luôn vận động, luôn hướng về phía trước. Với Mặt Trăng, Tia   Nắng chỉ có thể xem như một người bạn tốt, có thể trút những lo âu, phiền muộn,   những khó khăn. Còn với Gió, có thể đó là một sự ngưỡng mộ, một sự đồng cảm, và   cũng có thể là tình yêu nữa. Nhưng Tia Nắng đã không chọn Gió. Đơn giản bởi vì   Gió quá kiêu ngạo, kiêu ngạo hay nhút nhát ? Yêu mà không dám thể hiện, hay   không chịu thể hiện. Để rồi bây giờ, Tia Nắng luôn ở bên Mặt Trời, Mặt Trăng chỉ   thỉnh thoảng gặp họ vào những lúc hoàng hôn. Còn Gió, ngày ngày vẫn lang thang,   không nơi vô định. Gió đã đánh mất một thứ mà không bao giờ còn có thể tìm lại   được nữa - TÌNH YÊU. Thời gian chẳng quay lại bao giờ.</p>\r\n<p>  <strong><em>Có những thứ đôi khi phải cúi xuống người ta mới có thể lấy được   nó.</em></strong></p>\r\n', 12, 1),
(21, 'Thông tin về Xbox Series X/S mà bạn cần biết', 'Thông tin về Xbox Series X/S mà bạn cần biết', 'Không như mọi khi, năm năm Microsoft lại thông báo sẽ có 2 hệ máy console được ra mắt: Xbox Series S và Xbox Series X. Hãng cũng xác nhận công bố cả hình ảnh và giá bán của Xbox Series S, là chiếc Xb..', 'Images/11.jpg', '2008-03-30 00:00:00', '<DIV align=\"center\"><IMG alt=\"3\" hspace=\"5\" src=\"http://songdep.xitrum.net/images/chicken/candlear1.jpg\" align=\"center\" vspace=\"5\" border=\"0\"></DIV>\r\n\r\n <p>Một tối mất điện, ngọn nến được đem ra đặt giữa   phòng. Người ta châm lửa cho ngọn nến và nến lung linh cháy sáng. Nến hân hoan   nhận ra rằng ngọn lửa ngõ nhoi của nó đã mang lại ánh sáng cho cả căn   phòng.</p>\r\n <p>   Mọi người đều trầm trồ: “Ồ nến sáng quá, thật may, nếu không chúng   ta sẽ chẳng nhìn thấy gì mất\". Nghe thấy vậy, nến vui sướng dùng hết sức mình   đẩy lui bóng tối xung quanh.</p>\r\n <p> Thế nhưng, những dòng sáp nóng đã bắt đầu   chảy ra, lăn dài theo thân nến. Nến thấy mình càng lúc càng ngắn lại. Đến khi   chỉ còn một nửa, nến giật mình: “Chết mất, ta mà cứ cháy mãi thế này thì chẳng   bao lâu sẽ tàn mất thôi. Tại sao ta phải thiệt thòi như vậy?”.</p>\r\n <p> Nghĩ rồi,   nên nương theo một cơn gió thoảng để tắt phụt đi. Một sợi khói mỏng manh bay lên   rồi nến im lìm.</p>\r\n <p> Mọi người trong phòng nhớn nhác bảo nhau: “Nến tắt mất   rồi, tối quá, làm sao bây giờ?”. Ngọn nến mỉm cười tự mãn và hãnh diện vì tầm   quan trọng của mình. Nhưng bỗng một người đề nghị: “Nến dễ bị gió thổi tắt lắm,   để tôi đi tìm cái đèn dầu”. Đèn dầu được thắp lên, còn ngọn nến đang cháy dở thì   bị bỏ vào ngăn kéo tủ.</p>\r\n <p> Ngọn nến buồn thiu. Thế là từ nay nó sẽ bị nằm   trong ngăn kéo, khó có dịp cháy sáng nữa. Nến chợt hiểu rằng hạnh phúc của nó là   được cháy sáng vì mọi người, dù chỉ có thể cháy với ánh lửa nhỏ và dù sau đó nó   sẽ tan chảy đi. Bởi vì nó là ngọn nến.</p>\r\n', 12, 1),
(22, 'Lời đáp về giá và ngày phát hành PS5 từ nhà Sony', 'Lời đáp về giá và ngày phát hành PS5 từ nhà Sony', 'Sau khi \"hàng xóm\" Microsoft xác nhận giá bán của 2 phiên bản Xbox Series X/S thì có vẻ dường như nhà Sony cũng khai phát súng đầu tiên về PS5 sau một khoảng thời gian ém nhẹm thông tin khá lâu. Mới ..', 'Images/13.jpg', '2008-03-30 00:00:00', '<p align=\"center\"><IMG alt=\"d\" hspace=\"5\" src=\"http://songdep.xitrum.net/images/chicken/wallcoobitred012vh0.jpg\" align=\"center\" vspace=\"5\" border=\"0\"></p>\r\n<p> Một chàng trai đưa cô bạn gái thân vào   quán uống nước. Sau khi người phục vụ đặt hai cốc nước trắng lên bàn và đợi thì   cô gái chợt đặt ra một câu hỏi:</p>\r\n<p> - Đố bạn Tình yêu là gì...</p>\r\n<p> Chàng   trai mỉm cười quay sang cô phục vụ và nói:</p>\r\n<p> - Chị cho em một ấm trà, một   cốc cà phê đen, một cốc cà phê sữa, một ly rượu vang và một ly   champagne.</p>\r\n<p>  Sau khi mọi thứ đã được mang ra, chàng trai lấy ấm trà và   uống chén đầu tiên. Anh ta nói:</p>\r\n<p> - Tình yêu như ấm trà này. Khi ta uống   nước đầu sẽ rất đậm đà, nước thứ hai sẽ dìu dịu thanh thanh. Còn nước thứ ba thì   sao...</p>\r\n<p> Tình yêu không như ấm trà bởi sau nước thứ ba ấm trà sẽ không còn   hương vị ban đầu.</p>\r\n<p> Anh ta lại nhấp một ngụm cà phê đen và nói:</p>\r\n<p> -   Tình yêu mang hương vị của cốc cà phê này. Lúc đầu có thể phải trải qua vị đắng   nhưng dần dần vị ngọt và thơm sẽ ngấm dần vào mỗi người.</p>\r\n<p> - Nhưng tình yêu   không như cốc cà phê sữa. Uống cà phê sữa ta sẽ cảm thấy ngay vị ngọt, vị ngọt   của nó đến rất nhanh và đi rất nhanh. Còn tình yêu không như vậy.</p>\r\n<p> Dứt lời   anh ta đổ cốc cà phê ấy đi và nói:</p>\r\n<p> - Tình yêu như ly rượu này, nó thật   nồng nàn, ấm áp và êm đềm.</p>\r\n<p> Anh ta lại uống ly champagne.</p>\r\n<p> - Không!   Tình yêu không thể là thứ nước khai vị chua loét này được.</p>\r\n<p> Chàng trai lo   lắng vì không tìm được câu trả lời. Bất chợt anh ta nhìn thấy cốc nước trắng   trên bàn. Anh ta reo lên.</p>\r\n<p> - Đúng rồi, hãy nhìn cốc nước kia, nó thật tinh   khiết và giản dị. Rượu, cà phê và trà cũng phải bắt nguồn từ nước. Tình yêu cũng   như vậy, cái nồng nàn, ngọt ngào, êm đềm và cay đắng cũng phải xuất phát từ lòng   chân thành và những điều giản dị nhất. Bạn ạ!</p>\r\n<p> Tình yêu là cốc nước   trắng.</p>\r\n<p> Cô gái ngồi im, đôi mắt mở to.</p>\r\n<p>  Và rồi cô từ từ nhấc ly nước   lên và từ từ đặt vào tay chàng trai.</p>\r\n<p> Chàng trai đã hiểu rằng, anh ta đã   có một câu trả lời đúng...</p>\r\n', 12, 1),
(23, 'Đánh giá hiệu năng iMac 27 inch 2020, liệu có thật sự tốt?', 'Đánh giá hiệu năng iMac 27 inch 2020, liệu có thật sự tốt?', 'Bạn đã nghe và đọc quá nhiều về hiệu năng, sự tiện lợi và sức mạnh của chiếc iMac 27 inch năm nay, nhưng đó không hề làm thỏa lòng bạn. Điều bạn cần là sự trải nghiệm về hiệu năng, vậy thì hôm nay HAL.', 'Images/12.jpg', '2008-03-30 00:00:00', '<DIV align=\"center\"><IMG alt=\"t\" src=\"http://songdep.xitrum.net/images/children.jpg\" border=\"0\"></DIV>\r\n <p>Hỡi người bạn nhỏ!<BR>\r\n   Dù em là ai, dù em ở đâu!<BR>\r\n   Có   những trẻ em giống em trên khắp thế giới.<BR>\r\n   Màu da của họ có thể khác em, gia   đình họ có thể khác em.<BR>\r\n   Trường học của họ có thể khác em.<BR>\r\n   Đời sống của họ   có thể khác em.<BR>\r\n   Tiếng nói của họ có thể khác em.<BR>\r\n   Nhưng trong họ, trái tim   của họ thì giống em.<BR>\r\n  <BR>\r\n   Dù họ là ai, trên khắp thể giới.<BR>\r\n   Nụ cười của họ   giống em, tiếng cười của họ giống em.<BR>\r\n   Nỗi đau của họ giống em và họ khóc cũng   giống em.<BR>\r\n  <BR>\r\n   Dù họ là ai, dù họ ở đâu trên khắp thế giới.<BR>\r\n   Hỡi người em   nhỏ!<BR>\r\n   Khi em lớn lên và già đi<BR>\r\n   Em có thể khác, và họ cũng thế.<BR>\r\n   Dù em ở   đâu, và dù họ ở đâu trên thế giới rộng lớn này.<BR>\r\n   Hãy nhớ điều này:<BR>\r\n  <BR>\r\n   Niềm   vui thì giống nhau và tình yêu thì giống nhau.<BR>\r\n   Nỗi đau là như nhau và chúng   ta có cùng một dòng máu đỏ.<BR>\r\n   Nụ cười giống nhau và con tim giống nhau.<BR>\r\n   Dù   họ ở nơi nào.<BR>\r\n   Dù em ở nơi nào.<BR>\r\n   Dù chúng ta ở nơi nào.<BR>\r\n   Trên khắp thế   giới này!<BR>\r\n  <BR>\r\n </p>\r\n', 12, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `HoTen` varchar(100) NOT NULL DEFAULT '',
  `Password` varchar(50) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `DienThoai` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL DEFAULT '',
  `NgayDangKy` date NOT NULL DEFAULT '0000-00-00',
  `idGroup` int(11) NOT NULL DEFAULT 0,
  `GioiTinh` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `randomkey` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`idUser`, `HoTen`, `Password`, `DiaChi`, `DienThoai`, `Email`, `NgayDangKy`, `idGroup`, `GioiTinh`, `active`, `randomkey`) VALUES
(21, 'Gia Hu', 'c4ca4238a0b923820dcc509a6f75849b', '123 meo meo chấm cơm', '0912345678', 'giahu@localhost.com', '2009-01-22', 0, 0, 1, '123'),
(20, 'Nguyễn Văn Tí', 'c4ca4238a0b923820dcc509a6f75849b', '456, abc chấm  cơm chấm vê en', '089874563', 'ti@localhost.com', '2009-01-20', 1, 0, 0, ''),
(22, 'Nguyễn Văn Tèo', 'c4ca4238a0b923820dcc509a6f75849b', '789 gia hu chấm vê en', '32648372', 'teo@localhost.com', '2009-02-07', 1, 0, 0, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`idDH`);

--
-- Chỉ mục cho bảng `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  ADD PRIMARY KEY (`idChiTiet`);

--
-- Chỉ mục cho bảng `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`idDT`);

--
-- Chỉ mục cho bảng `hinh`
--
ALTER TABLE `hinh`
  ADD PRIMARY KEY (`id_hinh`);

--
-- Chỉ mục cho bảng `tin`
--
ALTER TABLE `tin`
  ADD PRIMARY KEY (`idTin`);
ALTER TABLE `tin` ADD FULLTEXT KEY `TimKiemToanVan` (`TieuDe`,`TomTat`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `idDH` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  MODIFY `idChiTiet` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `games`
--
ALTER TABLE `games`
  MODIFY `idDT` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=679;

--
-- AUTO_INCREMENT cho bảng `hinh`
--
ALTER TABLE `hinh`
  MODIFY `id_hinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1166;

--
-- AUTO_INCREMENT cho bảng `tin`
--
ALTER TABLE `tin`
  MODIFY `idTin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=767;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
