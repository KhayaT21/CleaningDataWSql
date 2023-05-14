-------------------------------------------------------DEPARTMENTS-----------------------------------------------------------------------------
--check 
select * from [_deps]
order by [newMajorNum]

--adding the working columns
alter table [_deps] add [newMajorNum] int,[newMajorName] nvarchar(40),[newMinorNum] int,[newMinorName] nvarchar(40),[NewPath] nvarchar(255)

--Building the first tier
--Manual insert for the Major Departments
INSERT  INTO  [_deps] ([newMinorNum], [NewMinorName])
SELECT distinct  [Major Department Number ],[Major Department Name]
FROM [_Deps]

select *
--update [_deps] set [newMajorNum] = [newMinorNum],[newMajorName] = [newMinorName]
from [_deps]
where newMinorName is not null

---Building 2nd tier
select *
--update [_deps] set [newMinorNum] = [Minor Department Number ], [newMinorName] = LTRIM(RTRIM(UPPER(SUBSTRING([Minor Department Name ],0,40))))
from [_deps]
where [newMajorNum] is null

select * 
--update [_deps] set [newMajorName] ='DRINKS',[newMajorNum]=1
from [_deps]
where [NewMinorNum] in('12','13','14','15','16','17','18','19','110','111','112','113','114','115','116','117') and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='ENERGY DRINKS',[newMajorNum]=2
from [_deps]
where   [NewMinorNum] in ('21',
'22','23','24','25','26','27','28','29','210') and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='CHIPS',[newMajorNum]=3
from [_deps]
where   [NewMinorNum] in ('31','32','33','34','35','36','37','38','39','310') and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='BISCUITS',[newMajorNum]=4
from [_deps]
where   [NewMinorNum] in ('41','42') and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='SWEETS',[newMajorNum]=5
from [_deps]
where   [NewMinorNum] in ('51','52','53','54','55','56','57') and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='CHOCOLATES',[newMajorNum]=6
from [_deps]
where   [NewMinorNum] in ('61','62','63','64','65','66') and [newMajorName] is null


select * 
--update [_deps] set [newMajorName] ='GROCERIES',[newMajorNum]=7
from [_deps]
where   [NewMinorNum] in ('71','72','73','74','75','76','77','78','79','710','711','712') and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='ICE CREAM',[newMajorNum]=8
from [_deps]
where   [NewMinorNum] in ('81','82','83','84','85','86') and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='LUBRICANTS',[newMajorNum]=9
from [_deps]
where   [NewMinorNum] in ('9') and [newMajorName] is null


select * 
--update [_deps] set [newMajorName] ='CIGARETTES',[newMajorNum]=10
from [_deps] ascend
where   [NewMinorNum] like '10%'  and [newMajorName] is null
order by [NewMinorNum]

select * 
--update [_deps] set [newMajorName] ='LOOSE CIGARETTES',[newMajorNum]=11
from [_deps] ascend
where   [NewMinorNum] like '11'  and [newMajorName] is null


select * 
--update [_deps] set [newMajorName] ='OUTDOOR',[newMajorNum]=12
from [_deps]
where   [NewMinorNum] like '12%'  and [newMajorName] is null


select * 
--update [_deps] set [newMajorName] ='NEWSPAPER',[newMajorNum]=13
from [_deps]
where   [NewMinorNum] like '13%'  and [newMajorName] is null


select * 
--update [_deps] set [newMajorName] ='PHARMACY',[newMajorNum]=14
from [_deps]
where   [NewMinorNum] like '14%' and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='BAKERY',[newMajorNum]=15
from [_deps]
where   [NewMinorNum] like '15%' and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='BAKERY',[newMajorNum]=15
from [_deps]
where   [NewMinorNum] like '16%' and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='DAIRY',[newMajorNum]=17
from [_deps]
where   [NewMinorNum] like '17%' and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='DAIRY NON VAT',[newMajorNum]=18
from [_deps]
where   [NewMinorNum] like '18%' and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='BILTONG',[newMajorNum]=19
from [_deps]
where   [NewMinorNum] like '19%' and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='CHEWING GUM',[newMajorNum]=20
from [_deps]
where   [NewMinorNum] like '20%' and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='PIES',[newMajorNum]=21
from [_deps]
where   [NewMinorNum] like '21%' and [newMajorName] is null

