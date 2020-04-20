SET NoCount
ON

CREATE TABLE #ICInvBal( FBrNo varchar(10) NOT NULL, FYear int NOT NULL, FPeriod smallint NOT NULL, FStockID int NOT NULL, FItemID int NOT NULL, FBatchNo varchar(200) NOT NULL DEFAULT (''), FBegQty decimal(28, 10) NOT NULL DEFAULT (0), FReceive decimal(28, 10) NOT NULL DEFAULT (0), FSend decimal(28, 10) NOT NULL DEFAULT (0), FYtdReceive decimal(28, 10) NOT NULL DEFAULT (0), FYtdSend decimal(28, 10) NOT NULL DEFAULT (0), FEndQty decimal(28, 10) NOT NULL DEFAULT (0), FBegBal decimal(20, 2) NOT NULL DEFAULT (0), FDebit decimal(20, 2) NOT NULL DEFAULT (0), FCredit decimal(20, 2) NOT NULL DEFAULT (0), FYtdDebit decimal(20, 2) NOT NULL DEFAULT (0), FYtdCredit decimal(20, 2) NOT NULL DEFAULT (0), FEndBal decimal(20, 2) NOT NULL DEFAULT (0), FBegDiff decimal(20, 2) NOT NULL DEFAULT (0), FReceiveDiff decimal(20, 2) NOT NULL DEFAULT (0), FSendDiff decimal(20, 2) NOT NULL DEFAULT (0), FEndDiff decimal(20, 2) NOT NULL DEFAULT (0), FBillInterID int NOT NULL DEFAULT (0), FStockPlaceID int NOT NULL DEFAULT (0),FKFPeriod int NOT NULL DEFAULT (0), FKFDate varchar(20) NOT NULL DEFAULT (''), FYtdReceiveDiff decimal(20, 2) NOT NULL DEFAULT (0), FYtdSendDiff decimal(20, 2) NOT NULL DEFAULT (0), FSecBegQty decimal(28, 10) NOT NULL DEFAULT (0), FSecReceive decimal(28, 10) NOT NULL DEFAULT (0), FSecSend decimal(28, 10) NOT NULL DEFAULT (0), FSecYtdReceive decimal(28, 10) NOT NULL DEFAULT (0), FSecYtdSend decimal(28, 10) NOT NULL DEFAULT (0), FSecEndQty decimal(28, 10) NOT NULL DEFAULT (0), FAuxPropID int NOT NULL DEFAULT (0), FStockInDate varchar(20) NOT NULL DEFAULT (''), FMTONo nvarchar(50) NOT NULL DEFAULT (''), FSupplyID int NOT NULL DEFAULT ((0)), )INSERT INTO #ICInvBal(FBrNo, FYear, FPeriod, FStockID, FItemID, FBatchNo, FBegQty, FReceive, FSend, FYtdReceive, FYtdSend, FEndQty, FBegBal, FDebit, FCredit, FYtdDebit, FYtdCredit, FEndBal, FBegDiff, FReceiveDiff, FSendDiff, FEndDiff, FBillInterID, FStockPlaceID, FKFPeriod, FKFDate, FYtdReceiveDiff, FYtdSendDiff, FSecBegQty, FSecReceive, FSecSend, FSecYtdReceive, FSecYtdSend, FSecEndQty, FAuxPropID, FStockInDate, FMTONo, FSupplyID)
SELECT  ic.FBrNo
       ,ic.FYear
       ,ic.FPeriod
       ,ic.FStockID
       ,ic.FItemID
       ,ic.FBatchNo
       ,ic.FBegQty
       ,ic.FReceive
       ,ic.FSend
       ,ic.FYtdReceive
       ,ic.FYtdSend
       ,ic.FEndQty
       ,ic.FBegBal
       ,ic.FDebit
       ,ic.FCredit
       ,ic.FYtdDebit
       ,ic.FYtdCredit
       ,ic.FEndBal
       ,ic.FBegDiff
       ,ic.FReceiveDiff
       ,ic.FSendDiff
       ,ic.FEndDiff
       ,ic.FBillInterID
       ,ic.FStockPlaceID
       ,ic.FKFPeriod
       ,ic.FKFDate
       ,ic.FYtdReceiveDiff
       ,ic.FYtdSendDiff
       ,ic.FSecBegQty
       ,ic.FSecReceive
       ,ic.FSecSend
       ,ic.FSecYtdReceive
       ,ic.FSecYtdSend
       ,ic.FSecEndQty 
       ,ic.FAuxPropID
       ,ic.FStockInDate
       ,ic.FMTONo
       ,ic.FSupplyID
