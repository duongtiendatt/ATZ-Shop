CREATE DATABASE [ClothesShop]
GO
USE [ClothesShop]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[MaSize] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](255) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NULL,
	[HoTenNN] [nvarchar](255) NULL,
	[DienThoaiNN] [nvarchar](20) NULL,
	[EmailNN] [nvarchar](255) NULL,
	[DiaChiNN] [nvarchar](255) NULL,
	[GhiChu] [ntext] NULL,
	[TongTien] [int] NULL,
	[NgayTao] [date] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[NoiDung] [ntext] NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhMuc] [int] NULL,
	[TenSanPham] [nvarchar](255) NULL,
	[AnhSanPham] [nvarchar](255) NULL,
	[GiaBan] [int] NULL,
	[GiaSale] [int] NULL,
	[MoTa] [ntext] NULL,
	[GioiTinh] [int] NULL,
	[TrangThai] [int] NULL,
	[NamSanXuat] [int] NULL,
	[NgayTao] [date] NULL,
	[HangSanXuat] [nvarchar](255) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPhamSize]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamSize](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NULL,
	[MaSize] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_SanPhamSize] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Size]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[MaSize] [int] IDENTITY(1,1) NOT NULL,
	[TenSize] [nvarchar](5) NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 09/05/2019 8:45:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[NgaySinh] [date] NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[TrangThai] [int] NULL,
	[IsAdmin] [int] NULL,
	[IdAspNetUser] [nvarchar](128) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201904031029097_InitialCreate', N'ClothesShop.Web.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C6D6FE33612FE7E40FF83A04FED21B5F272BBD80BEC16A993F482DBBC609DEDF5DB8296685B588952452A4D70E82FBB0FF793EE2FDC50A264892F7AB115DB29165858E4F099E170480E87C3FCEF3FFF1DFFF81C06D6134EA81F91897D323AB62D4CDCC8F3C97262A76CF1FD07FBC71FBEF9CBF8CA0B9FAD5F0ABA334E072D099DD82BC6E273C7A1EE0A87888E42DF4D221A2DD8C88D42077991737A7CFC77E7E4C4C100610396658D3FA584F921CE3EE0731A1117C72C45C16DE4E1808A72A89965A8D61D0A318D918B27F63488D80AD3D92A8A47FFC2F351DEC2B62E021F8134331C2C6C0B111231C440D6F3CF14CF581291E52C8602143CBEC418E81628A058F4E17C4DDEB53BC7A7BC3BCEBA6101E5A69445614FC09333A11F476EBE9196ED527FA0C12BD0347BE1BDCEB438B16F3C9C157D8A025080CCF07C1A249C7862DF962C2E687C87D9A86838CA21AF1380FB3D4ABE8EAA884756E77647A53D9D8E8EF9BF236B9A062C4DF084E094252838B21ED279E0BBFFC42F8FD1574C266727F3C5D98777EF9177F6FE6FF8EC5DB5A7D057A0AB1540D14312C53801D9F0A2ECBF6D39F5768EDCB06C5669936B056C09A6866DDDA2E78F982CD90A26CDE907DBBAF69FB1579408E3FA4C7C9849D08825297CDEA54180E6012EEB9D469EFCFF06AEA7EFDE0FC2F50E3DF9CB6CE825FE30711298579F7090D5D2951FE7D3AB36DE5F04D9751285FCBB6E5F79ED975994262EEF4C64247944C912B3BA7463676DBC9D4C9A430D6FD605EAE19B369754356F2D29EFD02633A160B1EBD950C8FBBA7C3B5BDC451CC3E065A6C535D26470FA0D6B24218081D4E9D62674D2D5840874EDCFBC225E85C80F0658123B70018F64E127212E7BF953040688486F991F10A5B02278FF4074D5203AFC1C40F41976D3040C75C65018BF3AB7875544F05D1ACEB9FDEF8ED76043F3F87B748D5C16255784B7DA1AEF63E47E8D527645BC4BC4F067E61680FCF3D10FBB030C22CE85EB624AAFC198B1378DC0E12E006F083B3BED0DC717A97DBB24D300F9A1DE279196D32F05E9DA2FD15328BE89814CE79F3489FA315AFAA49BA805A959D49CA2555441D657540ED64D524169163423689533A71ACCE3CB466878972F833D7C9F6FBBCDDBB41654D438831512FF8C094E6019F31E10633821EB11E8B26EECC359C8868F337DF5BD29E3F40B0AD2A1596D341BB24560F8D990C11EFE6CC8C484E227DFE35E49878350410CF09DE8F567ACF6392749B6EBE950EBE6AE99EF660D304D970B4A23D7CF6681260426021875F9C187B3DAA319796FE48808740C0CDDE75B1E9440DF6CD9A8EEC9250E30C3D6859B8708A788BAC853D5081DF27A0856ECA81AC1D69191BA707F557882A5E3843742FC104461A6FA84A9D3C227AE1FA3A0554B52CB8E5B18EF7BC943AEB9C431269C61AB26BA30D70742B800251F6950DA3434762A16D76C8806AFD534E66D2EEC7ADC95F8C44E6CB2C57736D8A5F0DF5EC5309B35B603E36C564917018C41BD7D18A838AB743500F9E07268062A9D980C062A5CAA9D18685D637B30D0BA4ADE9C81E647D4AEE32F9D570FCD3CEB07E5DD6FEB8DEADA836DD6F47160A699FB9ED086410B9CA8E67939E795F899690E6720A7389F51E1EACA26C2C16798D543366B7F57EB873ACD20B2113501AE0DAD05545C072A40CA84EA215C11CB6B944E78113D608BB85B23AC58FB25D88A0DA8D8D56BD10AA1F9F25436CE4EA78FB267A5352846DEE9B050C1D11884BC78D53BDE4129A6B8ACAA982EBE701F6FB8D23131180D0A6AF15C0D4A2A3A33B8960AD36CD792CE21EBE3926DA525C97D3268A9E8CCE05A1236DAAE248D53D0C32DD84A45F52D7CA0C956443ACADDA6AC1B3B79C69428183B86D4AAF12D8A639F2C2BA956A2C49A893CABEF67FD938FC21CC371A92607A994B6E4C4A2042DB1540BAC41D26B3FA1EC123134473CCE33F542854CBBB71A96FF826575FB5407B1D8070A6AFEBB88F16A2FF16BFBADEA90089C6BE865C8BD9A2C94AEB1017D738BA7BFA100259AE8FD340AD290989D2C73EBFC0EAFDA3E2F5111C68E24BFE244291A535CDDBAFA3B0D8E3A31061CA8D28FD97CB0CC102695175E6855E926CFD48C5204AAAA28A6E0D5DE06CFE4D0F41E30D95FEC3F5EAD08AF33BF44924A154014F5C4A8E439286095BAEEA8F554942A66BDA63BA2946F528594AA7A4859CD2AA90959ADD808CFA0513D45770E6A1E49155DADED8EACC928A9426BAA37C0D6C82CD77547D5249D548135D5DDB1D71928F2427AC03B98F114B3D516961F76B7DBC30C18AFB32A0EB30556EEF4AB4095E29E58E2D65E0113E5076951C613DF561695C739B6B32803867905AADD88D717A0C66B7C3366ED9ABBB6C8375DF39BF1FAD9EDAB5A8772E893494AEEE5E14F3AE48DC581ABC3231BF9049693D856A146D8E05F28C3E188138C66BF05D3C0C77C392F086E11F11798B23CB5C33E3D3E3995DEE81CCE7B1987522FD01C584D8F66EA63B6832C2DF284127785123567628B37256B50251C7D433CFC3CB1FF9DB53ACF221BFC57567C64DDD0CFC4FF2D858AC724C5D61F6A0EE83039F61D5E759482FEF1269E4B7457F9CDAF5FF2A647D67D02D3E9DC3A9614BDC9F0D71F51F492266FBA85341B3FAD78BBB3ADF65E418B2ACD96CD9F27CC7D36C8D38442CA6F43F4FC5D5FD1B4CF0FB642D43C31180A6F10159A9E106C82657C3EE0C127CB9E0FF4EBACFE39C126A2199F12F8A43F98FC90A0FB3254B4DCE33EA43934ED6249CAF4DC9A88BD5556E6BEF726255F7BAB89AEE664F7801B34EF7A3B17E58DE5330FB6756AD29507C3DEA7DDBF7A8EF2A1A425AF9DF6FD6623EF3201B9E172E94F95777C0099729ACC9FFD6717EFDAD64C51E0034FD1EC97437C60C626B6F9FD670AEFDAD84C01E20337B65EF9C007666BFBDA3FF76C699DB7D0BD67F7AA894A86DB1C5D14B92D7B370FB9C3F17F1E8111E41E65FEE8529F2ED694EADAC2704D62666ACE5393192B1347E1AB5034B3EDD757B1E1377656D034B335647736F116EB7F236F41D3CCDB9033B98FBC636DD6A22E17BC651D6B4AA57A4B79C6B59EB4A4B5B7F9AC8D57F36F29AD7810A5D4668FE176F9ED64110FA29221A74E8FAC61F5A218F6CECADF6C84FD9BFACB3504FF0B8E04BBB55DB3A4B9218BA8D8BC25890A122942738B19F2604BBD4898BF402E836A1E80CE5E8D67413D7E0D32C7DE0DB94F599C32E8320EE7412DE0C59D8026FE596A745DE6F17DCCBFE8105D00317D1EB8BF273FA57EE095725F6B62420608EE5D88702F1F4BC6C3BECB9712E92E221D8184FA4AA7E81187710060F49ECCD013DE443630BF8F7889DC977504D004D23E1075B58F2F7DB44C504805C6BA3D7C820D7BE1F30FFF07BFF554A2BA540000, N'6.2.0-61023')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'065fac1e-3b3c-4546-8b03-4c8ac23e6597', N'nguyent.nam.97@gmail.com', 0, N'AI24WKgHDmEmPKunW0nwVQbw13cW1u/lJlkY7D6dJXD65Z76OCGv9xHTsj7kW6b4tw==', N'578e9681-8f65-4508-9152-601e22dbbca9', NULL, 0, 0, NULL, 1, 0, N'tr0i0i')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3b8cf802-7cd5-419f-b3dc-8929cb6c2000', N'123123123a@gmail.com', 0, N'ALiRVL0+qMoj9GWJUHjIKoajM0GSnU6aSKgj504g9XkYoUIx0I+gZhQ4qlOCs4Lnpg==', N'00588fd0-eb9c-4da4-af84-7d512a00cb33', NULL, 0, 0, NULL, 1, 0, N'ThienThien')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'73eb040c-2383-4bdc-b874-67e2c47cf51a', N'kiem@gmail.com', 0, N'AITE7cFURwjsXrStezJLLnRXo5H69Lo2lW09f51qAWOZJPIPmPbFE4/em56T6b4P+w==', N'4de096c0-d0b4-42cd-b9b7-b5d322876beb', NULL, 0, 0, NULL, 1, 0, N'taikhoan')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'807bd98f-bb8f-4b91-9a46-af14cc7e03a2', N'123123a@gmail.com', 0, N'AFvplfCLQ7hWo9HJixKFe2Vj9MyTtILuWBMXjvXS+ZaB76rlg5ztNXhxPO0XmQ0Aww==', N'a14939eb-50f7-4789-b109-e026a47a2324', NULL, 0, 0, NULL, 1, 0, N'abc')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c01cbbfe-c20a-4024-96e3-6d3147ba9a69', N'namnt@gmail.com', 0, N'AFBiMs3V/z205zcDIL2/wWU8aJxro9nlj91oTYZhPEtRN6FvbxUlzZpsSi0ZBT+wxw==', N'c93c11c6-2eec-4a80-a0d0-fa9945b794d4', NULL, 0, 0, NULL, 1, 0, N'namnt')
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([ID], [MaDon], [MaSanPham], [MaSize], [SoLuong]) VALUES (1, 5, 2, 2, 1)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDon], [MaSanPham], [MaSize], [SoLuong]) VALUES (2, 6, 2, 2, 2)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDon], [MaSanPham], [MaSize], [SoLuong]) VALUES (3, 6, 8, 1, 1)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDon], [MaSanPham], [MaSize], [SoLuong]) VALUES (4, 7, 2, 3, 3)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (1, N'Hàng mới về')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'Hàng đang sale')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (3, N'Thời trang nam')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (4, N'Thời trang nữ')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (5, N'Thời trang trẻ em')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (6, N'Phụ kiện thời trang')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDon], [MaTaiKhoan], [HoTenNN], [DienThoaiNN], [EmailNN], [DiaChiNN], [GhiChu], [TongTien], [NgayTao], [TrangThai]) VALUES (5, NULL, N'Nguyễn Thành Nam', N'0355486361', NULL, N'Hà Nội - Sóc Sơn', NULL, 70000, CAST(N'2019-04-17' AS Date), 2)
INSERT [dbo].[DonHang] ([MaDon], [MaTaiKhoan], [HoTenNN], [DienThoaiNN], [EmailNN], [DiaChiNN], [GhiChu], [TongTien], [NgayTao], [TrangThai]) VALUES (6, 2, N'NamNguyenThanh', N'0355486361', NULL, N'Sóc Sơn ,Hà Nội', NULL, 295000, CAST(N'2019-04-17' AS Date), 2)
INSERT [dbo].[DonHang] ([MaDon], [MaTaiKhoan], [HoTenNN], [DienThoaiNN], [EmailNN], [DiaChiNN], [GhiChu], [TongTien], [NgayTao], [TrangThai]) VALUES (7, NULL, N'Ok Google!', N'0355486361', NULL, N'Hà NỘi', NULL, 210000, CAST(N'2019-05-07' AS Date), 2)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (1, 1, N'Áo sơ mi', N'/Assets/client/image/0072328811_6_1_1.jpg', 170000, NULL, N'Chất liệu katemềm mại, dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (2, 1, N'Mũ lưỡi trai', N'/Assets/client/image/0620693428_1_1_1.jpg', 70000, NULL, N'Chất liệu dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (3, 1, N'Áo len cổ tròn', N'/Assets/client/image/0693401401_6_1_1.jpg', 200000, NULL, N'Chất liệu len co dãn, giữ nhiệt', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (4, 1, N'Áo sơ mi cộc tay', N'/Assets/client/image/1506657441_1_1_1.jpg', 150000, NULL, N'Chất liệu cotton dày dặn, dành cho trẻ em trên 12 tuổi', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (5, 1, N'Áo phông thời trang', N'/Assets/client/image/1701409200_6_1_1.jpg', 100000, NULL, N'Chất liệu co dãn, mặc rất thoáng mát, vừa vặn', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (6, 1, N'Váy thời trang', N'/Assets/client/image/2659560800_6_1_1.jpg', 250000, NULL, N'Chất liệu katemềm mại, dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (7, 1, N'Quần thun kid', N'/Assets/client/image/3251667401_1_1_1.jpg', 130000, NULL, N'Chất liệu len co dãn, giúp dễ dàng vận động, không gò bó', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (8, 1, N'Áo bông kid', N'/Assets/client/image/3597011330_6_1_1.jpg', 170000, NULL, N'Chất liệu len, dệt bằng sợi bông nguyên chất', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (9, 1, N'Quần short nữ', N'/Assets/client/image/3798610800_1_1_1.jpg', 150000, NULL, N'Chất liệu co dãn, mặc rất thoáng mát, vừa vặn, thời trang', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (10, 1, N'Mũ cá tính', N'/Assets/client/image/3920635704_1_1_1.jpg', 80000, NULL, N'Chất liệu dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (11, 1, N'Mũ vành rộng', N'/Assets/client/image/3920638704_1_1_1.jpg', 90000, NULL, N'Chất liệu dày dặn, co dãn tốt, thấm hút mồ hôi, che nắng toàn đầu', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (12, 1, N'Mũ vành rộng', N'/Assets/client/image/3920688807_1_1_1.jpg', 90000, NULL, N'Chất liệu dày dặn, co dãn tốt, thấm hút mồ hôi, che nắng toàn đầu', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (13, 1, N'Mũ lưỡi trai', N'/Assets/client/image/3920698800_1_1_1.jpg', 80000, NULL, N'Chất liệu dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát., phù hợp với trẻ em trên 15 tuôi', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (14, 1, N'Áo hoodie', N'/Assets/client/image/4087405707_6_1_1.jpg', 155000, NULL, N'Chất liệu len co dãn, giúp dễ dàng vận động, không gò bó', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (15, 1, N'Váy chéo kid', N'/Assets/client/image/4152606330_1_1_1.jpg', 130000, NULL, N'Chất liệu katemềm mại, dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (16, 1, N'Quần bò kid', N'/Assets/client/image/4676659427_1_1_1.jpg', 150000, NULL, N'Chất liệu cotton dày dặn, dành cho trẻ em trên 12 tuổi', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (17, 1, N'Quần đùi kid', N'/Assets/client/image/4873696812_1_1_1.jpg', 70000, NULL, N'Chất liệu co dãn, mặc rất thoáng mát, vừa vặn, thời trang', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (18, 1, N'Áo phông nữ', N'/Assets/client/image/5580044520_6_1_1.jpg', 80000, NULL, N'Chất liệu co dãn, mặc rất thoáng mát, vừa vặn', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (19, 1, N'Quần jean thời trang', N'/Assets/client/image/6045481436_6_1_1.jpg', 250000, NULL, N'Chất liệu cotton 100%, dày dặn', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (20, 1, N'Áo sơ mi kẻ caro', N'/Assets/client/image/6608425300_6_1_1.jpg', 150000, NULL, N'Chất liệu katemềm mại, dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (21, 2, N'Áo len black', N'/Assets/client/image/0458300401_6_1_1.jpg', 200000, 155000, N'Chất liệu len co dãn, giữ nhiệt', 0, 1, 2019, CAST(N'2019-03-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (22, 2, N'Áo phông kẻ', N'/Assets/client/image/0526401707_6_1_1.jpg', 130000, 100000, N'Chất liệu co dãn, mặc rất thoáng mát, vừa vặn', 0, 1, 2018, CAST(N'2018-03-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (23, 2, N'Áo phông thời trang', N'/Assets/client/image/0679407044_6_1_1.jpg', 100000, 50000, N'Chất liệu co dãn, mặc rất thoáng mát, vừa vặn', 0, 1, 2018, CAST(N'2018-03-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (24, 2, N'Quần jean ZARA', N'/Assets/client/image/0840419445_6_1_1.jpg', 250000, 155000, N'Chất liệu cotton 100%, dày dặn', 0, 1, 2018, CAST(N'2018-03-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (25, 2, N'Váy thời trang', N'/Assets/client/image/2492610300_1_1_1.jpg', 200000, 155000, N'Chất liệu katemềm mại, dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 1, 1, 2018, CAST(N'2018-03-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (26, 2, N'Áo phông kid', N'/Assets/client/image/2795602620_1_1_1.jpg', 70000, 50000, N'Chất liệu co dãn, mặc rất thoáng mát, vừa vặn', 1, 1, 2018, CAST(N'2018-03-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (27, 2, N'Áo khoác choàng', N'/Assets/client/image/3121663401_1_1_1.jpg', 300000, 200000, N'Áo chất liệu vải cao cấp, đi mưa phùn tốt, giữ ấm', 1, 1, 2018, CAST(N'2018-03-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (28, 2, N'Quần đùi TN', N'/Assets/client/image/4316517704_6_1_1.jpg', 130000, 70000, N'Chất liệu kaki, mặc rất thoáng mát, vừa vặn, thời trang', 0, 1, 2018, CAST(N'2018-03-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (29, 2, N'Quần đùi Nam', N'/Assets/client/image/5320437400_6_1_1.jpg', 135000, 70000, N'Chất liệu kaki, mặc rất thoáng mát, vừa vặn, thời trang', 0, 1, 2018, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (30, 2, N'Chân váy', N'/Assets/client/image/5580159099_6_1_1.jpg', 150000, 70000, N'Chất liệu co dãn, mặc rất thoáng mát, vừa vặn', 1, 1, 2018, CAST(N'2018-03-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (31, 2, N'Quần jean', N'/Assets/client/image/5899056427_6_1_1.jpg', 320000, 300000, N'Chất liệu cotton 100%, dày dặn', 0, 1, 2018, CAST(N'2018-03-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (32, 2, N'Áo phông xanh', N'/Assets/client/image/6050003200_6_1_1.jpg', 120000, 70000, N'Chất liệu co dãn, mặc rất thoáng mát, vừa vặn', 0, 1, 2018, CAST(N'2018-03-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (33, 2, N'Thắt lưng nâu', N'/Assets/client/image/6466004707_1_1_1.jpg', 75000, 50000, N'Làm từ da cá sấu, rất bền và thời trang', 0, 1, 2018, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (34, 2, N'Nơ cài vest', N'/Assets/client/image/7347428401_1_1_1.jpg', 75000, 50000, N'Làm từ vải chất lượng, rất bền và thời trang', 0, 1, 2018, CAST(N'2018-03-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (35, 3, N'Áo phông kẻ', N'/Assets/client/image/0526401707_6_1_1.jpg', 130000, NULL, N'Áo phông kiểu cơ bản, dáng suông, cổ tròn, cộc tay.', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (36, 3, N'Áo len cổ tròn', N'/Assets/client/image/0458300401_6_1_1.jpg', 200000, NULL, N'Chất liệu len co dãn, giữ nhiệt', 0, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (37, 3, N'Áo phông NA', N'/Assets/client/image/0679407827_6_1_1.jpg', 130000, NULL, N'Áo phông kiểu cơ bản, dáng suông, cổ tròn, cộc tay.', 0, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (38, 3, N'Quần kaki ', N'/Assets/client/image/0706406606_6_1_1.jpg', 180000, NULL, N'Quần kaki, mặc phù hợp với lứa tuổi trung niên, dễ phối đồ', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (39, 3, N'Áo khoác bomber', N'/Assets/client/image/0706408600_6_1_1.jpg', 250000, NULL, N'Áo khoác bomber cổ tròn bằng vải gân, dài tay, cổ tay co giãn.', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (40, 3, N'Áo len kẻ', N'/Assets/client/image/3597402400_6_1_1.jpg', 200000, NULL, N'Chất liệu len co dãn, giữ nhiệt', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (41, 3, N'Áo khoác bomber', N'/Assets/client/image/3918410600_6_1_1.jpg', 250000, NULL, N'Áo khoác bomber cổ tròn bằng vải gân, dài tay, cổ tay co giãn.', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (42, 3, N'Quần jean NA', N'/Assets/client/image/4164350427_6_1_1.jpg', 300000, NULL, N'Chất liệu cotton 100%, dày dặn', 0, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (43, 3, N'Áo bò NA', N'/Assets/client/image/4454322406_6_1_1.jpg', 270000, NULL, N'Chất liệu cotton 100%, dày dặn', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (44, 3, N'Áo sơ mi caro', N'/Assets/client/image/6608425500_6_1_1.jpg', 150000, NULL, N'Chất liệu katemềm mại, dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 0, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (45, 3, N'Quần jean Black', N'/Assets/client/image/6688350800_6_1_1.jpg', 270000, NULL, N'Chất liệu cotton 100%, dày dặn', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (46, 3, N'Áo len sọc', N'/Assets/client/image/6771409250_6_1_1.jpg', 200000, NULL, N'Chất liệu len co dãn, giữ nhiệt', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (47, 3, N'Áo phao', N'/Assets/client/image/7248402330_6_1_1.jpg', 260000, NULL, N'Làm từ vải chất lượng, rất bền và thời trang', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (48, 3, N'Áo phao BL', N'/Assets/client/image/7248402401_6_1_1.jpg', 260000, NULL, N'Làm từ vải chất lượng, rất bền và thời trang', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (49, 3, N'Áo sơ mi', N'/Assets/client/image/7545285505_6_1_1.jpg', 130000, NULL, N'Chất liệu katemềm mại, dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (50, 4, N'Áo khoác phao', N'/Assets/client/image/0518045733_6_1_1.jpg', 400000, NULL, N'Làm từ vải chất lượng, rất bền và thời trang', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (51, 4, N'Quần jean NA', N'/Assets/client/image/1934041807_6_1_1.jpg', 300000, NULL, N'Chất liệu cotton 100%, dày dặn, bó sát', 1, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (52, 4, N'Váy thời trang', N'/Assets/client/image/2488109040_6_1_1.jpg', 200000, NULL, N'Chất liệu co dãn, mặc rất thoáng mát, vừa vặn', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (53, 4, N'Áo khoác bông', N'/Assets/client/image/2969040704_6_1_1.jpg', 350000, NULL, N'Chất liệu tốt, lót lông cừu', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (54, 4, N'Áo khoác da', N'/Assets/client/image/3461200800_6_1_1.jpg', 400000, NULL, N'Làm từ sợ poly tổng hợp, chống nước tốt', 1, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (55, 4, N'Thun cổ trễ', N'/Assets/client/image/4424021502_6_1_1.jpg', 100000, NULL, N'Áo phông kiểu cơ bản, dáng suông, cổ tròn, cộc tay.', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (56, 4, N'Áo phông kẻ ngang', N'/Assets/client/image/4424301044_6_1_1.jpg', 100000, NULL, N'Áo phông kiểu cơ bản, dáng suông, cổ tròn, cộc tay.', 1, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (57, 4, N'Áo khoác TT', N'/Assets/client/image/5320002505_6_1_1.jpg', 350000, NULL, N'Làm từ vải chất lượng, rất bền và thời trang', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (58, 4, N'Chân váy', N'/Assets/client/image/5580159099_6_1_1.jpg', 200000, NULL, N'Chất liệu katemềm mại, dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (59, 4, N'Jean xẻ gấu', N'/Assets/client/image/5899056427_6_1_1.jpg', 320000, NULL, N'Chất liệu cotton 100%, dày dặn, bó sát', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (60, 4, N'Jean xám TT', N'/Assets/client/image/6688075802_6_1_1.jpg', 320000, NULL, N'Chất liệu cotton 100%, dày dặn, bó sát', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (61, 4, N'Áo phao parka', N'/Assets/client/image/8073223501_6_1_1.jpg', 400000, NULL, N'Làm từ vải chất lượng, rất bền và thời trang', 1, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (62, 4, N'Áo phao parka', N'/Assets/client/image/8073723305_6_1_1.jpg', 400000, NULL, N'Làm từ vải chất lượng, rất bền và thời trang', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (63, 4, N'Chân váy TT', N'/Assets/client/image/9173004800_6_1_1.jpg', 200000, NULL, N'Chất liệu katemềm mại, dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (64, 4, N'Chân váy Tt', N'/Assets/client/image/9173004800_6_1_1.jpg', 200000, NULL, N'Chất liệu katemềm mại, dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 1, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (65, 4, N'Jean Xanh', N'/Assets/client/image/9794043811_6_1_1.jpg', 350000, NULL, N'Chất liệu cotton 100%, dày dặn, bó sát', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (66, 4, N'Zip hồng', N'/Assets/client/image/9878055630_6_1_1.jpg', 200000, NULL, N'Chất liệu katemềm mại, dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (67, 5, N'Áo phông', N'/Assets/client/image/2795602620_1_1_1.jpg', 120000, NULL, N'Áo phông kiểu cơ bản, dáng suông, cổ tròn, cộc tay.', 1, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (68, 5, N'Áo khoác TT', N'/Assets/client/image/3121663401_1_1_1.jpg', 350000, NULL, N'Làm từ vải chất lượng, rất bền và thời trang', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (69, 5, N'Áo sơ mi cộc tay', N'/Assets/client/image/3182664400_1_1_1.jpg', 150000, NULL, N'Chất liệu cotton dày dặn, dành cho trẻ em trên 12 tuổi', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (70, 5, N'Váy đan chéo', N'/Assets/client/image/4152606330_1_1_1.jpg', 180000, NULL, N'Chất liệu katemềm mại, dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (71, 5, N'Quần bò', N'/Assets/client/image/4676659427_1_1_1.jpg', 250000, NULL, N'Chất liệu cotton 100%, dày dặn, bó sát', 0, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (72, 5, N'Áo phông kẻ', N'/Assets/client/image/4805694407_1_1_1.jpg', 130000, NULL, N'Áo phông kiểu cơ bản, dáng suông, cổ tròn, cộc tay.', 0, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (73, 5, N'Áo thu đông', N'/Assets/client/image/4805703401_1_1_1.jpg', 180000, NULL, N'Chất liệu thun, co dãn, cảm giác dễ chịu khi mặc', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (74, 5, N'Áo phông thời trang', N'/Assets/client/image/4889673807_1_1_1.jpg', 130000, NULL, N'Áo phông kiểu cơ bản, dáng suông, cổ tròn, cộc tay.', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (75, 5, N'Áo bò TT', N'/Assets/client/image/5520707401_1_1_1.jpg', 200000, NULL, N'Chất liệu cotton 100%, dày dặn', 1, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (76, 5, N'Quần ống suông', N'/Assets/client/image/6050611526_1_1_1.jpg', 150000, NULL, N'Chất liệu katemềm mại, dày dặn, co dãn tốt, thấm hút mồ hôi, vô cùng thoáng mát.', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (77, 5, N'Chân váy', N'/Assets/client/image/6186601711_1_1_1.jpg', 180000, NULL, N'Làm từ vải chất lượng, rất bền và thời trang', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (78, 5, N'Áo phông nữ', N'/Assets/client/image/6208602807_1_1_1.jpg', 150000, NULL, N'Áo phông kiểu cơ bản, dáng suông, cổ tròn, cộc tay.', 1, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (79, 6, N'Kính thời trang', N'/Assets/client/image/1903004800_1_1_1.jpg', 200000, NULL, N'Gọng bền đẹp, mắt chống tia UV', 3, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (80, 6, N'Cavast', N'/Assets/client/image/2253414401_1_1_1.jpg', 200000, NULL, N'Gọng bền đẹp, mắt chống tia UV', 3, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (81, 6, N'Bông tai', N'/Assets/client/image/2673004400_1_1_1.jpg', 180000, NULL, N'Gọng bền đẹp, mắt chống tia UV', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (82, 6, N'Kính mắt hồng', N'/Assets/client/image/2727009700_1_1_1.jpg', 150000, NULL, N'Gọng bền đẹp, mắt chống tia UV', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (83, 6, N'Mũ nâu', N'/Assets/client/image/3920635704_1_1_1.jpg', 180000, NULL, N'Mũ đội thời trang, tránh nắng hiệu quả', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (84, 6, N'Mũ tròn', N'/Assets/client/image/3920638704_1_1_1.jpg', 150000, NULL, N'Mũ đội thời trang, tránh nắng hiệu quả', 0, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (85, 6, N'Mũ đen', N'/Assets/client/image/3920698800_1_1_1.jpg', 200000, NULL, N'Mũ đội thời trang, tránh nắng hiệu quả', 1, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (86, 6, N'Mũ len', N'/Assets/client/image/4373646803_1_1_1.jpg', 150000, NULL, N'Mũ đội mùa đông, ấm áp', 3, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (87, 6, N'Nơ', N'/Assets/client/image/5410020042_1_1_1.jpg', 200000, NULL, N'Nơ thắt đẹp hoàn hảo', 3, 1, 2019, CAST(N'2019-06-04' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (88, 6, N'Thắt lưng tuya', N'/Assets/client/image/6466004707_1_1_1.jpg', 150000, NULL, N'Đẳng cấp thắt lưng đàn ông', 1, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (89, 6, N'Nơ nâu', N'/Assets/client/image/7347428401_1_1_1.jpg', 180000, NULL, N'Nơ đẹp diệu kì', 3, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (90, 6, N'Mũ vàng', N'/Assets/client/image/9065420300_1_1_1.jpg', 150000, NULL, N'Mũ đội thời trang, tránh nắng hiệu quả', 3, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [AnhSanPham], [GiaBan], [GiaSale], [MoTa], [GioiTinh], [TrangThai], [NamSanXuat], [NgayTao], [HangSanXuat]) VALUES (91, 6, N'Mũ xanh', N'/Assets/client/image/9065421400_1_1_1.jpg', 200000, NULL, N'Mũ đội thời trang, tránh nắng hiệu quả', 3, 1, 2019, CAST(N'2019-04-08' AS Date), N'Nem Fashion')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[SanPhamSize] ON 

INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (1, 1, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (2, 1, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (3, 1, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (4, 1, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (5, 1, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (6, 2, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (7, 2, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (8, 2, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (9, 2, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (10, 2, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (11, 3, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (12, 3, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (13, 3, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (14, 3, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (15, 3, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (16, 4, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (17, 4, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (18, 4, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (19, 4, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (20, 4, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (21, 5, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (22, 5, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (23, 5, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (24, 5, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (25, 5, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (26, 6, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (27, 6, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (28, 6, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (29, 6, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (30, 6, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (31, 7, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (32, 7, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (33, 7, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (34, 7, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (35, 7, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (36, 8, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (37, 8, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (38, 8, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (39, 8, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (40, 8, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (41, 9, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (42, 9, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (43, 9, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (44, 9, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (45, 9, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (46, 10, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (47, 10, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (48, 10, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (49, 10, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (50, 10, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (51, 11, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (52, 11, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (53, 11, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (54, 11, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (55, 11, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (57, 12, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (58, 12, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (59, 12, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (60, 12, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (61, 12, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (62, 13, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (63, 13, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (64, 13, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (65, 13, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (66, 13, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (67, 14, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (68, 14, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (69, 14, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (70, 14, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (71, 14, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (72, 15, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (73, 15, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (74, 15, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (75, 15, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (76, 15, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (77, 16, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (78, 16, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (79, 16, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (80, 16, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (81, 16, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (82, 17, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (83, 17, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (84, 17, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (85, 17, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (86, 17, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (87, 18, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (88, 18, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (89, 18, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (90, 18, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (91, 18, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (92, 19, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (93, 19, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (94, 19, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (95, 19, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (96, 20, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (97, 20, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (98, 20, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (99, 20, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (100, 20, 5, 17)
GO
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (101, 21, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (102, 21, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (103, 21, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (104, 21, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (105, 21, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (106, 22, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (107, 22, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (108, 22, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (109, 22, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (110, 22, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (111, 23, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (112, 23, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (113, 23, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (114, 23, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (115, 23, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (116, 24, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (117, 24, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (118, 24, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (119, 24, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (120, 24, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (121, 25, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (122, 25, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (123, 25, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (124, 25, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (125, 26, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (126, 26, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (127, 26, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (128, 27, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (129, 27, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (130, 27, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (131, 28, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (132, 28, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (133, 28, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (134, 28, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (135, 29, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (136, 29, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (137, 29, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (138, 29, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (139, 30, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (140, 30, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (141, 30, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (142, 30, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (143, 31, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (144, 31, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (145, 31, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (146, 31, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (147, 32, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (148, 32, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (149, 32, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (150, 32, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (151, 32, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (152, 33, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (153, 34, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (154, 35, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (155, 35, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (156, 35, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (157, 35, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (158, 35, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (159, 36, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (160, 36, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (161, 36, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (162, 37, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (163, 37, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (164, 37, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (165, 37, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (166, 37, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (167, 38, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (168, 38, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (169, 38, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (170, 38, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (171, 38, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (172, 39, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (173, 39, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (174, 39, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (175, 39, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (176, 40, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (177, 40, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (178, 40, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (179, 41, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (180, 41, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (181, 41, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (182, 42, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (183, 42, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (184, 42, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (185, 42, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (186, 43, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (187, 43, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (188, 43, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (189, 44, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (190, 44, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (191, 44, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (192, 44, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (193, 44, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (194, 45, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (195, 45, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (196, 45, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (197, 45, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (198, 46, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (199, 46, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (200, 46, 4, 10)
GO
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (222, 46, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (223, 47, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (224, 47, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (225, 47, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (226, 47, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (227, 47, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (228, 47, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (229, 47, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (230, 47, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (231, 47, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (232, 48, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (233, 48, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (234, 48, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (235, 48, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (236, 49, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (237, 49, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (238, 49, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (239, 49, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (240, 50, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (241, 50, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (242, 50, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (243, 51, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (244, 51, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (245, 51, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (246, 51, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (247, 52, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (248, 52, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (249, 52, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (250, 52, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (251, 53, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (252, 53, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (253, 53, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (254, 54, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (255, 54, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (256, 54, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (257, 55, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (258, 55, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (259, 55, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (260, 55, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (261, 55, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (262, 56, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (263, 56, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (264, 56, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (265, 56, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (266, 57, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (267, 57, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (268, 57, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (269, 58, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (270, 58, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (271, 58, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (272, 58, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (273, 59, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (274, 59, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (275, 59, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (276, 59, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (277, 60, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (278, 60, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (279, 60, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (280, 61, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (281, 61, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (282, 61, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (283, 62, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (284, 62, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (285, 62, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (286, 62, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (287, 63, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (288, 63, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (289, 63, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (290, 63, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (291, 64, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (292, 64, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (293, 64, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (294, 64, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (295, 65, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (296, 65, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (297, 65, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (298, 66, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (299, 66, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (300, 66, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (301, 66, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (302, 67, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (303, 67, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (304, 67, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (305, 67, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (306, 68, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (307, 68, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (308, 68, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (309, 68, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (310, 69, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (311, 69, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (312, 69, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (313, 69, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (314, 70, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (315, 70, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (316, 70, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (317, 71, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (318, 71, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (319, 71, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (320, 71, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (321, 72, 1, 30)
GO
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (322, 72, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (323, 72, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (324, 72, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (325, 73, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (326, 73, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (327, 73, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (328, 73, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (329, 74, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (330, 74, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (331, 74, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (332, 74, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (333, 75, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (334, 75, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (335, 75, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (336, 75, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (337, 76, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (338, 76, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (339, 76, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (340, 77, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (341, 77, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (342, 77, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (343, 77, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (344, 78, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (345, 78, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (346, 78, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (347, 78, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (348, 79, 5, 17)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (349, 80, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (350, 81, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (351, 82, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (352, 83, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (353, 83, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (354, 83, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (355, 84, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (356, 84, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (357, 84, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (358, 85, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (359, 85, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (360, 85, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (361, 86, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (362, 86, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (363, 87, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (364, 88, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (365, 89, 1, 30)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (366, 90, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (367, 90, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (368, 90, 4, 10)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (369, 91, 2, 20)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (370, 91, 3, 15)
INSERT [dbo].[SanPhamSize] ([ID], [MaSanPham], [MaSize], [SoLuong]) VALUES (375, 91, 4, 10)
SET IDENTITY_INSERT [dbo].[SanPhamSize] OFF
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([MaSize], [TenSize]) VALUES (1, N'S')
INSERT [dbo].[Size] ([MaSize], [TenSize]) VALUES (2, N'M')
INSERT [dbo].[Size] ([MaSize], [TenSize]) VALUES (3, N'L')
INSERT [dbo].[Size] ([MaSize], [TenSize]) VALUES (4, N'XL')
INSERT [dbo].[Size] ([MaSize], [TenSize]) VALUES (5, N'XXL')
SET IDENTITY_INSERT [dbo].[Size] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [HoTen], [NgaySinh], [Email], [SoDienThoai], [DiaChi], [TrangThai], [IsAdmin], [IdAspNetUser]) VALUES (1, N'Nguyễn Thành Nam', NULL, N'nguyent.nam.97@gmail.com', N'0355486361', N'Hà Nội', 1, 1, N'065fac1e-3b3c-4546-8b03-4c8ac23e6597')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [HoTen], [NgaySinh], [Email], [SoDienThoai], [DiaChi], [TrangThai], [IsAdmin], [IdAspNetUser]) VALUES (2, N'Nam Thành', NULL, N'namnt@gmail.com', N'0355486361', NULL, 1, 0, N'c01cbbfe-c20a-4024-96e3-6d3147ba9a69')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [HoTen], [NgaySinh], [Email], [SoDienThoai], [DiaChi], [TrangThai], [IsAdmin], [IdAspNetUser]) VALUES (3, N'Kiểm nguyễn', NULL, N'kiem@gmail.com', N'0999999', NULL, 1, 0, N'73eb040c-2383-4bdc-b874-67e2c47cf51a')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [HoTen], [NgaySinh], [Email], [SoDienThoai], [DiaChi], [TrangThai], [IsAdmin], [IdAspNetUser]) VALUES (4, N'123123', NULL, N'123123a@gmail.com', N'21312312312', NULL, 1, 0, N'807bd98f-bb8f-4b91-9a46-af14cc7e03a2')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [HoTen], [NgaySinh], [Email], [SoDienThoai], [DiaChi], [TrangThai], [IsAdmin], [IdAspNetUser]) VALUES (5, N'Thiện', NULL, N'123123123a@gmail.com', N'123123213', NULL, 1, 0, N'3b8cf802-7cd5-419f-b3dc-8929cb6c2000')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDon])
REFERENCES [dbo].[DonHang] ([MaDon])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_Size] FOREIGN KEY([MaSize])
REFERENCES [dbo].[Size] ([MaSize])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_Size]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TaiKhoan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMuc] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMuc]
GO
ALTER TABLE [dbo].[SanPhamSize]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamSize_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[SanPhamSize] CHECK CONSTRAINT [FK_SanPhamSize_SanPham]
GO
ALTER TABLE [dbo].[SanPhamSize]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamSize_Size] FOREIGN KEY([MaSize])
REFERENCES [dbo].[Size] ([MaSize])
GO
ALTER TABLE [dbo].[SanPhamSize] CHECK CONSTRAINT [FK_SanPhamSize_Size]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_AspNetUsers] FOREIGN KEY([IdAspNetUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_AspNetUsers]
GO