select * 
--update [_deps] set [newMajorName] ='FRESH FOODS',[newMajorNum]=22
from [_deps]
where   [NewMinorNum] like '22%' and [newMajorNum] is null

select * 
--update [_deps] set [newMajorName] ='GAS',[newMajorNum]=23
from [_deps]
where   [NewMinorNum] like '23%' and [newMajorNum] is null

select * 
--update [_deps] set [newMajorName] ='STATIONARY',[newMajorNum]=24
from [_deps]
where   [NewMinorNum] like '24%' and [newMajorNum] is null


select * 
--update [_deps] set [newMajorName] ='HEALTH JUICE',[newMajorNum]=25
from [_deps]
where   [NewMinorNum] like '25%' and [newMajorNum] is null


select * 
--update [_deps] set [newMajorName] ='BREW CYCLE',[newMajorNum]=27
from [_deps]
where   [NewMinorNum] like '27%' and [newMajorNum] is null

select * 
--update [_deps] set [newMajorName] ='GIFTING',[newMajorNum]=28
from [_deps]
where   [NewMinorNum] like '28%' and [newMajorNum] is null

select * 
--update [_deps] set [newMajorName] ='CAR CARE',[newMajorNum]=29
from [_deps]
where   [NewMinorNum] like '29%' and [newMajorNum] is null

select * 
--update [_deps] set [newMajorName] ='COMBOS',[newMajorNum]=30
from [_deps]
where   [NewMinorNum] like '30%' and [newMajorNum] is null

select * 
--update [_deps] set [newMajorName] ='CAR CARE',[newMajorNum]=31
from [_deps]
where   [NewMinorNum] like '31%' and [newMajorNum] is null

select * 
--update [_deps] set [newMajorName] ='KAZANG',[newMajorNum]=35
from [_deps]
where   [NewMinorNum] like '35%' and [newMajorNum] is null

---check there are no blanks
select * 
from [_deps]
where [newMajorNum] is null --12 rows

--solution

select * 
--update [_deps] set [newMajorNum]= [Major Department Number ], [newMajorName] = LTRIM(RTRIM(UPPER(SUBSTRING([Major Department Name],0,40))))
from [_deps]
where [newMajorNum] is null --12 rows



--delete from [_deps] where 

select * from [Department Details]

--removing the test template 
--delete from [Department Details] where [Department Number] <> '0'