FROM ICInvBal ic
LEFT JOIN t_Stock t
ON t.FItemid=ic.FStockID
WHERE t.FTypeID not in(501,502,503,504) 
AND ic.FYear=2020 
AND ic.FPeriod=1  
UNION ALL
SELECT  ic.FBrNo
       ,ic.FYear
       ,ic.FPeriod
       ,ic.FStockID
       ,ic.FItemID
       ,ic.FBatchNo
       ,ic.FBegQty
       ,ic.FReceive
       ,ic.FSend
       ,ic.FYtdReceive
       ,ic.FYtdSend
       ,ic.FEndQty
       ,ic.FBegBal
       ,ic.FDebit
       ,ic.FCredit
       ,ic.FYtdDebit
       ,ic.FYtdCredit
       ,ic.FEndBal
       ,ic.FBegDiff
       ,ic.FReceiveDiff
       ,ic.FSendDiff
       ,ic.FEndDiff
       ,ic.FBillInterID
       ,ic.FStockPlaceID
       ,ic.FKFPeriod
       ,ic.FKFDate
       ,ic.FYtdReceiveDiff
       ,ic.FYtdSendDiff
       ,ic.FSecBegQty
       ,ic.FSecReceive
       ,ic.FSecSend
       ,ic.FSecYtdReceive
       ,ic.FSecYtdSend
       ,ic.FSecEndQty 
       ,ic.FAuxPropID
       ,ic.FStockInDate
       ,ic.FMTONo
       ,ic.FSupplyID
FROM ICVMIInvBal ic
WHERE 1=1 
AND ic.FYear=2020 
AND ic.FPeriod=1 

CREATE TABLE #T100( FDate DateTime Null, FBillNo NVarChar(510) Null, FNote Varchar(255) Null, FUnitInName Varchar(255) Null, FInterID Int Null, FTranType Int Null, FBillTypeID smallInt Null, FEntryID Int Null, FItemID Varchar(255) Null, FDeptID Int Null Default(0), FVouchNo Varchar(50) Null, FBatchNo Varchar(200) Null Default(''), FBegQty decimal(28,10) Not Null Default(0), FBegPrice decimal(28,10) Not Null Default(0), FBegBal decimal(28,10) Not Null Default(0), FSecBegQty decimal(28,10) Not Null Default(0), FBegDiff decimal(28,10) Not Null Default(0), FInQty Decimal(28,10) Null Default(0) , FInMasterQty Decimal(28,10) Null Default(0) , FOutQty Decimal(28,10) Null Default(0) , FOutMasterQty Decimal(28,10) Null Default(0) , FInAmount Decimal(28,10) Null Default(0) , FInPrice Decimal(28,10) Null Default(0) , FInBUUnitPrice Decimal(28,10) Null Default(0) , FOutAmount Decimal(28,10) Null Default(0) , FOutPrice Decimal(28,10) Null Default(0) , FOutBUUnitPrice Decimal(28,10) Null Default(0) , FUnitOutName Varchar(255) Null, FUnitMasterName Varchar(255) Null, FAmountDecimal Int default(4), FSumSort Int Not Null default 0, FMem Varchar(255) Null, FInSecQty Decimal(28,10) Default(0), FOutSecQty Decimal(28,10) Default(0), FSecCoefficient Decimal(28,10), FAuxPropName Varchar(255), FMTONo NVarchar(100) Default(''), FMTOChangeFlag Int Default(0) ) Declare @FScale INT
SELECT  @FScale=FScale
FROM t_Currency
WHERE FCurrencyID=1 

