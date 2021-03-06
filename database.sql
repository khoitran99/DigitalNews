USE [master]
GO
/****** Object:  Database [DigitalDB]    Script Date: 7/15/2021 5:33:23 PM ******/
CREATE DATABASE [DigitalDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DigitalDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DigitalDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DigitalDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DigitalDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DigitalDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DigitalDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DigitalDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DigitalDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DigitalDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DigitalDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DigitalDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DigitalDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DigitalDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DigitalDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DigitalDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DigitalDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DigitalDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DigitalDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DigitalDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DigitalDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DigitalDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DigitalDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DigitalDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DigitalDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DigitalDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DigitalDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DigitalDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DigitalDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DigitalDB] SET RECOVERY FULL 
GO
ALTER DATABASE [DigitalDB] SET  MULTI_USER 
GO
ALTER DATABASE [DigitalDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DigitalDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DigitalDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DigitalDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DigitalDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DigitalDB', N'ON'
GO
ALTER DATABASE [DigitalDB] SET QUERY_STORE = OFF
GO
USE [DigitalDB]
GO
/****** Object:  Table [dbo].[Digital]    Script Date: 7/15/2021 5:33:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Digital](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[author] [nvarchar](max) NOT NULL,
	[createdDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Digital] ON 

INSERT [dbo].[Digital] ([id], [title], [content], [description], [image], [author], [createdDate]) VALUES (1, N'Bitmain ngừng bán trâu cày Bitcoin', N'Bitmain - công ty cung cấp các dàn khai thác tiền số lớn nhất thế giới - thông báo ngừng bán máy đào Bitcoin do giá giảm mạnh.
Bitmain Technologies cho biết quyết định trên nhằm "cân bằng lại giá bán". Giá của loại thiết bị này giảm tới 75% kể từ tháng 4, sau khi chính phủ Trung Quốc ra lệnh cấm toàn bộ các hoạt động khai thác Bitcoin tại quốc gia này.
Theo đại diện của Bitmain, việc hoãn bán hàng có lợi cho thị trường các thiết bị cũ, trong đó tạo điều kiện cho các công ty khai thác thanh lý tài sản được giá hơn. Bên cạnh đó, Bitmain kỳ vọng việc cắt giảm nguồn cung về lâu dài có thể giúp tăng giá thiết bị khai thác Bitcoin.
Trừ các hệ thống "đào" Bitcoin, Bitmain vẫn tiếp tục bán thiết bị dùng để khai thác các loại tiền số khác. Phát ngôn viên Bitmain từ chối nói về kế hoạch kinh doanh trở lại máy đào Bitcoin.
Vào tháng 5, Hội đồng Nhà nước Trung Quốc bắt đầu kêu gọi việc "đàn áp" đối với các hoạt động khai thác và kinh doanh Bitcoin trên toàn quốc. Ngay sau đó, chính quyền khắp các địa phương, từ phía bắc Nội Mông tới Tứ Xuyên - những nơi có các "khu mỏ" Bitcoin quy mô lớn - đã tiến hành cắt điện và cấm các hoạt động khai thác tiền số.
Việc Trung Quốc mạnh tay đối với khai thác tiền số khiến nhiều công ty chuyên về lĩnh vực này buộc phải bán tháo hệ thống "trâu cày" hoặc chuyển chúng ra nước ngoài. Giá bán của máy đào tại Trung Quốc vì thế cũng giảm rất mạnh so với trước. Trên thị trường đồ cũ, các hệ thống khai thác Bitcoin hiện nay do các công ty hàng đầu như Bitmain hay Whatsminer cũng giảm nửa giá với hồi tháng 4.
Tuần trước, trong một sự kiện tại Thành Đô giữa Bitmain và các "thợ đào" Bitcoin, công ty cam kết sẽ đóng vai trò kết nối người khai thác trong nước đối với các trung tâm dữ liệu ở các quốc gia như Mỹ và Kazakhstan. Đây cũng là điểm đến tiềm năng đối với các công ty khai thác tiền điện tử thời gian tới.', N'Bitmain - công ty cung cấp các dàn khai thác tiền số lớn nhất thế giới - thông báo ngừng bán máy đào Bitcoin do giá giảm mạnh.', N'1.jpg', N'Bảo Lâm (theo Bloomberg)', CAST(N'2021-06-20' AS Date))
INSERT [dbo].[Digital] ([id], [title], [content], [description], [image], [author], [createdDate]) VALUES (2, N'Microsoft gặp sự cố kỹ thuật khi giới thiệu Windows 11', N'Sự kiện online ra mắt Windows 11 của Microsoft đã gặp một số trục trặc khi phát trên website, buộc công ty phải chuyển sang nền tảng YouTube của Google.
Microsoft tổ chức sự kiện ra mắt Windows 11 theo hình thức trực tuyến vào lúc 22h00 ngày 24/6 (giờ Hà Nội) và phát trực tiếp trên website của mình. Tuy nhiên, trên mạng xã hội, một số tài khoản cho biết không thể xem được sự kiện.
"Video chập chờn, tôi đã thử làm mới trình duyệt nhiều lần, kể cả xóa bộ nhớ đệm và thay đổi mạng Wi-Fi. Mọi thứ đều không cải thiện. Thật thất vọng", tài khoản Twitter tên Castro viết. "Giờ đây tôi mới biết là tạo ra một nền tảng để phát trực tiếp là không dễ, kể cả khi đó là một công ty công nghệ khổng lồ trị giá 2 nghìn tỷ USD như Microsoft", The Verge bình luận.
Mọi thứ dường như nghiêm trọng, đến mức Mat Velloso - cố vấn kỹ thuật cho CEO Satya Nadella - phải can thiệp. Ông sau đó lên Twitter đăng một liên kết đưa người dùng chuyển sang xem sự kiện trực tiếp trên YouTube.
Microsoft chưa bình luận về sự cố này.
Tại sự kiện, Microsoft đã giới thiệu Windows 11 với nhiều cải tiến cả về giao diện lẫn tính năng, gồm thiết kế lại Menu Start, bổ sung widget, hỗ trợ ứng dụng Android, cải tiến hiệu suất và cập nhật để cải thiện đa nhiệm... Microsoft cho biết sẽ cung cấp miễn phí Windows 11 cho người dùng Windows 10, nhưng chưa rõ thời điểm chính thức.', N'Sự kiện online ra mắt Windows 11 của Microsoft đã gặp một số trục trặc khi phát trên website, buộc công ty phải chuyển sang nền tảng YouTube của Google.', N'2.jpg', N'Như Phúc (theo The Verge)', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Digital] ([id], [title], [content], [description], [image], [author], [createdDate]) VALUES (3, N'Việt Nam tăng 10 bậc về tốc độ Internet di động', N'Việt Nam đứng thứ 56 thế giới về tốc độ Internet di động tháng 5, tăng 10 bậc so với tháng 4, nhưng vẫn thấp hơn trung bình thế giới.

Thống kê trên trang Speedtest, tốc độ download trên mạng di động tại Việt Nam trong tháng 5/2021 đạt 44.49 Mb/giây, tốc độ upload đạt 20,16 Mb/giây. So với số liệu tháng trước đó, tốc độ download đã tăng khoảng 16%, kéo theo thứ hạng của Việt Nam cao hơn trên bảng xếp hạng toàn cầu.

Trong tháng 5, tốc độ Internet di động trung bình của thế giới là 54,53 Mb/giây. Quốc gia có tốc độ cao nhất là UAE (194,04 Mb/giây), thứ hai là Hàn Quốc (192,58 Mb/giây). Đây đều là các quốc gia có mạng 5G phát triển mạnh.

Theo bảng xếp hạng này, Việt Nam đứng thứ 56 về tốc độ Internet di động, tăng 10 bậc so với hạng 66 vào tháng trước đó. Tuy nhiên, đây không phải là kết quả tốt nhất Việt Nam từng đạt được. Hồi tháng 4/2020, tốc độ Internet di động tại Việt Nam xếp thứ 49 trên thế giới, đạt 34,80 Mb/giây, cao hơn mức trung bình toàn cầu.
Về Internet băng rộng cố định, Việt Nam đạt tốc độ download 70,05 Mb/giây, upload đạt 65,43 Mb/giây, đều cao hơn tốc độ của tháng 4 (lần lượt là 66,58 và 62,89 Mb/giây). Thứ hạng tốc độ mạng băng rộng cũng tăng 1 bậc, lên mức 60 thế giới vào tháng 5.

Trên thế giới, tốc độ download trung bình là 105,12 Mb/giây, tốc độ upload là 55,95 Mb/giây. Nước có tốc độ Internet băng rộng cố định cao nhất là Singapore, đạt 250,35 Mb/giây.

Thời gian qua, tốc độ Internet ở cả Việt Nam và trên thế giới đều có xu hướng tăng, đặc biệt ở hạng mục Internet di động, với sự phát triển của mạng 5G. Tại Việt Nam, một số nhà cung cấp dịch vụ Internet cũng tung ra các chương trình tăng băng thông cho người dùng trong giai đoạn dịch, nhu cầu làm việc từ xa tăng cao.

Trong tháng 5, sự cố duy nhất với cáp quang biển xảy ra vào ngày 26/5, trên tuyến cáp AAE-1, khiến một phần lưu lượng Internet Việt Nam đi quốc tế bị ảnh hưởng. Sự cố này dự kiến đến giữa tháng 7 mới được khắc phục xong.', N'Việt Nam đứng thứ 56 thế giới về tốc độ Internet di động tháng 5, tăng 10 bậc so với tháng 4, nhưng vẫn thấp hơn trung bình thế giới.', N'3.jpg', N'Lưu Quý', CAST(N'2021-06-22' AS Date))
INSERT [dbo].[Digital] ([id], [title], [content], [description], [image], [author], [createdDate]) VALUES (4, N'Gần 60.000 người ký tên ngăn Jeff Bezos quay lại Trái Đất', N'eff Bezos, CEO Amazon, sắp bay vào vũ trụ và đã có hàng chục nghìn người ký vào bản kiến nghị trực tuyến "Không cho Jeff Bezos trở lại Trái Đất".

Jeff Bezos, nhà sáng lập Amazon và công ty thám hiểm không gian Blue Origin, cho biết ông và em trai Mark Bezos sẽ bay trên tàu vũ trụ tên lửa New Shepard vào ngày 20/7.

Hai bản kiến nghị xuất hiện trên trang Change.org với nội dung ngăn việc đặt chân trở lại Trái Đất của tỷ phú. Sau hai tuần, bản kiến nghị "Không cho Jeff Bezos quay lại Trái Đất" - cho rằng thế giới không cần những tỷ phú như Bezos, Bill Gates và Elon Musk - thu hút hơn 33.000 lượt ký tên.

Một bản khác là "Không cho Jeff Bezos tái nhập cảnh Trái Đất" hiện có 25.000 chữ ký với lý do tỷ phú này là "thực chất là Lex Luthor cải trang thành chủ sở hữu cửa hàng bán lẻ trực tuyến siêu thành công. Ông ta là lãnh chúa xấu xa thống trị toàn cầu".
Tàu vũ trụ New Shepard sẽ mất khoảng 11 phút để đưa Jeff Bezos và em trai ra ngoài không gian ở độ cao 97.000 mét so với bề mặt Trái Đất. "Từ hồi 5 tuổi, tôi đã mơ được du hành vào không gian", Bezos chia sẻ trên Instagram hôm 7/6. "Vào ngày 20/7, tôi sẽ thực hiện cuộc phiêu lưu vĩ đại nhất với người bạn thân nhất của tôi".

Nếu mọi thứ diễn ra theo đúng kế hoạch, Bezos - người giàu nhất thế giới với tài sản ròng 187 tỷ USD - sẽ là người đầu tiên trong số các tỷ phú ngành vũ trụ trải nghiệm công nghệ tên lửa do chính ông đầu tư phát triển, trước cả Elon Musk hay tỷ phú người Anh Richard Branson.

Sau sáu năm thử nghiệm tên lửa và tàu New Shepard, tháng 5 vừa qua, Blue Origin thông báo đang chuẩn bị đưa những hành khách đầu tiên vào vũ trụ. Mặc dù chưa công bố giá cho một tấm vé bay vào vũ trụ là bao nhiêu, Blue Origin cho biết một ghế sẽ được trao cho người chiến thắng trong cuộc đấu giá kéo dài một tháng đang diễn ra. Giá thầu vào sáng 7/6 là 2,8 triệu USD nhưng đã đạt 3,2 triệu USD sau thông báo của Blue Origin.

Blue Origin, được Bezos sáng lập năm 2000, đã thực hiện hàng chục cuộc thử nghiệm bay không người lái tại cơ sở của công ty nằm ở ngoại ô Texas. Bezos đã gọi Blue Origin là "công việc quan trọng nhất tôi đang làm", dù trước đây ông không công khai về việc cá nhân có muốn du hành vào không gian hay không.', N'Jeff Bezos, CEO Amazon, sắp bay vào vũ trụ và đã có hàng chục nghìn người ký vào bản kiến nghị trực tuyến "Không cho Jeff Bezos trở lại Trái Đất".', N'4.jpg', N'Minh Minh', CAST(N'2021-06-21' AS Date))
INSERT [dbo].[Digital] ([id], [title], [content], [description], [image], [author], [createdDate]) VALUES (5, N'AI kiềm chế người nóng giận', N'Theo CNN, Facebook mới tung ra một số phần mềm hỗ trợ hơn 70 triệu quản trị viên trong các hội nhóm trên nền tảng của mình. Trong đó, hệ thống AI mới được Facebook phát triển có thể phát hiện các vụ xung đột, cãi vã trên các hội nhóm. Công cụ "cảnh báo xung đột" dựa trên thuật toán AI sẽ thông báo đến các quản trị viên của nhóm về một nội dung "gây tranh cãi" hoặc "không lành mạnh". Mạng xã hội ngày có 2,85 tỷ người dùng hàng tháng với khoảng 1,8 tỷ người đang hoạt động trong hàng chục triệu nhóm khác nhau.
Trong nhiều năm, các nền tảng như Facebook và Twitter ngày càng dựa vào AI để xác định phần lớn những gì người dùng trực tuyến chia sẻ bằng các công cụ phát hiện câu chữ có tính chất gây thù hận trên dòng thời gian. Điều này có thể hỗ trợ các nhà quản lý hội nhóm dễ dàng hơn trong việc kiểm duyệt cũng như can thiệp kịp thời để tránh các xung đột không đáng có.

Tuy nhiên, đôi lúc AI vẫn khá lúng túng trong việc hiểu được sự tinh tế của ngôn ngữ trong những ngữ cảnh khác nhau. Hơn nữa, hệ thống kiểm duyệt bí mật của AI cũng có thể khiến người dùng cảm thấy bị tổn thương. Phát ngôn viên của Facebook cho biết AI của công ty sẽ sử dụng một số tín hiệu từ các cuộc trò chuyện để xác định thời điểm gửi cảnh báo xung đột, bao gồm thời gian trả lời bình luận và lượng bình luận trên một bài đăng. Ông cho biết một số quản trị viên đã thiết lập cảnh báo từ khóa có thể phát hiện các chủ đề có thể dẫn đến tranh luận.

Nếu một quản trị viên nhận được cảnh báo xung đột, họ có thể thực hiện các hành động làm chậm các cuộc trò chuyện với hi vọng làm dịu người dùng. Những động thái này có thể bao gồm hạn chế tạm thời tần suất đăng bài bình luận của một số thành viên trong nhóm và xác định tốc độ nhận xét có thể được thực hiện trên các bài đăng cá nhân.

Trong một cuộc tranh cãi giả mà Facebook thực hiện, một người dùng đã nóng giận với những từ ngữ tranh cãi khó nghe, như "những con chó của người khác", "im đi, thật ngu ngốc", "nếu điều vô nghĩa này xảy ra, tôi sẽ rời khỏi nhóm"... Một thông báo sẽ được gửi đến quản trị viên với thanh tiêu đề: "Cảnh báo kiểm duyệt". Bên dưới là những từ khoá có liên quan đến vấn đề đang được tranh cãi. Tiếp đến là một khung cho phép quản trị viên cài đặt thời gian hạn chế bình luận với các tài khoản. Ngoài ra công cụ này còn cho phép hạn chế bình luận của một thành viên theo các chủ đề trong khoảng thời gian tính bằng ngày hoặc thậm chí nhiều năm.ÂI

Công cụ này vẫn đang trong giai đoạn thử nghiệm, Facebook chưa tuyên bố thời gian phát hành chính thức cho người dùng toàn cầu.', N'Thuật toán AI được Facebook thử nghiệm có thể phát hiện những cuộc tranh cãi trong hội nhóm, sau đó báo cáo cho quản trị viên để họ kịp thời can thiệp.', N'5.jpg', N'Khương Nha (theo CNN)', CAST(N'2021-06-20' AS Date))
INSERT [dbo].[Digital] ([id], [title], [content], [description], [image], [author], [createdDate]) VALUES (6, N'Samsung thuê kỹ sư Apple thiết kế chip xử lý', N'Một trong số những người được Samsung mời về từng có vai trò quan trọng trong việc phát triển chip xử lý trên các thiết bị của Apple. Người này yêu cầu được toàn quyền kiểm soát và lựa chọn đội ngũ kỹ sư tham gia vào quá trình thiết kế chip của Samsung. Ngoài ra, Samsung cũng mời các cựu kỹ sư của AMD tham gia dự án.
Trước đó, Samsung đã đóng cửa bộ phận thiết kế CPU vì chip xử lý sử dụng lõi Mongoose có hiệu năng thấp hơn so với lõi ARM. Hãng này cũng không hài lòng với hiệu năng của dòng chip sử dụng lõi Cortex-X mới nên đang tìm cách phát triển một dòng chip nhanh hơn. Hãng điện tử Hàn Quốc đã làm việc với Google để thiết kế một chip mới, đồng thời đang kết hợp với AMD đưa GPU RDNA2 lên chip Exynos.

Qualcomm cũng từng ngưng sử dụng chip xử lý với lõi tùy chỉnh, nhưng sau khi mua lại Nuvia - công ty được thành lập bởi các cựu kỹ sư Apple từng tham gia thiết kế chip M1, A14, hãng cũng quay lại thiết kế các lõi xử lý riêng của mình.

Việc sử dụng các cựu kỹ sư của Apple cho thấy cả Samsung và Qualcomm sẽ sớm đưa ra chip xử lý mới có hiệu suất tốt hơn, tương đương chip xử lý của Apple.', N'Không hài lòng với hiệu năng của các dòng chip hiện tại, Samsung đang mời gọi các cựu kỹ sư của Apple và AMD phát triển chip mới cho mình.', N'6.jpg', N'Anonymous', CAST(N'2021-06-19' AS Date))
INSERT [dbo].[Digital] ([id], [title], [content], [description], [image], [author], [createdDate]) VALUES (7, N'Khác biệt trong văn hoá làm việc từ xa của Việt Nam và thế giới', N'Trong khi các công ty Việt Nam đặc biệt quan tâm đến hiệu suất công việc khi làm từ xa, các tập đoàn toàn cầu chú ý hơn về trải nghiệm của nhân viên khi ở nhà.

Cả bốn diễn giả trong CTO Talks ngày 24/6 trên VnExpress đều nhận định làm việc từ xa sẽ là xu hướng, buộc các công ty phải thay đổi và người lao động phải thích nghi. Tuy nhiên, vẫn có những khác biệt về văn hoá làm việc giữa các doanh nghiệp trong nước và quốc tế.

Ông Hoàng Nam Tiến - Chủ tịch HĐQT công ty FPT Telecom - cho biết vấn đề đầu tiên mà tổ chức của ông quan tâm khi chuyển sang chế độ làm việc từ xa là đảm bảo năng suất và chất lượng lao động. "Trước đây ban điều hành của công ty họp giao ban mỗi tuần một lần, nhưng khi phải làm từ xa, chúng tôi quyết định họp mỗi ngày vào đúng 8h. Vì ban điều hành họp nên các cấp thấp hơn cũng phải có mặt đúng giờ để chuẩn bị, vì có thể bị hỏi đến bất cứ lúc nào. Sau đó, chúng tôi phát hiện ra việc họp hàng ngày giúp đẩy nhanh tốc độ quyết định, ngay hôm sau đã có kết quả. Trong khi trước đây, nếu họp mỗi lần một tuần, tốc độ này chậm hơn đáng kể", lãnh đạo FPT Telecom chia sẻ.
Chung quan điểm với ông Nam Tiến, Chủ tịch HĐQT công ty Misa - ông Lữ Thành Long - cho biết, sau khi giải quyết được các vấn đề về hạ tầng, công cụ làm việc, công ty phải đảm bảo các đội nhóm vẫn có thể tương tác khi làm việc từ xa, đảm bảo việc chấm công, hiệu suất làm việc ở nhà không giảm đi. Theo ông Long, không phải ngẫu nhiên mà mấy trăm năm qua, các công ty phải chi trả một khoản tiền lớn để thuê văn phòng, tạo môi trường để nhân viên làm việc cùng nhau.

"Ngay sau khi dịch bệnh diễn ra, Ban lãnh đạo phải ngồi lại để tìm hiểu văn hoá làm việc của người Á Đông, của nhóm nhân viên trẻ, đảm bảo mọi người làm việc ở nhà có cảm giác là mình đang làm việc chứ không phải đang ở nhà. Nhiều biện pháp được đưa ra, như điểm danh trực tuyến, mọi người phải ăn mặc chỉnh chu, ngồi trước bàn làm việc, bật camera, chào hỏi nhau như cảm giác làm việc tại cơ quan", ông Long chia sẻ về cách duy trì hiệu suất công việc của nhân viên Misa trong đại dịch.

Trái với hai công ty công nghệ Việt Nam, đại diện Google cho biết, việc họ lo lắng nhất khi làm việc từ xa không phải hiệu suất, mà là làm sao để nhân viên của họ cân bằng giữa công việc và cuộc sống. Nhân viên Google được cho nghỉ phép 12 tuần để sắp xếp cuộc sống cá nhân. Tiếp đó, đội ngũ quản lý ngồi lại cùng nhân viên của mình để lắng nghe xem họ có khó khăn, lo lắng gì khi làm việc từ xa để hỗ trợ. Sau đó, mọi người cùng chia sẻ kế hoạch lớn nhất của họ, điều họ cho là sẽ có ý nghĩa trong đại dịch.

"Những kế hoạch trước đại dịch có thể phải gạt hết qua một bên. Mọi người sẽ lựa chọn ít công việc hơn nhưng đó là những dự án quan trọng với cộng đồng, khách hàng. Trên thực tế, nhu cầu sử dụng các dịch vụ của Google trong đại dịch đều tăng, nhưng đội ngũ làm việc vẫn đáp ứng vượt kỳ vọng của người dùng, hoạt động tốt hơn dự kiến", bà Hà Lâm Tú Quỳnh - Giám đốc Truyền thông Google APAC, Việt Nam - chia sẻ.

Trong khi nhiều công ty đưa ra các bộ quy tắc dành cho nhân viên làm việc từ xa nhằm giữ mọi thứ gần giống nhất với hoạt động văn phòng truyền thống, Google cố gắng tạo ra một môi trường làm việc cởi mở hơn. Các cuộc họp về công việc có thể được chuyển thành buổi làm bánh trực tuyến hoặc gấp giấy nghệ thuật - Origami. Công ty cũng đặc biệt quan tâm đến tâm lý của nhân viên khi phải làm việc từ xa. Họ sắp xếp đội ngũ bác sĩ tâm lý, tăng ngày nghỉ phép để đảm bảo nhân viên không bị khủng hoảng tâm lý khi phải rời xa văn phòng.

Tương tự ở AvePoint - công ty công nghệ có văn phòng tại Singapore - một trong những ưu tiên hàng đầu của họ là lựa chọn giải pháp, công cụ làm việc từ xa tốt nhất cho trải nghiệm của nhân viên. Các chính sách đào tạo từ xa và các kế hoạch đề ra đều hướng đến yếu tố cá nhân nhằm phát triển nhân viên.

"Văn hoá công ty trong giai đoạn mới không phải ban lãnh đạo đẩy việc xuống, nhân viên phải làm theo. Mà mỗi tháng, giữa quản lý và nhân viên đều ngồi lại với nhau để đánh giá lại công việc, nguyện vọng điều chỉnh mục tiêu cá nhân. Hệ thống AI trong quản lý còn gợi ý cho đội nhóm kế hoạch phù hợp theo từng giai đoạn dựa trên nhu cầu thực tế của nhân viên và công ty", bà Trần Thị Hồng Vân, Giám đốc điều hành AvePoint Global - Việt Nam, chia sẻ.

Nhận định về xu hướng làm việc, cả bốn diễn giả đều cho rằng Hybrid Workplace - mô hình làm việc kết hợp - sẽ phổ biến trong tương lai.

Theo ông Hoàng Nam Tiến, trước đây suy nghĩ chung là mọi người phải ngồi lại với nhau, gặp mặt trực tiếp thì mới ra vấn đề, mới được việc. Hơn một năm làm việc từ xa cho thấy mọi người đã quen dần. Các cuộc họp trực tuyến được chuẩn bị tài liệu vô cùng chi tiết, đến khi gặp mặt mọi người chỉ nói thêm những vấn đề bên lề, đẩy nhanh việc ký kết, hợp tác.

Đồng quan điểm với lãnh đạo FPT Telecom, ông Lữ Thành Long cho biết Việt Nam đã sẵn sàng khung pháp lý cho chữ ký số. Các lãnh đạo doanh nghiệp Việt đã có thể ký kết hợp đồng, giao dịch ngân hàng bằng chữ ký số mà không cần gặp mặt trực tiếp. Đây là một trong những yếu tố giúp doanh nghiệp có thể nâng cao năng lực cạnh tranh trong thời kỳ mới.

Theo các lãnh đạo công nghệ, mô hình kết hợp làm việc tại nhà với đến văn phòng không chỉ giúp tiết kiệm chi phí, mặt bằng mà còn giúp người lao động có thêm thời gian cho gia đình khi không phải mất thời gian di chuyển.

Tuy nhiên, giá trị cốt lõi của văn phòng truyền thống là không thể thay thế. Ông Hoàng Nam Tiến cho rằng chỉ 30% kiến thức người lao động được đào tạo tại trường học, 70% có được là tích luỹ trong quá trình làm việc và tương tác với đồng nghiệp, khách hàng. Do đó, các công ty không nên quá nóng vội trong việc lựa chọn phương thức làm việc "hybrid" khi dịch bệnh qua đi. Tuỳ vào quy mô tổ chức và mức độ sẵn sàng của doanh nghiệp về nhân sự, cơ sở hạ tầng, công nghệ, lãnh đạo sẽ chọn cho doanh nghiệp phương thức phù hợp nhất.
', N'Trong khi các công ty Việt Nam đặc biệt quan tâm đến hiệu suất công việc khi làm từ xa, các tập đoàn toàn cầu chú ý hơn về trải nghiệm của nhân viên khi ở nhà.', N'8.png', N'Khương Nha', CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Digital] ([id], [title], [content], [description], [image], [author], [createdDate]) VALUES (8, N'Phổ cập công nghệ số cho hàng triệu trẻ em Việt Nam', N'STEAM là chương trình giáo dục tương tác đa chiều đang được triển khai phổ biến ở nhiều nước, trong đó có Việt Nam, kết hợp giữa khoa học, công nghệ, kỹ thuật, nghệ thuật và toán học. Ngày 15/6, tổ chức STEAM for Vietnam đã bắt tay với Quỹ Nhi đồng Liên Hiệp Quốc (UNICEF) nhằm tận dụng công nghệ để thu hẹp khoảng cách số và thúc đẩy cơ hội phổ cập công nghệ số cho hàng triệu trẻ em và thiếu niên Việt Nam.

"Tổ chức STEAM for Vietnam đã huy động nguồn nhân lực tốt nhất để sáng tạo ra nguồn tài liệu học tập cấp tiến, đầy hứng thú, dưới dạng nguồn mở trong các lĩnh vực mà trẻ em gái thường bị bỏ lại phía sau", bà Rana Flowers, Trưởng đại diện UNICEF Việt Nam, cho biết. "Việc học tập này liên quan đến khoa học, công nghệ, kỹ thuật, nghệ thuật và toán học với phương pháp học tập thúc đẩy sự sáng tạo, tư duy phản biện, kỹ năng giải quyết vấn đề và hơn thế nữa. Chúng tôi mong muốn mở rộng phạm vi tiếp cận các nguồn lực sáng tạo này đến mọi trẻ em ở mọi nơi, đặc biệt là trẻ em gái".
Theo các chuyên gia, phổ cập công nghệ số và học tập sáng tạo cần được bắt đầu từ khi trẻ còn nhỏ và tiếp tục trong toàn bộ những năm học tiếp theo để có thể thực hành và tích lũy các kỹ năng cần thiết cho nghề nghiệp trong tương lai.

"Chúng tôi tin nền tảng vững chắc của giáo dục STEAM sẽ đóng một vai trò quan trọng trong sự thành công của thế hệ tiếp theo của Việt Nam trên thị trường toàn cầu. Tổ chức STEAM for Vietnam mong muốn mang đến chương trình giáo dục STEAM hiện đại cho trẻ em từ 6 đến 18 tuổi thông qua các công nghệ tiên tiến, mô hình giáo dục sáng tạo và chuyên môn của giáo viên", Tiến sĩ Trần Việt Hùng, Giám đốc điều hành STEAM for Vietnam, nói.

Chương trình hợp tác được kỳ vọng sẽ góp phần xây dựng các giải pháp học tập trực tuyến được công nhận trên toàn quốc và quá trình chuyển đổi số của hệ thống giáo dục tại Việt Nam.

STEAM for Vietnam được thành lập vào tháng 5/2020 tại Mỹ với mục đích mang giáo dục STEAM miễn phí đến với người Việt. Sau một năm, tổ chức đã phát triển thành công hệ sinh thái công nghệ và triển khai các mô hình giáo dục mới cho 20.000 học sinh tại Việt Nam, như khóa học về tư duy tính toán, khoa học máy tính và robot...', N'Tổ chức STEAM for Vietnam hợp tác cùng UNICEF để thu hẹp khoảng cách kỹ thuật số cho trẻ em Việt Nam.', N'9.jpg', N'Minh Minh', CAST(N'2021-06-15' AS Date))
INSERT [dbo].[Digital] ([id], [title], [content], [description], [image], [author], [createdDate]) VALUES (9, N'Apple tiến vào lãnh thổ của Facebook', N'Cuộc chiến giữa Apple và Facebook vừa sang một trang mới khi iOS 15 chính thức phát hành tại WWDC 2021. Với những tính năng mới trên hệ điều hành của mình, Apple đang đặt nền móng cho một loạt tính năng xã hội.
Lần đầu tiên trong lịch sử, người dùng iPhone có thể thực hiện cộc gọi video FaceTime với người dùng Android và Windows chứ không chỉ giới hạn trong hệ điều hành iOS như trước đây.

Ngoài ra, iMessage cũng được cải tiến, các tính năng mới sẽ cho phép người dùng dễ dàng chia sẻ liên kết web, hình ảnh, nhạc trên Apple Music và các bài báo trên Apple News với người dùng trong danh bạ.

Đây vốn dĩ là những tính năng được yêu thích trên Facebook, Instagram nhưng được chú ý hơn đến quyền riêng tư. Giới công nghệ đánh giá đây là bước tiến quan trọng của Apple khiến Facebook phải dè chừng. Sức mạnh của iOS đến từ hơn một tỷ thiết bị chạy iOS trên toàn cầu đã được cài sẵn FaceTime, iMessage.

Trong bối cảnh Facebook đang gặp khủng hoảng về niềm tin của người dùng và bị chính quyền nhiều nước đặt trong tầm ngắm, bước đi mới của Apple càng giúp người dùng có thêm lý do để rời bỏ nền tảng của Mark Zuckerberg. "Ba năm qua tôi đã xoá Facebook, chỉ giữ lại Messenger để nhắn tin. Nhưng giờ đây iMessage đã bổ sung đầy đủ tính năng, không việc gì tôi phải cài thêm nền tảng nhắn tin của Facebook nữa", Pranay Pathole, một lập trình viên bình luận trên Reddit.

Đáp lại động thái của Apple, Facebook cũng khởi động một chiến dịch đánh vào "thuế 30%". Trong một thông báo gửi đến người dùng, Mark Zuckerberg khẳng định: Trước 2023, Facebook sẽ không tính phí với người sáng tạo nội dung. Cụ thể, với các sự kiện trực tuyến trả phí của Facebook, đăng ký của người hâm mộ, huy hiệu và các dịch vụ tin tức sắp tới đều sẽ miễn phí cho người sáng tạo. Nhiều thông tin cho biết, Facebook sẽ áp dụng mô hình hoa hồng, nhưng Zuckerberg đã hứa rằng phần trăm hoa hồng mà Facebook thu sẽ thấp hơn mức 30% mà Apple đang áp dụng.

Theo quan điểm của Zuckerberg, hai hình thức chia sẻ mạng xã hội trong tương lai là giao tiếp riêng tư, chẳng hạn gửi tin nhắn trong các ứng dụng, như WhatsApp và Messenger; giao tiếp công khai, như các bài đăng trên Instagram hoặc Facebook.

Theo giới phân tích, nếu CEO Facebook dự đoán đúng, thế giới Internet sẽ có rất nhiều biến đổi sau khi Apple phát hành iOS 15. Người dùng giờ đây có thể dễ dàng chia sẻ hình ảnh, tin nhắn video mà không phải đánh đổi dữ liệu cá nhân khi đăng nhập Facebook, Instagram. Xét về khía cạnh này, cửa thắng của Apple rộng mở hơn nhiều so với đối thủ.', N'iOS 15 mở ra nhiều tính năng cho phép người dùng có thể hoạt động như trên mạng xã hội Facebook, Instagram nhưng bảo đảm hơn về quyền riêng tư.', N'10.jpg', N'Khương Nha', CAST(N'2021-06-11' AS Date))
SET IDENTITY_INSERT [dbo].[Digital] OFF
USE [master]
GO
ALTER DATABASE [DigitalDB] SET  READ_WRITE 
GO