---creating the path
select * 
--update [_deps] set [NewPath] = (CAST([newMajorNum] as nvarchar(20))+'\'+CAST([newMinorNum] as nvarchar(20)))
FROM [_deps]
where [NewPath] is null

select * 
--update [_deps] set [NewPath] = CAST([newMajorNum] as nvarchar(20))
from [_deps]
where [newMajorNum] = [newMinorNum]


----NB THERE IS A DUPLICATE  11 FOR LOOSE CIGARETTES AND DRINKS ATMOSPHERIC
--solution remove the 'ATMOSPHERIC'	sub-department

select *
--delete
from [_deps]
where [Minor Department Name ] ='ATMOSPHERIC'

--Check for duplicates
select [newMinorNum]
from [_deps] 
group by [newMinorNum] having count(*)>1

--removing uwanted rows
select *
--delete
from [_deps]
where  [newMajorNum] ='1' [Minor Department Name ] is null


--Step 6 Then import to final live table

select * 
from [_deps] a
cross join [Department Details] b
where b.[Department Name] =  'UNBOUND'
order by a.[newMajorNum]


select * from [_deps]
where [nu]

select * from [Department Details]

-------------------------------NEW WAY OF BUILDING DEPS---------------------------------------------------------------
--creating the department template
select * into [_departmentTemplate] from [Department Details] where [Department Number] <> 0



--1.
select distinct d.[Sub-Department Number ], upper(ltrim(rtrim(d.[Sub-Department Name ]))) as [Main Name], (d.[Department Number (Major Department)]+'\'+d.[Sub-Department Number ]) as NPATH,d.[Sub Num] as NREPDEP,upper(ltrim(rtrim(d.[Sub-Department Name ]))) as NDEPNAME, dp.*
from _deps d cross join _DepartmentTemplate dp
where d.[Sub-Department Number ] <> ''

--2.(Ran-first)
select distinct d.[Department Number (Major Department)], upper(ltrim(rtrim(d.[Department Name (Major Department)]))) as [Main Name], d.[Department Number (Major Department)] as NPATH,d.[Department Number (Major Department)] as NREPDEP,upper(ltrim(rtrim(d.[Department Name (Major Department)]))) as NDEPNAME, dp.* into [_deps1]
from _deps d cross join _DepartmentTemplate dp

select * from [_departmentTemplate]

select * from [_deps1]

select * from [_creditors]


-----------------------------------------------------SECOND DEPARTMENTS-------------------------------------------------------------------------

select * from [_depsV1]


--adding a new path
alter table [_depsV1] add [newPath] nvarchar(255)

--Building the path
select * 
--update [_depsV1] set [NewPath] = (CAST([Department Number (Major Department) ] as nvarchar(20))+'\'+CAST([Sub-Department Number ] as nvarchar(20)))
FROM [_depsV1]
where [Department Number (Major Department) ] != [Sub-Department Number ]

select * 
--update [_depsV1] set [NewPath] = CAST([Department Number (Major Department) ] as nvarchar(20))
FROM [_depsV1]
where [Department Number (Major Department) ] = [Sub-Department Number ]

--Adding 50 to the duplicate values
;with cte as(

select *,ROW_NUMBER() over (partition by [sub-department number] order by [sub-department number])as rn

from _depsV1) 

--select * from cte where rn>1 

update cte set [Sub-Department Number ]='50'+ [Sub-Department Number ] where rn>1 



select * from [Department Details]

select * 
from [_depsV1] a
cross join [Department Details] b
where b.[Department Name] ='TEST'


select x.*,dd.*
from 
(select  distinct [DepartmentNumber (Major Department) ],[DepartmentName (Major Department) ],
[Sub-DepartmentNumber ],[Sub-DepartmentName ],[newPath] 
from [_depsV1]) x
cross join [Department Details]  dd
where dd.[Department Name]='TEST'

-------------------------------------------------------------PRODUCT DETAILS------------------------------------------------------------------

--check 
select * from [_prods]

--Add the columns that you are going to work with
Alter table [_prods] add [newBase] nvarchar(16),[newDescr] varchar(50),[newDepNum] smallint,[newUnitSize] real, [NewUnitMeasure] nvarchar(15), [newsellIncl] money,[newlandedCost] money,[newMarkup] smallint,[newAveCost] money,
[newSalesTax] real,[newTillItem] tinyint,[newSalesCycle] int

alter table [_prods] add [newNonStockable] smallint


--Building the product codes
--check for duplicates

 select [ProductCode] 
 from [_prods] 
 group by [ProductCode] having count(*) > 1 -- no result

 --check for blanks

select [ProductCode] 
 from [_prods] 
where [ProductCode] ='' -- no result

select [SingleBarcode] 
 from [_prods] 
where [SingleBarcode] =' '

--Transferring the data
 select *
--update [_prods] set [newBase] =RTRIM(LTRIM([ProductCode]))
from [_prods]
where [newBase] is null

--Building the description column
--check the lengths
select * 
 from _prods
 where len([Descriptions]) > 50 --no results

 --transferring the descriptions to the new column
  select *
--update [_prods] set [NewDescr] =LTRIM((RTRIM(UPPER(SUBSTRING([Descriptions],0,50)))))
from [_prods]
where [newDescr] is null

--Building the newUnit size column
--editing those that dont have a UOM to each
select * 
--update [_prods] set [newUnitSize] = [UnitSize], [newUnitMeasure]='EACH',[UnitofMeasure]=''
from [_prods]
where [newUnitSize] is null and [NewUnitMeasure] is null

--Building the Selling Price column

select * 
--update [_prods] set [newsellIncl] = [SellingPrice(Incl)]
from [_prods]
where [newsellIncl] is null 

--Builing the Landed cost column
select * 
--update [_prods] set [newlandedCost] = [LandedCostPrice(Excl)]
from [_prods]
where [newlandedCost] is null 

--Building the Markup column
select * 
--update [_prods] set [newMarkup] = CAST([Markup] as smallint)
from [_prods]
where [newMarkup] is null 


--Builing the AveCostPrice(excl)
select * 
--update [_prods] set [newAveCost] = [AveCostPrice(Excl)]
from [_prods]
where [newAveCost] is null

--Builing the sales tax column
select * 
--update [_prods] set [newSalesTax] = [SalesTax]
from [_prods]
where [newSalesTax] is null 

--Building the Till item column
select * 
--update [_prods] set [newTillItem] = case when [TillItem] ='y' then '1' else '0' end
from [_prods]
where [newTillItem] is null 

--Building the non-stockable
select *
--update [_prods] set [newNonStockable] = case when [NonStockable] = ' ' then '1' else '0' end
from [_prods]
where [newNonStockable] is null

--Building the sales cycle to days
select*
--update [_prods] set [newSalesCycle]= '30'
from [_prods]

------Updating the department numbers

select * 
--update [_prods]set [NewDepNum] = '0'
from [_prods]
where [DepartmentNumber] in ('14','15','16','17','18','19','21','22','23','24','25',
'27','28','29','31','32','33','34','35')

select * 
--update [_prods] set [newDepNum] = [DEPARTMENTNUMBER]
from [_prods]
where [newDepNum] is null

---Editing the UOM
 select *
--update _prods set [newUnitSize] = u.[unit size], [newUnitMeasure] = upper(u.[unit of measure]),[NewDescr]=LTRIM(RTRIM(UPPER(replace([Descriptions],u.uom,''))))
 from _prods p
 join (
 select distinct [unit size],[unit of measure],
 (cast([unit size] as varchar) +[unit of measure])[UOM]                  
 FROM [Arch_Activation_Master]..[Product Master File]
 --union all
 --select '1' as [unit]
 )u
 on p.[Descriptions] like  '% '+u.UOM+'% '
 where p.[NewUnitMeasure] is not null and p.[Descriptions] not like '%CM%'  and p.[Descriptions] not like '%gig%'


---Importing to the live table
select * 
from [_prods] a
join [product details] b
on b.[Product Code] = 'TEST'

select * 
--update [product details] set [tax type]=2, [purchase tax]=0,[selling price (excl)]=[selling price (incl)]
from [Product Details]
where [sales tax]=0


select * 
--update [product details] set [tax type]=1, [purchase tax]=15,[selling price (excl)]=([selling price (incl)]*0.85)
from [Product Details]
where [sales tax]=15


--Removing the test line
select *
--Delete
from [Product Details]
where [Product Code] !='TEST'



--stock ledger inserts

---------------------------------------------AVERAGE COST ADJ---------------------------------------------------------

INSERT INTO [stock ledger] ( [Date & Time] , [Product Code] , [Location Number] , Quantity , [Ave Cost Price (Excl)] , [Landed Cost Price (Excl)] ,
                             [Cost Price Adjustment (Excl)] , [Type] , [Transaction Tracking Number] , [Nett Value (Excl)] , [Variance Value (Excl)] , 
                             Origin , RowNumber , MovementType )
select getdate(), pd.[product code],'0','0',pd.[ave cost price (excl)],0, pd.[ave cost price (excl)],13,0.000000,0,0,8,'-1',13
from [product details] pd 
where pd.[Ave Cost Price (Excl)] <> '0'


---------------------------------------------LANDED COST ADJ---------------------------------------------------------

INSERT INTO [stock ledger] ( [Date & Time] , [Product Code] , [Location Number] , Quantity , [Ave Cost Price (Excl)] , [Landed Cost Price (Excl)] ,
                             [Cost Price Adjustment (Excl)] , [Type] , [Transaction Tracking Number] , [Nett Value (Excl)] , [Variance Value (Excl)] , 
                             Origin , RowNumber , MovementType )
select getdate(), pd.[product code],'0','0',pd.[ave cost price (excl)],pd.[landed cost price (excl)], pd.[landed cost price (excl)],14,0.000000,0,0,8,'-1',13
from [product details] pd 
where pd.[landed cost price (excl)] <> '0'


insert into [quantities]
select [product code], 1 as [Location],0 as [Stock on Hand],GETDATE() as [LastUpdated]
from [product details]
where [product code] not in (select [product code] from [Quantities])


--run post conversion.
--do spot checks on the costings


------------------------------------------------------PACKAGING AND SIZES-----------------------------------------------------------------------
--check root table

select * from [_prods]

--creating the packaging and sizes table
select [ProductCode],[sellingPrice(incl)] ,[OrderPackSize],[SingleBarcode] into [_packs]
from [_prods]

--add the working columns

Alter table [_packs] add [newLinkCode] nvarchar(16),[newProductCode] nvarchar(30),[newDescription] varchar(50),
[newPack] varchar(16)

--Builing the Link Code column
--check for duplicates 
select [newLinkcode]
from [_packs] 
group by [newLinkCode] having count(*)>1 --no results

select*
--update [_packs] set [newLinkCode] = [ProductCode]
from[_packs]
where [newlinkCode] is null

--Building the product code column
select [newProductCode]
from [_packs] 
group by [newProductCode] having count(*)>1

select *
--update [_packs] set [newProductCode]= '1'+[SingleBarcode]
from [_packs]
where [newProductCode] is null

--Building the Packs columns
select *
--update [_packs] set [newPack] = [OrderPackSize]
from [_packs]
where [newPack] is null

--Building the descriprion column
select *
--update [_packs] set [newDescription] =  ([newPack]+'PACK') 
from [_packs]
where [newDescription] is null

---adding to the live table

select * from [Packaging and Sizes]

select x.*,ps.*
from 
(select distinct [sellingPrice(incl)],[newlinkcode],[newProductCode],[newDescription],[newPack]
from [_packs]) x
cross join [Packaging and Sizes]  ps
where ps.[Product Code]='TEST1'


select * 
from [_packs] a
cross join [Packaging and Sizes]  ps
where ps.[Product Code]='TEST1'


--Ensure all live entries inserted
INSERT INTO [Packaging and Sizes]
([Link Code],[Product Code],[Description],[Pack],[Till Pack],[Container],[Price],[Shelf talker no],[Shelf talker qty],[Barcode no]
,[Export Type],[Preferred Ordering Pack],[Index Price Factor],[Scale Item],[Shelf Life],[Hide On Menu Cat],[Enforce Qty Input]
,[ExcludeScaleBatch],[Business Rules Product Type],[LastUpdated],[LastUpdatedUser],[LastUpdatedWorkstation],[FactorialPricing])
SELECT [product code], [product code], 'ß', 1, -1, '', 0, 100, 0, 5, 0, null, 1,0, 0, 0, 0, 0, 0, getdate(), '0', '100', 0
FROM [product details]
WHERE [product details].[product code] not in (SELECT DISTINCT [packaging and sizes].[product code]
FROM [packaging and sizes])



select * from [Supplier Information]
select * from [Creditors]
select * from [debtors]

-------------------------------------------------------creditors------------------------------------------------------------------------
--check
select * from [_creditors]

--add working columns

alter table [_creditors] add [newNumber] nvarchar(20),[newName] nvarchar(50),[newGroup] nvarchar(10),[newOrderCyle] int,[newPostalAddress1] nvarchar(30),[newPostalAddress2] nvarchar(30),
[newPostalAddress3] nvarchar(30),[newPostalCode] nvarchar(30),[newFaxNo] nvarchar(20),[newCellphone1] nvarchar(40),[newCellphone2] nvarchar(40),
[newTelephone] nvarchar(30),[newPhysicalAddress1] nvarchar(30),[newPhysicalAddress2] nvarchar(30),
[newPhysicalAddress3] nvarchar(30),[newPhysicalAddress4] nvarchar(30),[newPhysicalPostalCode] nvarchar(12)


--Building the numbers column
select *
--update [_creditors] set [newNumber]=[Account Number]
from [_creditors]

--Building the Account name column
--check the lengths of the account names
select [Account Nme] 
from [_creditors]
where LEN([Account Nme])>50 

select *
--update [_creditors] set [newName] = LTRIM(RTRIM(UPPER(SUBSTRING([Account Nme],0,50))))
from [_creditors]

--Building the postal address and physical addresses
--check the lengths of the postal addresss
select [Postal Addr1] 
from [_creditors]
where LEN([postal addr1])>30 --1 result

--solution
select *
--update [_creditors] set [newPostalAddress2] = Right([Postal Addr1],6),[newPostalAddress1]= REPLACE([Postal Addr1],'ISANDO',' ')
from[_creditors]
where LEN([postal addr1])>30 

--building the rest of the addresses
select *
--update [_creditors] set [newPostalAddress1] = LTRIM(RTRIM(UPPER(SUBSTRING([Postal Addr1],0,30))))
from [_creditors]
where [newPostalAddress1] is null

select *
--update [_creditors] set [newPostalAddress2] = LTRIM(RTRIM(UPPER(SUBSTRING([postal add2],0,30))))
from [_creditors]
where [newPostalAddress2] is null

select *
--update [_creditors] set [newPhysicalAddress1]=[newPostalAddress1]
from [_creditors]
where [newPhysicalAddress1] is null

select *
--update [_creditors] set [newPhysicalAddress2]=[newPostalAddress2]
from [_creditors]
where [newPhysicalAddress2] is null

--Building the creditor groups
select * 
--update [_creditors] set [newGroup]=1
from [_creditors]
where [newGroup] is null

--Builing the telephones
--check the telephone lengths
select [Telephone]
from [_creditors]
where LEN([Telephone]) >20

select *
--update [_creditors] set [newTelephone] = [telephone]
from [_creditors]
where [newTelephone] is null

---Building the fax no
--check the telephone lengths
select [Fax NUM]
from [_creditors]
where LEN([Fax NUM]) >20

select *
--update [_creditors] set [newFaxNo] = [Fax NUM]
from [_creditors]
where [newTelephone] is null

---Builing the cellphone no columns
--check the lenths
select [Cellphone Num1]
from [_creditors]
where LEN([Cellphone Num1]) >40

select [Cellphone Num2]
from [_creditors]
where LEN([Cellphone Num2]) >40

select *
--update [_creditors] set [newCellphone1] = [Cellphone num1]
from [_creditors]
where [newCellphone1] is null

select *
--update [_creditors] set [newCellphone2] = [Cellphone num2]
from [_creditors]
where [newCellphone1] is null

--Builing the order cycle table
-- REMEMBER TO CREATE THE A CASE STATEMENT FOR THE ORDER CYCLE
 select * 
--update [_creditors] set [newOrderCyle] = case when [order c] ='Daily' then '1' else '30' end
from [_creditors]
where [newOrderCyle] is null   


--Building the cellphone number
select *
--update [_creditors] set [newCellphone1] = [Cellphone num1]
from [_creditors]
where [newCellphone1] is null

----move to the live table

select * 
from [_creditors] a
join [Creditors] b
on b.[Number] = 'TEST01'

select * from [Creditors]

---------------------------------------------------------------suppliers---------------------------------------------------------------

select * from [_prods]

--creating the suppliers table
select [ProductCode],[SupplierNumber],[SupplierProductCode],[SellingPrice(Incl)] into [_suppliers]
from [_prods]

--add the working columns
alter table [_suppliers] add [newCreditorNumber] nvarchar(16),[newProductCode] nvarchar(16), 
[newSupplierProductCode] nvarchar(20),[newListedCostPrice] nvarchar(16)

--check
select * from [_suppliers] 


 --Building the  columns

select * 
--update [_suppliers] set [newCreditorNumber] = [SupplierNumber]
from[_suppliers] 
where [newCreditorNumber] is nulll

select * 
--update [_suppliers]set [newProductCode] = [ProductCode]
from[_suppliers]
where [newProductCode] is null

select * 
--update [_suppliers]set [newListedCostPrice] = [SellingPrice(Incl)]
from[_suppliers]
where [newListedCostPrice] is null

select * 
--update [_suppliers]set [newSupplierProductCode] = [SupplierProductCode]
from[_suppliers]
where [newSupplierProductCode] is null

--Step 2 Make sure the Creditor numbers in the Creditors Table is also in the Supplier Information tables 
select * from [_suppliers]
where [newCreditorNumber] not in (select [newNumber] from [_Creditors])


--import to live table
select * 
from [_suppliers] a
cross join [Supplier Information] b
where b.[CreditorNumber] = 'TEST01'
and a.[newCreditorNumber]  in (select [Number] from [Creditors])

select * from [Supplier Information]

---------------------------------------------------DEBTORS---------------------------------------------------------------------------------------
 --check 
 select * from [_debtors] 

 --add working columns
 
alter table [_debtors] add [newNumber] nvarchar(16),[newAccountName] varchar(50), [newPostalAddress1] varchar(50),
[newPostalAddress2] varchar(50),[newPostalAddress3] varchar(50),[newPostalAddress4] varchar(50),[newPostalCode] nvarchar(50),
[newTelephone] nvarchar(50),[newFaxNo] nvarchar(20),[newcreditLimit] decimal(19,6),[newCashDebtor] bit,[newEmail] varchar(50),[newDeliveryAddress1] varchar(50),[newDeliveryAddress2] varchar(50),[newDeliveryAddress3] varchar(50),
[newDeliveryAddress4]varchar(50),[newDeliveryPostalCode] varchar(50)

--Building the debtors column table
--check for duplicates
select [AccountNumber]
from [_debtors] --result
group by [AccountNumber] having count(*)>1 --1 result
/*
;with cte as(
select *, ROW_NUMBER() over (partition by [accountnumber] order by [accountnumber])as rn
 from [_debtors]
 )
 select rn,*
 --delete
 from cte
 where rn=2*/
 select * 
 from [_debtors]
 order by [AccountNumber]

select *
from [_debtors] where [AccountNumber] = 'ACC044'

--solution

select *
---update [_debtors] set [newNumber] = 'ACC045'
from [_debtors]
where [AccountName] = 'ASSAGAY PLUMBERS'

---tranferring the rest
select *
---update [_debtors] set [newNumber] = [AccountNumber]
from [_debtors] 
where [newNumber] is null

--Bulding the Account Names
--check the lengths

select [AccountName] 
from [_debtors]
where LEN([AccountName]) > 40 -- no results

select *
---update [_debtors] set [newaccountName] = LTRIM(RTRIM(UPPER(SUBSTRING([AccountName],0,40))))
from [_debtors]
where [newAccountName] is null

--Building the Postal Adrresses and Delivery Addresses
select [PostalAddress1] 
from [_debtors]
where LEN([PostalAddress1]) > 30 -- No results

select [PostalAddress2] 
from [_debtors]
where LEN([PostalAddress2]) > 30 --no results

select *
--update [_debtors] set [newPostalAddress1]  = LTRIM(RTRIM(UPPER(SUBSTRING([PostalAddress1],0,30))))
from [_debtors]
where [newPostalAddress1] is null

select *
--update [_debtors] set [newPostalAddress2]  = LTRIM(RTRIM(UPPER(SUBSTRING([PostalAddress2],0,30))))
from [_debtors]
where [newPostalAddress2] is null

select *
--update [_debtors] set [newDeliveryAddress1]=[newPostalAddress1]  
from [_debtors]
where [newDeliveryAddress1] is null

select *
--update [_debtors] set [newDeliveryAddress2]=[newPostalAddress2]  
from [_debtors]
where [newDeliveryAddress2] is null


--Building TelephoneNo
--check the lengths
select [TelephoneNo] 
from [_debtors]
where LEN([TelephoneNo]) > 20 --no results


---adding the rows into the new column
select *
--update [_debtors] set [newTelephone]  = LTRIM(RTRIM(SUBSTRING([TelephoneNo],0,20)))
from [_debtors]
where [newTelephone] is null

--Building the FaxNo
--check the lengths
select [FaxNo] 
from [_debtors]
where LEN([FaxNo]) > 20 -- no results

---adding the rows into the new column
select *
--update [_debtors] set [newFaxNo]  = LTRIM(RTRIM(SUBSTRING([FaxNo],0,20)))
from [_debtors]
where [newFaxNo] is null

--Building the CreditLimt
select *
--update [_debtors] set [newCreditLimit]  = LTRIM(RTRIM(SUBSTRING([CreditLimit(Money)],0,20)))
from [_debtors]
where [newCreditLimit] is null



--Building the CashDebtor
select *
--update [_debtors] set [newCashDebtor]  = LTRIM(RTRIM(SUBSTRING([Cashdebtor(1 or 0)],0,20)))
from [_debtors]
where [newCashDebtor] is null

----Inserting to the live table

select * 
from [_debtors] a
 cross join [Debtors] b
where b.[Account Name]= 'TEST'

---Check the live table
select * from [debtors]

--delete the test line from the debtors

select * 
--DELETE
from [debtors]
where [Account Name] = 'TEST'