INSERT INTO #T100 (FAmountDecimal,FDate,FBillNo,FNote,FDeptID,FUnitInName,FBatchNo,FInQty,FInMasterQty, FInPrice,FInBUUnitPrice,FInAmount,FInterID,FTranType,FBillTypeID,FEntryID,FItemID,FVouchNo,FInSecQty,FSecCoefficient,FAuxPropName,FMTONo)
SELECT  2 
       ,v1.FDate
       ,v1.FBillNo
       ,u1.FNote
       ,v1.FDeptID
       ,T100.FName                                                         AS FUnitInName
       ,u1.FBatchNo
       ,u1.FAuxQty
       ,u1.FQty
       ,Case t1.FTrack WHEN 81 THEN u1.FAuxPlanPrice Else u1.FAuxPrice End AS FPrice
       ,Case t1.FTrack WHEN 81 THEN u1.FPlanPrice Else u1.FPrice End       AS FBUUnitPrice
       ,(Case t1.FTrack WHEN 81 THEN u1.FPlanAmount Else u1.FAmount End)   AS FAmount
       ,v1.FInterID
       ,v1.FTranType
       ,v1.FBillTypeID
       ,u1.FEntryID
       ,t1.Fnumber                                                         AS FItemID
       ,g1.FName + '-' + cast(vo1.FNumber                  AS Varchar(10)) AS FVouchNo
       ,u1.FSecQty
       ,u1.FSecCoefficient
       ,ISNULL(ta.FName,'')
       ,u1.FMTONo
FROM ICStockBill v1
LEFT JOIN ICStockBillEntry u1
ON v1.FInterID=u1.FInterID
LEFT JOIN t_MeasureUnit t100
ON t100.FMeasureUnitID=u1.FUnitID
INNER JOIN t_ICItem t1
ON u1.FItemID=t1.FItemID
LEFT JOIN t_Stock t2
ON u1.FDCStockID=t2.FItemID
LEFT JOIN t_StockPlace t11
ON u1.FDCSPID=t11.FSPID
LEFT JOIN t_Currency t503
ON v1.FCurrencyID=t503.FCurrencyID
LEFT JOIN t_voucher vo1
ON vo1.FVoucherID=v1.FVchInterId
LEFT JOIN t_voucherGroup g1
ON vo1.FGroupID=g1.FGroupID
LEFT JOIN t_AuxItem ta
ON ta.FItemID=u1.FAuxPropID
WHERE v1.FDate >='2020-01-01' 
AND v1.FDate <'2020-02-01' 
AND v1.Ftrantype IN (1,2,5,10,40,101,102,21,28,29,43,100) 
AND isnull(t2.FIncludeAccounting,0) =1 
AND v1.FStatus>0 
AND v1.FCancelLation=0 
AND (Not (v1.FTranType=1 AND v1.FPoMode=36681)) 

INSERT INTO #T100 (FAmountDecimal,FDate,FBillNo,FNote,FDeptID,FUnitInName,FBatchNo,FInQty,FInMasterQty, FInPrice,FInBUUnitPrice,FInAmount,FInterID,FTranType,FBillTypeID,FEntryID,FItemID,FVouchNo,FInSecQty,FSecCoefficient,FAuxPropName,FMTONo)
SELECT  2 
       ,v1.FDate
       ,v1.FBillNo
       ,u1.FNote
       ,v1.FDeptID
       ,T100.FName                                        AS FUnitInName
       ,u1.FBatchNo
       ,u1.FAuxQty
       ,u1.FQty
       ,IsNull(u1.FAuxPrice,0)
       ,Round(IsNull(u1.FAuxPrice,0)/tzz.FCoefficient,2)  AS FBUUnitPrice
       ,u1.FAmount                                        AS FAmount
       ,v1.FID
       ,v1.FClassTypeID
       ,NULL
       ,u1.FEntryID
       ,t1.Fnumber                                        AS FItemID
       ,g1.FName + '-' + cast(vo1.FNumber AS Varchar(10)) AS FVouchNo
       ,u1.FSecQty
       ,u1.FSecCoefficient
       ,ISNULL(ta.FName,'')
       ,u1.FMTONo
