USE [master]
GO
/****** Object:  Database [TailerSoft]    Script Date: 04-01-2021 18:26:19 ******/
CREATE DATABASE [TailerSoft]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TailerSoft', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\TailerSoft.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TailerSoft_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\TailerSoft_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TailerSoft] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TailerSoft].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TailerSoft] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TailerSoft] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TailerSoft] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TailerSoft] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TailerSoft] SET ARITHABORT OFF 
GO
ALTER DATABASE [TailerSoft] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TailerSoft] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TailerSoft] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TailerSoft] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TailerSoft] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TailerSoft] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TailerSoft] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TailerSoft] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TailerSoft] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TailerSoft] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TailerSoft] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TailerSoft] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TailerSoft] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TailerSoft] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TailerSoft] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TailerSoft] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TailerSoft] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TailerSoft] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TailerSoft] SET  MULTI_USER 
GO
ALTER DATABASE [TailerSoft] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TailerSoft] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TailerSoft] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TailerSoft] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TailerSoft] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TailerSoft', N'ON'
GO
ALTER DATABASE [TailerSoft] SET QUERY_STORE = OFF
GO
USE [TailerSoft]
GO
/****** Object:  Table [dbo].[tbladminprofile]    Script Date: 04-01-2021 18:26:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbladminprofile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [varchar](50) NULL,
	[profilepic] [varchar](max) NULL,
	[pincode] [bigint] NULL,
	[city] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[state] [varchar](50) NULL,
	[isactive] [bit] NULL,
	[status] [int] NULL,
	[crdt] [datetime] NULL,
	[updt] [datetime] NULL,
	[gender] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
 CONSTRAINT [PK__tbladmin__3214EC0714B3E11B] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbladminreg]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbladminreg](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NULL,
	[lname] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[contactno] [bigint] NULL,
	[pwd] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[userid] [varchar](50) NOT NULL,
	[isactive] [bit] NULL,
	[status] [int] NULL,
	[crdt] [datetime] NULL,
	[updt] [datetime] NULL,
 CONSTRAINT [PK__tbladmin__CBA1B257A1605A00] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblcategory]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblcategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[categoryname] [varchar](50) NULL,
	[isactive] [bit] NULL,
	[status] [int] NULL,
	[crdt] [datetime] NULL,
	[updt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblcontact]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblcontact](
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[subject] [varchar](100) NULL,
	[message] [varchar](500) NULL,
	[isactive] [bit] NULL,
	[status] [int] NULL,
	[crdt] [datetime] NULL,
	[updt] [datetime] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblitems]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblitems](
	[SellerId] [nvarchar](100) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductTitle] [nvarchar](150) NULL,
	[categoryid] [int] NULL,
	[itemprice] [decimal](18, 2) NULL,
	[sellingprice] [decimal](18, 2) NULL,
	[itemdesc] [varchar](500) NULL,
	[itemimage] [varchar](max) NULL,
	[isactive] [bit] NULL,
	[status] [int] NULL,
	[crdt] [datetime] NULL,
	[updt] [datetime] NULL,
	[DOP] [datetime] NULL,
 CONSTRAINT [PK__tblitems__3214EC07C1D3BC45] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblorder]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblorder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[itemid] [int] NULL,
	[userid] [varchar](50) NULL,
	[iscart] [bit] NULL,
	[isorderd] [bit] NULL,
	[isapproved] [bit] NULL,
	[address] [varchar](100) NULL,
	[orderno] [nvarchar](100) NULL,
	[state] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[pincode] [bigint] NULL,
	[email] [varchar](50) NULL,
	[contactno] [bigint] NULL,
	[paymentmode] [varchar](50) NULL,
	[isdelivered] [bit] NULL,
	[crdt] [date] NULL,
	[updt] [date] NULL,
	[deliverydate] [date] NULL,
	[approvaldate] [date] NULL,
 CONSTRAINT [PK__tblorder__3214EC07A43A499F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblpaymentmode]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblpaymentmode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [varchar](50) NULL,
	[orderno] [nvarchar](100) NULL,
	[paymentmode] [varchar](50) NULL,
	[upiid] [varchar](50) NULL,
	[debitcardno] [varchar](50) NULL,
	[isdelivered] [bit] NULL,
	[cvv] [varchar](50) NULL,
	[status] [int] NULL,
	[crdt] [datetime] NULL,
	[updt] [datetime] NULL,
 CONSTRAINT [PK__tblpayme__3214EC07539CA5DF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblreceipt]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblreceipt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [varchar](50) NULL,
	[receiptno] [varchar](50) NULL,
	[orderno] [nvarchar](100) NULL,
	[totalamt] [varchar](50) NULL,
	[isactive] [bit] NULL,
	[status] [int] NULL,
	[crdt] [datetime] NULL,
	[updt] [datetime] NULL,
 CONSTRAINT [PK__tblrecei__3214EC07A225B389] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblstates]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblstates](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](100) NULL,
	[crdt] [datetime] NULL,
	[updt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbluserprofile]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbluserprofile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [varchar](50) NULL,
	[profilepic] [varchar](max) NULL,
	[pincode] [bigint] NULL,
	[city] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[dob] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[isactive] [bit] NULL,
	[status] [int] NULL,
	[crdt] [datetime] NULL,
	[updt] [datetime] NULL,
	[gender] [varchar](50) NULL,
 CONSTRAINT [PK__tbluserp__3214EC07A4582C93] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbluserreg]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbluserreg](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[city] [nvarchar](100) NULL,
	[firstname] [varchar](50) NULL,
	[contactno] [bigint] NULL,
	[pwd] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[userid] [varchar](50) NOT NULL,
	[isactive] [bit] NULL,
	[status] [int] NULL,
	[crdt] [datetime] NULL,
	[updt] [datetime] NULL,
	[lastnamme] [varchar](50) NULL,
 CONSTRAINT [PK__tbluserr__CBA1B25787F830DF] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblwishlist]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblwishlist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[item] [int] NULL,
	[userid] [varchar](50) NULL,
	[iswishlist] [bit] NULL,
	[crdt] [datetime] NULL,
	[updt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblitems]  WITH CHECK ADD  CONSTRAINT [FK__tblitems__catego__4316F928] FOREIGN KEY([categoryid])
REFERENCES [dbo].[tblcategory] ([Id])
GO
ALTER TABLE [dbo].[tblitems] CHECK CONSTRAINT [FK__tblitems__catego__4316F928]
GO
ALTER TABLE [dbo].[tblorder]  WITH CHECK ADD  CONSTRAINT [FK__tblorder__itemid__60A75C0F] FOREIGN KEY([itemid])
REFERENCES [dbo].[tblitems] ([Id])
GO
ALTER TABLE [dbo].[tblorder] CHECK CONSTRAINT [FK__tblorder__itemid__60A75C0F]
GO
ALTER TABLE [dbo].[tblreceipt]  WITH CHECK ADD  CONSTRAINT [FK__tblreceip__useri__339FAB6E] FOREIGN KEY([userid])
REFERENCES [dbo].[tbluserreg] ([userid])
GO
ALTER TABLE [dbo].[tblreceipt] CHECK CONSTRAINT [FK__tblreceip__useri__339FAB6E]
GO
/****** Object:  StoredProcedure [dbo].[sp_adminchangepwd]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_adminchangepwd]
@userid varchar(50),
@oldpwd varchar(50),
@newpwd varchar(50)
as
begin
update tbladminreg set pwd=@newpwd,updt=getdate() where userid=@userid and pwd=@oldpwd
end

GO
/****** Object:  StoredProcedure [dbo].[sp_adminlogin]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_adminlogin] 
@email nvarchar(100),
@pwd varchar(50)
as
begin 
select * from tbladminreg where email=@email and pwd=@pwd

end

GO
/****** Object:  StoredProcedure [dbo].[sp_adminpic]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_adminpic]
@userid varchar(50)
as begin 
select * from tbladminprofile where userid=@userid
end
GO
/****** Object:  StoredProcedure [dbo].[sp_adminprofile]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_adminprofile]
@userid varchar(50),
@dob varchar(50),
@pincode bigint,
@city varchar(50),
@address varchar(100),
@state varchar(50),
@gender char(2)
as
begin
insert into tbladminprofile(
userid,
dob,
pincode,
city,
address,
state,
gender,
isactive,
status,
crdt,
updt
)
values(
@userid,
@dob,
@pincode,
@city,
@address,
@state,
@gender,
0,
0,
getdate(),
getdate()
)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_adminProfiledetails]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[sp_adminProfiledetails]
@userid varchar(50)
as begin 
select * from tbladminprofile where userid=@userid
end
GO
/****** Object:  StoredProcedure [dbo].[sp_adminreg]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_adminreg]
@fname varchar(50),
@contactno bigint,
@lname varchar(50),
@city varchar(50),
@pwd varchar(50),
@email varchar(50),
@userid varchar(50)
as 
begin
insert into tbladminreg(
fname,
lname,
contactno,
city,
pwd,
email,
userid,
isactive,
status,
crdt,
updt
)
values(
@fname,
@lname,
@contactno,
@city,
@pwd,
@email,
@userid, 
0,
0,
getdate(),
getdate()
)
insert into tbladminprofile(
userid,city
)
values(
@userid,@city)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_adminregdetails]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_adminregdetails] 
@userid varchar(50)
as begin 
select * from tbladminreg where userid=@userid
end
GO
/****** Object:  StoredProcedure [dbo].[sp_approveuser]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_approveuser]
@id int
as
begin
update tbluserreg set isactive=1 ,updt=GETDATE() where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_cartitemdetails]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_cartitemdetails]  
@userid varchar(50)
as 
begin
select tblorder.Id, categoryname,sellingprice,itemimage from tblorder
inner join tblitems on tblorder.itemid=tblitems.Id
inner join tblcategory on tblitems.categoryid=tblcategory.id
where tblorder.userid=@userid and tblorder.iscart=1 


end
GO
/****** Object:  StoredProcedure [dbo].[sp_cartitemtotal]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_cartitemtotal] 
@userid varchar(50)
as 
begin


select sum(sellingprice) as total from tblorder
inner join tblitems on tblorder.itemid=tblitems.Id
where tblorder.userid=@userid and tblorder.iscart=1 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_category]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_category]
@categoryname varchar(50)
as 
begin
insert into tblcategory(
categoryname,
isactive,
status,
crdt,
updt
)
values(
@categoryname,
1,
1,
getdate(),
getdate()
)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_chkcartitems]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_chkcartitems]
@userid varchar(50),
@itemid int
as
begin
select * from tblorder where itemid=@itemid and userid=@userid and iscart=1 and isorderd=0
end


GO
/****** Object:  StoredProcedure [dbo].[sp_chkexistinguser]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_chkexistinguser]
@contactno bigint,
@email varchar(50)
as
begin
select * from tbluserreg where contactno=@contactno and email=@email
end
GO
/****** Object:  StoredProcedure [dbo].[sp_chkitemcity]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_chkitemcity]
@id int

as
begin 
select city from tblitems inner join tbladminreg on tbladminreg.userid=tblitems.SellerId where tblitems.id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_chkwishlistitems]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_chkwishlistitems]
@userid varchar(50),
@itemid int
as
begin
select * from tblwishlist where item=@itemid and userid=@userid 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_countwishlist]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_countwishlist] 
@userid varchar(50)
as
begin
select count(*) as totalitems from tblwishlist where iswishlist=1 and userid=@userid
end
GO
/****** Object:  StoredProcedure [dbo].[sp_customerlogin]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_customerlogin]
@email nvarchar(100),
@pwd varchar(100)
as
begin 
select * from tbluserreg where email=@email and pwd=@pwd
end

GO
/****** Object:  StoredProcedure [dbo].[sp_dashboard]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_dashboard]
as
begin
declare @approvedcustomers int;
declare @registeredcustomers int;
declare @approvedcustomersnow int;
declare @registeredcustomersnow int;
declare @recentordersnow int;
declare @deliveredordernow int;
declare @recentorders int;
declare @deliveredorder int;
set @approvedcustomers=(select  ISNULL(count(*),0) from tbluserreg where isactive=1)
set @approvedcustomersnow=(select ISNULL(count(*),0) from tbluserreg where isactive=1 and Convert(date,updt)=GETDATE())
set @registeredcustomers=(select ISNULL(count(*),0) from tbluserreg where isactive=0)
set @registeredcustomersnow=(select ISNULL(count(*),0) from tbluserreg where isactive=0 and Convert(date,updt)=GETDATE())
set @recentordersnow=(select ISNULL(count(distinct orderno),0) from tblorder where isdelivered=0 and isorderd=1 and updt=Convert(date,GETDATE()) )
set @recentorders=(select ISNULL(count(distinct orderno),0) from tblorder where isdelivered=0 and isorderd=1 )
set @deliveredorder=(select ISNULL(count(distinct orderno),0) from tblorder where isdelivered=1 )
set @deliveredordernow=(select ISNULL(count(distinct orderno),0) from tblorder where isdelivered=1 and deliverydate= Convert(date,GETDATE()) )

select @approvedcustomers as  approvedcustomers,@approvedcustomersnow as approvedcustomersnow,@registeredcustomers as registeredcustomers,@registeredcustomersnow as registeredcustomersnow,@recentordersnow as recentordersnow,
@recentorders as recentorders,@deliveredorder as deliveredorder,@deliveredordernow as deliveredordernow
end
GO
/****** Object:  StoredProcedure [dbo].[sp_denyuser]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_denyuser]
@id int
as
begin
update tbluserreg set isactive=0 ,updt=GETDATE() where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_edititemsdetails]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_edititemsdetails] 
@id int=null
as
begin
select tblitems.Id as Id,categoryname,ProductTitle,sellingprice,DOP,itemprice,itemdesc,itemimage,tblitems.isactive,tblitems.crdt from tblitems
inner join 
tblcategory on tblitems.categoryid=tblcategory.Id
where tblitems.Id=@id 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_insertcontacts]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_insertcontacts]
@name varchar(50),
@email varchar(50),
@subject varchar(100),
@message varchar(500)
as
begin
insert into tblcontact(
name,
email,
subject,
message,
isactive,
status,
crdt,
updt
)
values(
@name,
@email,
@subject,
@message,
0,
0,
getdate(),
getdate()
)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_insertpaymentmode]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_insertpaymentmode]
@userid varchar(50),
@orderno nvarchar(100) ,
@paymentmode varchar(50),
@upiid varchar(50),
@debitcardno varchar(50),
@cvv varchar(50)
as
begin
insert into tblpaymentmode values(@userid,@orderno,@paymentmode,@upiid,@debitcardno,0,@cvv,0,getdate(),GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[sp_insertreceipt]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_insertreceipt]
@userid varchar(50) ,
@receiptno varchar(50),
@orderno nvarchar(100),
@totalamt varchar(50)
as
begin

insert into tblreceipt values(@userid,@receiptno,@orderno,@totalamt,0,0,GETDATE(),getdate())
end
GO
/****** Object:  StoredProcedure [dbo].[sp_items]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_items]
@categoryid int,
@sellerid nvarchar(100),
@itemprice decimal(18,2),
@itemdesc varchar(500),
@itemimage varchar(max),
@producttitle nvarchar(500),
@dop datetime,
@sellingprice decimal(18,2)
as
begin
insert into  tblitems(
categoryid,
SellerId,
itemprice,
itemdesc,
itemimage,
dop,sellingprice,ProductTitle,
isactive,
status,
crdt,
updt
)
values(
@categoryid,
@sellerid,
@itemprice,
@itemdesc,
@itemimage,
@dop,@sellingprice,@producttitle,
0,
1,
getdate(),
getdate()
)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_makeorder]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_makeorder]
@id int,
@userid varchar(50),
@orderno nvarchar(100),
@address varchar(MAX),
@state varchar(50),
@city varchar(50),
@pincode bigint,
@contactno bigint,
@paymentmode varchar(50),
@email varchar(50)

as
begin
update tblorder set
iscart=0,
isorderd=1,
isapproved=0,
address=@address,
orderno=@orderno,
state=@state,
city=@city,
pincode=@pincode,
email=@email,
contactno=@contactno,
paymentmode=@paymentmode,
isdelivered=0,
updt=GETDATE()
where userid=@userid
and Id=@id

end
GO
/****** Object:  StoredProcedure [dbo].[sp_makeorder_wishlist]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_makeorder_wishlist]
@item int ,
@userid varchar(50)
as
begin
insert into tblorder (itemid,userid,iscart,isorderd,crdt,updt) values(@item,@userid,1,0,getdate(),getdate())
delete from tblwishlist where item=@item and userid=@userid
end


GO
/****** Object:  StoredProcedure [dbo].[sp_order]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_order]
@item int ,
@userid varchar(50)
as
begin
insert into tblorder (itemid,userid,iscart,isorderd,crdt,updt)  values (@item,@userid,1,0,getdate(),GETDATE())
end

GO
/****** Object:  StoredProcedure [dbo].[sp_orderdetails]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_orderdetails]
@orderno int
as 
begin
select tblorder.Id, categoryname,itemprice,itemimage,address,contactno,receiptno from tblorder
inner join tblitems on tblorder.itemid=tblitems.Id
inner join tblcategory on tblitems.categoryid=tblcategory.id
inner join tblreceipt on tblorder.orderno=tblreceipt.orderno
where tblorder.orderno=@orderno and tblorder.isorderd=1 


end
GO
/****** Object:  StoredProcedure [dbo].[sp_orderitemtotal]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_orderitemtotal] 
@orderno int
as 
begin


select sum(itemprice) total from tblorder
inner join tblitems on tblorder.itemid=tblitems.Id
where tblorder.orderno=@orderno and tblorder.isorderd=1 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ordertrack]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ordertrack] 
@orderno nvarchar(100),
@userid varchar(50)
as
begin
select tblorder.orderno,tblorder.userid,tblorder.updt as orderdate,tblorder.isapproved,approvaldate,tblreceipt.totalamt,deliverydate,paymentmode,tblorder.isdelivered from tblorder
inner join tblreceipt on tblorder.orderno=tblreceipt.orderno
where tblorder.orderno=@orderno and tblorder.userid=@userid group by tblorder.orderno,tblorder.userid,tblorder.approvaldate,tblorder.updt,deliverydate,paymentmode,tblreceipt.totalamt,tblorder.isdelivered ,isapproved
end
GO
/****** Object:  StoredProcedure [dbo].[sp_receiptno]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_receiptno]
as 
begin
declare @id int, @newid int

select @id =  max(Isnull(Id,0))  from tblreceipt

if(@id>0)
 set @newid=@id
 else
set  @newid=0

select @newid as LastID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_removecartitems]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_removecartitems]
@userid varchar(50),
@Id int
as 
begin
delete from tblorder where Id=@id and userid=@userid
end
GO
/****** Object:  StoredProcedure [dbo].[sp_removewishlistitems]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_removewishlistitems]
@userid varchar(50),
@Id int
as 
begin
delete from tblwishlist where Id=@id and userid=@userid
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Showallitems]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Showallitems]
as
begin
select tblitems.Id as Id,DATEDIFF(day,dop,GETDATE()) as daysold, categoryname,itemprice,itemdesc,ProductTitle,dop,sellingprice,itemimage,tblitems.isactive,tblitems.crdt from tblitems
inner join 
tblcategory on tblitems.categoryid=tblcategory.Id

where  tblitems.isactive=0 order by id desc
end
GO
/****** Object:  StoredProcedure [dbo].[sp_showallitemsdetails]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_showallitemsdetails] 

as
begin
select tblitems.Id as Id,categoryname,contactno,concat(fname,lname) as [name],city,itemprice,itemdesc,dop,sellingprice,ProductTitle,itemimage,tblitems.isactive,tblitems.crdt,DATEDIFF(day,tblitems.DOP,GETDATE()) as daysold from tblitems
inner join 
tblcategory on tblitems.categoryid=tblcategory.Id
inner join
tbladminreg on tbladminreg.userid=tblitems.SellerId
where tblitems.isactive=0 order by tblitems.id desc
end
GO
/****** Object:  StoredProcedure [dbo].[sp_showcategory]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_showcategory]
as
begin
select * from tblcategory
end
GO
/****** Object:  StoredProcedure [dbo].[sp_showitems]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_showitems] --null 
@city nvarchar(100)=null
as

begin


begin
select tblitems.Id as Id,DATEDIFF(day,dop,GETDATE()) as daysold, categoryname,itemprice,itemdesc,ProductTitle,dop,contactno,CONCAT(fname,lname) as [name],city,sellingprice,itemimage,tblitems.isactive,tblitems.crdt from tblitems
inner join 
tblcategory on tblitems.categoryid=tblcategory.Id
inner join 
tbladminreg on tbladminreg.userid=tblitems.SellerId
where  (city=@city ) and tblitems.isactive=0 order by id desc
end

end
GO
/****** Object:  StoredProcedure [dbo].[sp_showitemsadmin]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_showitemsadmin]
as
begin
select tblitems.Id as Id,categoryname,itemprice,itemdesc,dop,sellingprice,ProductTitle,itemimage,tblitems.isactive,tblitems.crdt from tblitems
inner join 
tblcategory on tblitems.categoryid=tblcategory.Id
 where tblitems.isactive=0
end
GO
/****** Object:  StoredProcedure [dbo].[sp_showitemsdetails]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_showitemsdetails] 
@sellerid nvarchar(100)
as
begin
select tblitems.Id as Id,case 
when tblorder.iscart=0 then 'item not sold'
when tblorder.iscart is null then 'item not sold'

when tblorder.iscart=1 then 'item sold'

end as status
,categoryname,itemprice,itemdesc,dop,sellingprice,ProductTitle,itemimage,tblitems.isactive,tblitems.crdt from tblitems
inner join 
tblcategory on tblitems.categoryid=tblcategory.Id
left join tblorder on tblorder.itemid=tblitems.Id
where tblitems.isactive=0 and SellerId=@sellerid order by tblitems.id desc
end
GO
/****** Object:  StoredProcedure [dbo].[sp_showtopitems]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_showtopitems]
as
begin
select top 8 *,(select categoryname from tblcategory where tblcategory.Id=tblitems.categoryid) as category,DATEDIFF(day,dop,GETDATE()) as daysold from tblitems where isactive=0 order By Id desc

end
GO
/****** Object:  StoredProcedure [dbo].[sp_updateadminpicture]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_adminchangepwd]    Script Date: 4/4/2020 9:58:59 AM ******/
CREATE proc [dbo].[sp_updateadminpicture]
@userid varchar(50),
@profilepic varchar(MAX)
as
begin
update tbladminprofile set profilepic=@profilepic,updt=getdate() where userid=@userid 
end