FROM ICVMIInStock v1
LEFT JOIN ICVMIInStockEntry u1
ON v1.FID=u1.FID
LEFT JOIN t_MeasureUnit t100
ON t100.FMeasureUnitID=u1.FAuxUnitID
INNER JOIN t_ICItem t1
ON u1.FItemID=t1.FItemID
LEFT JOIN t_Stock t2
ON u1.FStockID=t2.FItemID
LEFT JOIN t_StockPlace t11
ON u1.FSPID=t11.FSPID --Left
JOIN t_Currency t503
ON v1.FCurrencyID=t503.FCurrencyID
LEFT JOIN t_MeasureUnit tz3
ON t1.FCUUnitID=tz3.FMeasureUnitID
LEFT JOIN t_MeasureUnit tzz
ON u1.FAuxUnitID=tzz.FMeasureUnitID
LEFT JOIN t_voucher vo1
ON vo1.FVoucherID=Null
LEFT JOIN t_voucherGroup g1
ON vo1.FGroupID=g1.FGroupID
LEFT JOIN t_AuxItem ta
ON ta.FItemID=u1.FAuxPropID
WHERE v1.FDate >='2020-01-01' 
AND v1.FDate <'2020-02-01' 
AND v1.FClassTypeID=1007601 
AND isnull(t2.FIncludeAccounting 0) =1 
AND v1.FStatus>0 

INSERT INTO #T100 (FAmountDecimal FDate FBillNo FNote FDeptID FUnitInName FBatchNo FInQty FInMasterQty FInPrice FInBUUnitPrice FInAmount FInterID FTranType FBillTypeID FEntryID FItemID FVouchNo FInSecQty FSecCoefficient FAuxPropName FMTONo)
SELECT  CASE WHEN v1.FCurrencyID is Null Or v1.FCurrencyID='' THEN @FScale ELSE t503.FScale END v1.FDate v1.FBillNo u1.FNote v1.FDeptID T100.FName AS FUnitInName u1.FBatchNo u1.FAuxQty u1.FQty Case t1.FTrack 
             WHEN 81 THEN u1.FAuxPlanPrice ELSE u1.FAuxPrice END                                                                                   AS FPrice Case t1.FTrack 
             WHEN 81 THEN u1.FPlanPrice ELSE u1.FPrice END                                                                                         AS FBUUnitPrice (Case t1.FTrack 
             WHEN 81 THEN u1.FPlanAmount ELSE u1.FAmount END) AS FAmount v1.FInterID v1.FTranType v1.FBillTypeID u1.FEntryID t1.Fnumber AS FItemID g1.FName + '-' + cast(vo1.FNumber AS Varchar(10)) AS FVouchNo u1.FSecQty u1.FSecCoefficient ISNULL(ta.FName '') u1.FMTONo
FROM ICStockBill v1
LEFT JOIN ICStockBillEntry u1
ON v1.FInterID=u1.FInterID
LEFT JOIN t_MeasureUnit t100
ON t100.FMeasureUnitID=u1.FUnitID
INNER JOIN t_ICItem t1
ON u1.FItemID=t1.FItemID
LEFT JOIN t_Stock t2
ON u1.FSCStockID=t2.FItemID
LEFT JOIN t_StockPlace t11
ON u1.FDCSPID=t11.FSPID
LEFT JOIN t_Currency t503
ON v1.FCurrencyID=t503.FCurrencyID
LEFT JOIN t_voucher vo1
ON vo1.FVoucherID=v1.FVchInterId
LEFT JOIN t_voucherGroup g1
ON vo1.FGroupID=g1.FGroupID
LEFT JOIN t_AuxItem ta
ON ta.FItemID=u1.FAuxPropID
WHERE v1.FDate >='2020-01-01' 
AND v1.FDate <'2020-02-01' 
AND v1.Ftrantype = 24 
AND isnull(t2.FIncludeAccounting 0) =1 
AND v1.FStatus>0 
AND v1.FCancelLation=0 Update #t100 

SET FOutQty=FInQty FOutMasterQty=FInMasterQty FOutPrice=FInPrice FOutBUUnitPrice=FInBUUnitPrice FOutAmount=FInAmount FOutSecQty=FInSecQty FInQty=0 FInMasterQty=0 FInPrice=0 FInBUUnitPrice=0 FInAmount=0 FInSecQty=0 FUnitOutName=FUnitInName
WHERE Ftrantype IN (21 24 28 29 43) OR (FTranType=100 AND FBillTypeID=12541) 

INSERT INTO #T100 (FAmountDecimal FDate FBillNo FNote FDeptID FUnitInName FBatchNo FInQty FInMasterQty FInPrice FInBUUnitPrice FInAmount FInterID FTranType FEntryID FItemID FVouchNo FInSecQty FSecCoefficient FAuxPropName FMTONo)
SELECT  2 v1.FDate v1.FBillNo u1.FNote v1.FDeptID t100.FName AS FUnitInName u1.FBatchNo u1.FAuxQty u1.FQty Case t1.FTrack WHEN 81 THEN u1.FAuxPlanPrice Else u1.FAuxPriceRef End AS FPrice Case t1.FTrack WHEN 81 THEN u1.FPlanPrice Else u1.FPriceRef End AS FBUUnitPrice (Case t1.FTrack WHEN 81 THEN u1.FPlanAmount Else u1.FAmtRef End) AS FAmount v1.FInterID v1.FTranType u1.FEntryID t1.Fnumber AS FItemID g1.FName + '-' + cast(vo1.FNumber AS Varchar(10)) AS FVouchNo u1.FSecQty u1.FSecCoefficient ISNULL(ta.FName '') u1.FMTONo
FROM ICStockBill v1
LEFT JOIN ICStockBillEntry u1
ON v1.FInterID=u1.FInterID
LEFT JOIN t_MeasureUnit t100
ON t100.FMeasureUnitID=u1.FUnitID
INNER JOIN t_ICItem t1
ON u1.FItemID=t1.FItemID
LEFT JOIN t_Stock t2
ON u1.FDCStockID=t2.FItemID
LEFT JOIN t_StockPlace t11
ON u1.FDCSPID=t11.FSPID
LEFT JOIN t_Currency t503
ON v1.FCurrencyID=t503.FCurrencyID
LEFT JOIN t_voucher vo1
ON vo1.FVoucherID=v1.FVchInterId
LEFT JOIN t_voucherGroup g1
ON vo1.FGroupID=g1.FGroupID
LEFT JOIN t_AuxItem ta
ON ta.FItemID=u1.FAuxPropID
WHERE v1.FDate >='2020-01-01' 
AND v1.FDate <'2020-02-01' 
AND v1.Ftrantype=41 
AND isnull(t2.FIncludeAccounting 0) =1 
AND v1.FStatus>0 
AND v1.FCancelLation=0 