GO
/****** Object:  StoredProcedure [dbo].[sp_updateadminprofile]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_updateadminprofile]
@userid varchar(50),
@dob varchar(50),
@pincode bigint,
@city varchar(50),
@address varchar(100),
@state varchar(50),
@gender varchar(50)
as
begin update tbladminprofile
set
dob=@dob,
pincode=@pincode,
city=@city,
address=@address,
state=@state,
gender=@gender,
updt=getdate()
where
userid=@userid
END
GO
/****** Object:  StoredProcedure [dbo].[sp_updatecategory]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_updatecategory]
@Id int,
@categoryname varchar(50)

as
begin update tblcategory
set
categoryname=@categoryname,
updt=getdate()

where
Id=@Id
END

GO
/****** Object:  StoredProcedure [dbo].[sp_updateitems]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_updateitems]
@Id int,
@categoryid int,
@itemprice decimal(18,2),
@itemdesc varchar(500),
@itemimage varchar(max),
@dop datetime,
@sellingprice decimal(18,2),
@producttitle nvarchar(500)
as
begin update tblitems
set
categoryid=@categoryid,
itemprice=@itemprice,
itemdesc=@itemdesc,
itemimage=@itemimage,
dop=@dop,sellingprice=@sellingprice,ProductTitle=@producttitle,
updt=getdate()
where
Id=@Id 
END

GO
/****** Object:  StoredProcedure [dbo].[sp_updateuserprofile]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_updateuserprofile]
@userid varchar(50),

@pincode bigint,
@city varchar(50),
@address varchar(100),
@state varchar(50),
@gender varchar(50),
@dob varchar(50)
as
begin update tbluserprofile
set
dob=@dob,
pincode=@pincode,
city=@city,
address=@address,
state=@state,
gender=@gender,
updt=getdate()
where
userid=@userid
END

GO
/****** Object:  StoredProcedure [dbo].[sp_updateuserprofilepic]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_updateuserprofilepic]
@userid varchar(50),



@profilepic varchar(MAX)

as
begin update tbluserprofile
set

profilepic=@profilepic,

updt=getdate()
where
userid=@userid
END
GO
/****** Object:  StoredProcedure [dbo].[sp_userchangepwd]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_userchangepwd]
@contactno bigint,
@oldpwd varchar(50),
@newpwd varchar(50)
as
begin
update tbluserreg set pwd=@newpwd,updt=getdate() where contactno=@contactno and pwd=@oldpwd
end

GO
/****** Object:  StoredProcedure [dbo].[sp_userlogin]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_userlogin]
@contactno varchar(50),
@pwd varchar(50)
as
begin 
select * from tbluserreg where contactno=@contactno and pwd=@pwd
end

GO
/****** Object:  StoredProcedure [dbo].[sp_userprofile]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_userprofile]
@userid varchar(50),
@profilepic varchar(max),
@pincode bigint,
@city varchar(50),
@address varchar(100),
@state varchar(50),
@gender char(2)
as
begin
insert into tbladminprofile(
userid,
profilepic,
pincode,
city,
address,
state,
gender,
isactive,
status,
crdt,
updt
)
values(
@userid,
@profilepic,
@pincode,
@city,
@address,
@state,
@gender,
0,
0,
getdate(),
getdate()
)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_userreg]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_userreg]
@firstname varchar(50),
@lastname varchar(50),
@contactno bigint,
@pwd varchar(50),
@city nvarchar(100),
@email varchar(50),
@userid varchar(50)
as 
begin
insert into tbluserreg(
firstname,
lastnamme,
city,
contactno,
pwd,
email,
userid,
isactive,
status,
crdt,
updt

)
values(
@firstname,
@lastname,
@city,
@contactno,
@pwd,
@email,
@userid, 
1,
0,
getdate(),
getdate()
)
insert into tbluserprofile(
userid)
values(
@userid
)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_wishlist]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_wishlist]
@userid varchar(50),
@item int
as
begin
insert into tblwishlist values(@item,@userid,1,GETDATE(),GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[sp_wishlistitemdetails]    Script Date: 04-01-2021 18:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_wishlistitemdetails] 
@userid varchar(50)
as 
begin
select tblwishlist.Id, categoryname,itemprice,itemimage,tblitems.Id as itemid from tblwishlist
inner join tblitems on tblwishlist.item=tblitems.Id
inner join tblcategory on tblitems.categoryid=tblcategory.id
where tblwishlist.userid=@userid and tblwishlist.iswishlist=1 


end
GO
USE [master]
GO
ALTER DATABASE [TailerSoft] SET  READ_WRITE 
GO