INSERT INTO #T100 (FAmountDecimal FDate FBillNo FNote FDeptID FUnitOutName FBatchNo FOutQty FOutMasterQty FOutPrice FOutBUUnitPrice FOutAmount FInterID FTranType FEntryID FItemID FVouchNo FOutSecQty FSecCoefficient FAuxPropName FMTONo)
SELECT  2 v1.FDate v1.FBillNo u1.FNote v1.FDeptID t100.FName AS FUnitInName u1.FBatchNo u1.FAuxQty u1.FQty Case t1.FTrack WHEN 81 THEN u1.FAuxPlanPrice Else u1.FAuxPrice End AS FPrice Case t1.FTrack WHEN 81 THEN u1.FPlanPrice Else u1.FPrice End AS FBUUnitPrice (Case t1.FTrack WHEN 81 THEN u1.FPlanAmount Else u1.FAmount End) AS FAmount v1.FInterID v1.FTranType u1.FEntryID t1.Fnumber AS FItemID g1.FName + '-' + cast(vo1.FNumber AS Varchar(10)) AS FVouchNo u1.FSecQty u1.FSecCoefficient ISNULL(ta.FName '') u1.FMTONo
FROM ICStockBill v1
LEFT JOIN ICStockBillEntry u1
ON v1.FInterID=u1.FInterID
LEFT JOIN t_MeasureUnit t100
ON t100.FMeasureUnitID=u1.FUnitID
INNER JOIN t_ICItem t1
ON u1.FItemID=t1.FItemID
LEFT JOIN t_Stock t2
ON u1.FSCStockID=t2.FItemID
LEFT JOIN t_StockPlace t11
ON u1.FSCSPID=t11.FSPID
LEFT JOIN t_Currency t503
ON v1.FCurrencyID=t503.FCurrencyID
LEFT JOIN t_voucher vo1
ON vo1.FVoucherID=v1.FVchInterId
LEFT JOIN t_voucherGroup g1
ON vo1.FGroupID=g1.FGroupID
LEFT JOIN t_AuxItem ta
ON ta.FItemID=u1.FAuxPropID
WHERE v1.FDate >='2020-01-01' 
AND v1.FDate <'2020-02-01' 
AND v1.Ftrantype=41 
AND isnull(t2.FIncludeAccounting 0) =1 
AND v1.FStatus>0 
AND v1.FCancelLation=0 

INSERT INTO #T100 (FMTOChangeFlag FAmountDecimal FDate FBillNo FNote FDeptID FVouchNo FUnitOutName FBatchNo FOutQty FOutMasterQty FOutPrice FOutBUUnitPrice FOutAmount FInterID FTranType FEntryID FItemID FOutSecQty FAuxPropName FMTONo )
SELECT  1 2 v1.FDate v1.FBillNo v1.FNote v1.FDeptID NULL AS FVoucherNo T100.FName AS FUnitInName u1.FBatchNo u1.FChangeQty u1.FChangeBaseQty 0 AS FPrice 0 AS FBUUnitPrice 0 AS FAmount v1.FID v1.FTranType u1.FEntryID t1.Fnumber AS FItemID u1.FChangeSecQty AS FOutSecQty (
SELECT  FName
FROM t_AuxItem
WHERE t_AuxItem.FItemID=u1.FAuxPropID) AS FAuxPropName u1.FFromMTONo 
FROM t_MTOChange v1
LEFT JOIN t_MTOChangeEntry u1
ON v1.FID=u1.FID
LEFT JOIN t_ICItem t1
ON u1.FItemID=t1.FItemID
LEFT JOIN t_Stock t2
ON u1.FStockID=t2.FItemID
LEFT JOIN ICClassType t10
ON v1.FClassTypeID=t10.FID
LEFT JOIN t_StockPlace t11
ON u1.FSPID=t11.FSPID
LEFT JOIN t_MeasureUnit T100
ON T100.FMeasureUnitID=u1.FUnitID
LEFT JOIN t_MeasureUnit tm
ON t1.FSecUnitID=tm.FMeasureUnitID
WHERE v1.FDate >='2020-01-01' 
AND v1.FDate <'2020-02-01' 
AND v1.FClassTypeID = 1107011 
AND v1.FStatus>0 
AND isnull(t2.FIncludeAccounting 0) =1 

INSERT INTO #T100 (FMTOChangeFlag FAmountDecimal FDate FBillNo FNote FDeptID FVouchNo FUnitInName FBatchNo FInQty FInMasterQty FInPrice FInBUUnitPrice FInAmount FInterID FTranType FEntryID FItemID FInSecQty FAuxPropName FMTONo )
SELECT  1 2 v1.FDate v1.FBillNo v1.FNote v1.FDeptID NULL AS FVoucherNo T100.FName AS FUnitInName u1.FBatchNo u1.FChangeQty u1.FChangeBaseQty 0 AS FPrice 0 AS FBUUnitPrice 0 AS FAmount v1.FID v1.FTranType u1.FEntryID t1.Fnumber AS FItemID u1.FChangeSecQty AS FInSecQty (
SELECT  FName
FROM t_AuxItem
WHERE t_AuxItem.FItemID=u1.FAuxPropID) AS FAuxPropName u1.FToMTONo 
FROM t_MTOChange v1
LEFT JOIN t_MTOChangeEntry u1
ON v1.FID=u1.FID
LEFT JOIN t_ICItem t1
ON u1.FItemID=t1.FItemID
LEFT JOIN t_Stock t2
ON u1.FStockID=t2.FItemID
LEFT JOIN ICClassType t10
ON v1.FClassTypeID=t10.FID
LEFT JOIN t_StockPlace t11
ON u1.FSPID=t11.FSPID
LEFT JOIN t_MeasureUnit T100
ON T100.FMeasureUnitID=u1.FUnitID
LEFT JOIN t_MeasureUnit tm
ON t1.FSecUnitID=tm.FMeasureUnitID
WHERE v1.FDate >='2020-01-01' 
AND v1.FDate <'2020-02-01' 
AND v1.FClassTypeID = 1107011 
AND v1.FStatus>0 
AND isnull(t2.FIncludeAccounting 0) =1 
SELECT  T.* D.FNumber AS FDeptNo D.FName AS FDeptName
FROM #T100 T
LEFT JOIN t_Department D
ON T.FDeptID=D.FItemID
ORDER BY T.FItemID T.FDate T.FInterID

INSERT INTO #T100(FItemID FBegQty FBegPrice FBegBal FSecBegQty FBegDiff)
SELECT  t1.Fnumber SUM(u1.FBegQty) (Case SUM(u1.FBegQty) WHEN 0 THEN 0 Else (SUM(u1.FBegBal)-SUM(u1.FBegDiff))/SUM(u1.FBegQty) End) AS FBegPrice Sum (u1.FBegBal) SUM(u1.FSecBegQty) SUM(u1.FBegDiff)
FROM #ICInvBal u1
INNER JOIN t_ICItem t1
ON u1.FItemID=t1.FItemID
LEFT JOIN t_Stock t2
ON u1.FStockID=t2.FItemID
LEFT JOIN t_StockPlace t11
ON u1.FStockPlaceID=t11.FSPID
WHERE u1.FYear=2020 
AND u1.FPeriod=1 
AND isnull(t2.FIncludeAccounting 0) =1 
GROUP BY  t1.Fnumber
HAVING SUM(u1.FBegQty) <> 0 OR SUM(u1.FBegBal) <> 0
ORDER BY t1.Fnumber
SELECT  FItemID SUM(FBegQty) AS FBegQty CASE WHEN SUM(FBegQty) = 0 THEN 0 ELSE SUM(FBegBal)/SUM(FBegQty) END AS FBegPrice SUM(FBegBal) AS FBegAmount SUM(FSecBegQty) AS FSecBegQty SUM(FBegDiff) AS FBegDiff
FROM #T100
GROUP BY  FItemID
HAVING NOT (SUM(FBegQty)+SUM(FInQty)-SUM(FOutQty)=0 AND SUM(FBegBal)+SUM(FInAmount)-SUM(FOutAmount)=0)
ORDER BY FItemID

DROP TABLE #T100

DROP TABLE #ICInvBal

SET NoCount Off 
