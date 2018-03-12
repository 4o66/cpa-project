/* This script adds all the data in the project as of 3/11/2018.
   It deletes ALL data in the database, so only run this if you want a
   known starting point. */

USE [cpa]
GO
DELETE FROM [dbo].[user]
GO
DELETE FROM [dbo].[common_words]
GO
DELETE FROM [dbo].[article]
GO
DELETE FROM [dbo].[isa]
GO
DELETE FROM [dbo].[knowledge_relationships]
GO
DELETE FROM [dbo].[isp]
GO
DELETE FROM [dbo].[isc]
GO
DELETE FROM [dbo].[object]
GO
DELETE FROM [dbo].[statement_detail]
GO
DELETE FROM [dbo].[statement]
GO
DELETE FROM [dbo].[company]
GO
DELETE FROM [dbo].[ratio_detail]
GO
DELETE FROM [dbo].[ratio]
GO
DELETE FROM [dbo].[ratio_construct]
GO
SET IDENTITY_INSERT [dbo].[ratio_construct] ON 
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (1, N'Cash & Equivalents', N'cashandequivalents')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (2, N'Restricted Cash', N'restrictedcash')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (3, N'Short-Term Investments', N'shortterminvestments')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (4, N'Note & Lease Receivable', N'notereceivable')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (5, N'Accounts Receivable', N'accountsreceivable')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (6, N'Inventories, net', N'netinventory')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (7, N'Prepaid Expenses', N'prepaidexpenses')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (8, N'Current Deferred & Refundable Income Taxes', N'currentdeferredtaxassets')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (9, N'Other Current Assets', N'othercurrentassets')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (10, N'Other Current Nonoperating Assets', N'othercurrentnonoperatingassets')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (11, N'Total Current Assets', N'totalcurrentassets')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (12, N'Plant, Property & Equipment, gross', N'grossppe')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (13, N'Accumulated Depreciation', N'accumulateddepreciation')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (14, N'Plant, Property, & Equipment, net', N'netppe')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (15, N'Long-Term Investments', N'longterminvestments')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (16, N'Noncurrent Note & Lease Receivables', N'noncurrentnotereceivables')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (17, N'Goodwill', N'goodwill')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (18, N'Intangible Assets', N'intangibleassets')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (19, N'Noncurrent Deferred & Refundable Income Taxes', N'noncurrentdeferredtaxassets')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (20, N'Employee Benefit Assets', N'employeebenefitassets')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (21, N'Other Noncurrent Operating Assets', N'othernoncurrentassets')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (22, N'Other Noncurrent Nonoperating Assets', N'othernoncurrentnonoperatingassets')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (23, N'Total Noncurrent Assets', N'totalnoncurrentassets')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (24, N'Total Assets', N'totalassets')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (25, N'Short-Term Debt', N'shorttermdebt')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (26, N'Accounts Payable', N'accountspayable')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (27, N'Accrued Expenses', N'accruedexpenses')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (28, N'Customer Deposits', N'customerdeposits')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (29, N'Dividends Payable', N'dividendspayable')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (30, N'Current Deferred Revenue', N'currentdeferredrevenue')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (31, N'Current Deferred & Payable Income Tax Liabilities', N'currentdeferredtaxliabilities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (32, N'Current Employee Benefit Liabilities', N'currentemployeebenefitliabilities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (33, N'Other Taxes Payable', N'othertaxespayable')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (34, N'Other Current Liabilities', N'othercurrentliabilities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (35, N'Other Current Nonoperating Liabilities', N'othercurrentnonoperatingliabilities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (36, N'Total Current Liabilities', N'totalcurrentliabilities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (37, N'Long-Term Debt', N'longtermdebt')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (38, N'Capital Lease Obligations', N'capitalleaseobligations')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (39, N'Asset Retirement Reserve & Litigation Obligation', N'assetretirementandlitigationobligation')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (40, N'Noncurrent Deferred Revenue', N'noncurrentdeferredrevenue')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (42, N'Noncurrent Employee Benefit Liabilities', N'noncurrentemployeebenefitliabilities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (43, N'Other Noncurrent Operating Liabilities', N'othernoncurrentliabilities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (44, N'Other Noncurrent Nonoperating Liabilities', N'othernoncurrentnonoperatingliabilities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (45, N'Total Noncurrent Liabilities', N'totalnoncurrentliabilities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (46, N'Total Liabilities', N'totalliabilities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (47, N'Commitments & Contingencies', N'commitmentsandcontingencies')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (48, N'Redeemable Noncontrolling Interest', N'redeemablenoncontrollinginterest')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (49, N'Preferred Stock', N'totalpreferredequity')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (50, N'Common Stock', N'commonequity')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (51, N'Retained Earnings', N'retainedearnings')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (52, N'Treasury Stock', N'treasurystock')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (53, N'Accumulated Other Comprehensive Income / (Loss)', N'aoci')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (54, N'Other Equity Adjustments', N'otherequity')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (55, N'Total Common Equity', N'totalcommonequity')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (56, N'Total Preferred & Common Equity', N'totalequity')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (57, N'Noncontrolling Interest', N'noncontrollinginterests')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (58, N'Total Equity & Noncontrolling Interests', N'totalequityandnoncontrollinginterests')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (59, N'Total Liabilities & Shareholders'' Equity', N'totalliabilitiesandequity')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (60, N'Operating Revenue', N'operatingrevenue')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (61, N'Other Revenue', N'otherrevenue')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (62, N'Total Revenue', N'totalrevenue')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (63, N'Operating Cost of Revenue', N'operatingcostofrevenue')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (64, N'Other Cost of Revenue', N'othercostofrevenue')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (65, N'Total Cost of Revenue', N'totalcostofrevenue')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (66, N'Total Gross Profit', N'totalgrossprofit')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (67, N'Selling, General & Admin Expense', N'sgaexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (68, N'Marketing Expense', N'marketingexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (69, N'Research & Development Expense', N'rdexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (70, N'Exploration Expense', N'explorationexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (71, N'Depreciation Expense', N'depreciationexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (72, N'Amortization Expense', N'amortizationexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (73, N'Depletion Expense', N'depletionexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (74, N'Other Operating Expenses / (Income)', N'otheroperatingexpenses')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (75, N'Impairment Charge', N'impairmentexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (76, N'Restructuring Charge', N'restructuringcharge')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (77, N'Other Special Charges / (Income)', N'otherspecialcharges')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (78, N'Total Operating Expenses', N'totaloperatingexpenses')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (79, N'Total Operating Income', N'totaloperatingincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (80, N'Interest Expense', N'totalinterestexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (81, N'Interest & Investment Income', N'totalinterestincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (82, N'Other Income / (Expense), net', N'otherincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (83, N'Total Other Income / (Expense), net', N'totalotherincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (84, N'Total Pre-Tax Income ', N'totalpretaxincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (85, N'Income Tax Expense', N'incometaxexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (86, N'Other Gains / (Losses), net', N'othergains')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (87, N'Net Income / (Loss) Continuing Operations', N'netincomecontinuing')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (88, N'Net Income / (Loss) Discontinued Operations', N'netincomediscontinued')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (89, N'Extraordinary Income / (Loss), net', N'extraordinaryincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (91, N'Consolidated Net Income / (Loss)', N'netincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (92, N'Preferred Stock Dividends Declared', N'preferreddividends')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (96, N'Weighted Average Basic Shares Outstanding', N'weightedavebasicsharesos')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (97, N'Basic Earnings per Share', N'basiceps')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (98, N'Weighted Average Diluted Shares Outstanding', N'weightedavedilutedsharesos')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (99, N'Diluted Earnings per Share', N'dilutedeps')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (101, N'Basic & Diluted Earnings per Share', N'basicdilutedeps')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (102, N'Cash Dividends to Common per Share', N'cashdividendspershare')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (103, N'Other Adjustments to Consolidated Net Income / (Lo', N'otheradjustmentstoconsolidatednetincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (104, N'Net Income / (Loss) Attributable to Noncontrolling', N'netincometononcontrollinginterest')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (105, N'Other Adjustments to Net Income / (Loss) Attributa', N'otheradjustmentstonetincometocommon')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (106, N'Net Income / (Loss) Attributable to Common Shareho', N'netincometocommon')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (107, N'Weighted Average Basic & Diluted Shares Outstandin', N'weightedavebasicdilutedsharesos')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (108, N'Noncurrent Deferred & Payable Income Tax Liabiliti', N'noncurrentdeferredtaxliabilities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (109, N'Loans and Leases Interest Income', N'loansandleaseinterestincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (110, N'Federal Funds Sold', N'fedfundssold')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (111, N'Investment Securities Interest Income', N'investmentsecuritiesinterestincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (112, N'Interest Bearing Deposits at Other Banks', N'interestbearingdepositsatotherbanks')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (116, N'Trading Account Securities', N'tradingaccountsecurities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (117, N'Trading Account Interest Income', N'tradingaccountinterestincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (118, N'Loans and Leases', N'loansandleases')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (119, N'Other Interest Income', N'otherinterestincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (120, N'Allowance for Loan and Lease Losses', N'allowanceforloanandleaselosses')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (121, N'Loans and Leases, Net of Allowance', N'netloansandleases')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (122, N'Deposits Interest Expense', N'depositsinterestexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (123, N'Loans Held for Sale', N'loansheldforsale')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (124, N'Short-Term Borrowings Interest Expense', N'shorttermborrowinginterestexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (125, N'Accrued Investment Income', N'accruedinvestmentincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (126, N'Long-Term Debt Interest Expense', N'longtermdebtinterestexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (127, N'Customer and Other Receivables', N'customerandotherreceivables')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (129, N'Premises and Equipment, Net', N'netpremisesandequipment')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (130, N'Capitalized Lease Obligations Interest Expense', N'capitalizedleaseobligationinterestexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (131, N'Mortgage Servicing Rights', N'mortgageservicingrights')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (132, N'Other Interest Expense', N'otherinterestexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (133, N'Unearned Premiums Asset', N'unearnedpremiumsdebit')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (134, N'Deferred Acquisition Cost', N'deferredacquisitioncost')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (135, N'Net Interest Income / (Expense)', N'netinterestincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (136, N'Separate Account Business Assets', N'separateaccountbusinessassets')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (137, N'Trust Fees by Commissions', N'trustfeeincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (138, N'Service Charges on Deposit Accounts', N'servicechargesondepositsincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (139, N'Other Service Charges', N'otherservicechargeincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (140, N'Other Assets', N'otherassets')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (142, N'Non-Interest Bearing Deposits', N'noninterestbearingdeposits')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (143, N'Interest Bearing Deposits', N'interestbearingdeposits')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (144, N'Premiums Earned', N'premiumsearned')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (145, N'Federal Funds Purchased and Securities Sold', N'fedfundspurchased')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (146, N'Investment Banking Income', N'investmentbankingincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (147, N'Other Non-Interest Income', N'othernoninterestincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (148, N'Bankers Acceptance Outstanding', N'bankersacceptances')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (149, N'Total Non-Interest Income', N'totalnoninterestincome')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (150, N'Accrued Interest Payable', N'accruedinterestpayable')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (151, N'Other Short-Term Payables', N'othershorttermpayables')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (152, N'Provision for Credit Losses', N'provisionforcreditlosses')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (153, N'Salaries and Employee Benefits', N'salariesandemployeebenefitsexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (154, N'Net Occupancy & Equipment Expense', N'netoccupancyequipmentexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (155, N'Claims and Claim Expense', N'claimsandclaimexpenses')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (156, N'Future Policy Benefits', N'futurepolicybenefits')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (157, N'Property & Liability Insurance Claims', N'propertyliabilityinsuranceclaims')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (158, N'Unearned Premiums Liability', N'unearnedpremiumscredit')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (159, N'Insurance Policy Acquisition Costs', N'policyacquisitioncosts')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (160, N'Policy Holder Funds', N'policyholderfunds')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (161, N'Amortization of Deferred Policy Acquisition Costs', N'amortizationofdeferredpolicyacquisitioncosts')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (162, N'Participating Policy Holder Equity', N'participatingpolicyholderequity')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (163, N'Current and Future Benefits', N'currentandfuturebenefits')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (164, N'Separate Account Business Liabilities', N'separateaccountbusinessliabilities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (165, N'Other Long-Term Liabilities', N'otherlongtermliabilities')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (166, N'Total Non-Interest Expense', N'totalnoninterestexpense')
GO
INSERT [dbo].[ratio_construct] ([id], [name], [tag]) VALUES (167, N'Nonoperating Income / (Expense), net', N'nonoperatingincome')
GO
SET IDENTITY_INSERT [dbo].[ratio_construct] OFF
GO
SET IDENTITY_INSERT [dbo].[ratio] ON 
GO
INSERT [dbo].[ratio] ([id], [name], [type], [user_id]) VALUES (14, N'Ratio 1', N'2', 0)
GO
INSERT [dbo].[ratio] ([id], [name], [type], [user_id]) VALUES (15, N'Debt Ratio', N'1', 0)
GO
INSERT [dbo].[ratio] ([id], [name], [type], [user_id]) VALUES (17, N'Operating Margin', N'3', 0)
GO
INSERT [dbo].[ratio] ([id], [name], [type], [user_id]) VALUES (18, N'Return on Equity (ROE)', N'4', 0)
GO
INSERT [dbo].[ratio] ([id], [name], [type], [user_id]) VALUES (20, N'sample ratio 1', N'0', 0)
GO
INSERT [dbo].[ratio] ([id], [name], [type], [user_id]) VALUES (21, N'Duplicate Check', N'1', 0)
GO
INSERT [dbo].[ratio] ([id], [name], [type], [user_id]) VALUES (37, N'My Ratio 3', N'0', 0)
GO
SET IDENTITY_INSERT [dbo].[ratio] OFF
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (14, N'd', 0, 9, N'-')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (14, N'd', 1, 9, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (14, N'n', 0, 3, N'-')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (14, N'n', 1, 6, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (15, N'd', 0, 24, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (15, N'n', 0, 46, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (17, N'd', 0, 62, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (17, N'n', 0, 79, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (18, N'd', 0, 56, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (18, N'n', 0, 91, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (20, N'd', 0, 20, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (20, N'd', 1, 17, N'-')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (20, N'n', 0, 2, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (20, N'n', 1, 3, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (21, N'd', 0, 7, N'-')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (21, N'n', 0, 3, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (37, N'd', 0, 70, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (37, N'n', 0, 26, N'+')
GO
INSERT [dbo].[ratio_detail] ([ratio_id], [position], [equation_order], [ratio_construct_id], [operator]) VALUES (37, N'n', 1, 29, N'-')
GO
SET IDENTITY_INSERT [dbo].[company] ON 
GO
INSERT [dbo].[company] ([id], [name], [market], [symbol], [description]) VALUES (2, N'Apple Inc.', N'NASD', N'AAPL', NULL)
GO
INSERT [dbo].[company] ([id], [name], [market], [symbol], [description]) VALUES (3, N'Costco Wholesale Corporation', N'NASD', N'COST', NULL)
GO
INSERT [dbo].[company] ([id], [name], [market], [symbol], [description]) VALUES (4, N'Amazon.com, Inc.', N'NASD', N'AMZN', NULL)
GO
INSERT [dbo].[company] ([id], [name], [market], [symbol], [description]) VALUES (5, N'Facebook', N'NASD', N'FB', NULL)
GO
INSERT [dbo].[company] ([id], [name], [market], [symbol], [description]) VALUES (6, N'IBM', N'NASD', N'IBM', NULL)
GO
INSERT [dbo].[company] ([id], [name], [market], [symbol], [description]) VALUES (10, N'Micron', N'NASD', N'MU', NULL)
GO
INSERT [dbo].[company] ([id], [name], [market], [symbol], [description]) VALUES (11, N'Bank of America', N'NASD', N'BAC', NULL)
GO
SET IDENTITY_INSERT [dbo].[company] OFF
GO
SET IDENTITY_INSERT [dbo].[statement] ON 
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (1, N'balance_sheet', 2017, 0, 2)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (2, N'balance_sheet', 2016, 0, 2)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (4, N'balance_sheet', 2015, 0, 2)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (6, N'balance_sheet', 2014, 0, 2)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (7, N'balance_sheet', 2017, 0, 3)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (8, N'balance_sheet', 2016, 0, 3)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (9, N'balance_sheet', 2015, 0, 3)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (10, N'balance_sheet', 2014, 0, 3)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (11, N'balance_sheet', 2017, 0, 4)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (12, N'balance_sheet', 2016, 0, 4)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (16, N'balance_sheet', 2015, 0, 4)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (17, N'balance_sheet', 2014, 0, 4)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (18, N'income_statement', 2017, 0, 2)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (19, N'income_statement', 2016, 0, 2)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (20, N'income_statement', 2015, 0, 2)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (21, N'income_statement', 2014, 0, 2)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (22, N'income_statement', 2017, 0, 3)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (23, N'income_statement', 2016, 0, 3)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (24, N'income_statement', 2015, 0, 3)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (25, N'income_statement', 2014, 0, 3)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (26, N'income_statement', 2017, 0, 4)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (27, N'income_statement', 2016, 0, 4)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (28, N'income_statement', 2015, 0, 4)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (29, N'income_statement', 2014, 0, 4)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (30, N'income_statement', 2017, 0, 5)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (31, N'income_statement', 2016, 0, 5)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (32, N'income_statement', 2015, 0, 5)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (33, N'income_statement', 2014, 0, 5)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (34, N'balance_sheet', 2017, 0, 5)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (35, N'balance_sheet', 2016, 0, 5)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (36, N'balance_sheet', 2015, 0, 5)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (37, N'balance_sheet', 2014, 0, 5)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (38, N'balance_sheet', 2017, 0, 6)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (39, N'balance_sheet', 2016, 0, 6)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (40, N'balance_sheet', 2015, 0, 6)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (41, N'balance_sheet', 2014, 0, 6)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (42, N'income_statement', 2017, 0, 6)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (43, N'income_statement', 2016, 0, 6)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (44, N'income_statement', 2015, 0, 6)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (45, N'income_statement', 2014, 0, 6)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (46, N'balance_sheet', 2017, 0, 10)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (47, N'balance_sheet', 2015, 0, 10)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (48, N'balance_sheet', 2016, 0, 10)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (49, N'balance_sheet', 2014, 0, 10)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (50, N'income_statement', 2017, 0, 10)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (51, N'income_statement', 2014, 0, 10)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (52, N'income_statement', 2016, 0, 10)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (53, N'income_statement', 2015, 0, 10)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (54, N'balance_sheet', 2015, 0, 11)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (55, N'balance_sheet', 2017, 0, 11)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (56, N'balance_sheet', 2014, 0, 11)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (57, N'balance_sheet', 2016, 0, 11)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (58, N'income_statement', 2017, 0, 11)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (59, N'income_statement', 2016, 0, 11)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (60, N'income_statement', 2015, 0, 11)
GO
INSERT [dbo].[statement] ([id], [name], [year], [quarter], [company_id]) VALUES (61, N'income_statement', 2014, 0, 11)
GO
SET IDENTITY_INSERT [dbo].[statement] OFF
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 0, 1, 20289000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 1, 3, 53892000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 2, 4, 17799000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 3, 5, 17874000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 4, 6, 4855000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 5, 9, 13936000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 6, 11, 128645000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 7, 14, 33783000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 8, 15, 194714000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 9, 17, 5717000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 10, 18, 2298000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 11, 21, 10162000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 12, 23, 212891000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 13, 24, 375319000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 14, 25, 18473000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 15, 26, 49049000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 16, 27, 25744000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 17, 36, 100814000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 18, 37, 97207000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 19, 43, 40415000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 20, 45, 140458000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 21, 46, 241272000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 22, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 23, 50, 35867000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 24, 51, 98330000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 25, 53, -150000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 26, 55, 134047000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 27, 56, 134047000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 28, 58, 134047000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 29, 59, 375319000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 30, 30, 7548000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (1, 31, 40, 2836000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 0, 1, 20484000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 1, 3, 46671000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 2, 4, 13545000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 3, 5, 15754000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 4, 6, 2132000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 5, 9, 8283000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 6, 11, 106869000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 7, 14, 27010000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 8, 15, 170430000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 9, 17, 5414000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 10, 18, 3206000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 11, 21, 8757000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 12, 23, 187807000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 13, 24, 321686000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 14, 25, 11605000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 15, 26, 37294000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 16, 27, 22027000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 17, 36, 79006000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 18, 37, 75427000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 19, 43, 36074000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 20, 45, 114431000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 21, 46, 193437000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 22, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 23, 50, 31251000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 24, 51, 96364000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 25, 53, 634000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 26, 55, 128249000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 27, 56, 128249000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 28, 58, 128249000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 29, 59, 321686000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 30, 30, 8080000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (2, 31, 40, 2930000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 0, 1, 21120000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 1, 3, 20481000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 2, 4, 13494000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 3, 5, 16849000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 4, 6, 2349000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 5, 9, 15085000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 6, 11, 89378000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 7, 14, 22471000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 8, 15, 164065000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 9, 17, 5116000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 10, 18, 3893000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 11, 21, 5422000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 12, 23, 178496000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 13, 24, 290345000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 14, 25, 11000000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 15, 26, 35490000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 16, 27, 25181000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 17, 36, 80610000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 18, 37, 53329000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 19, 43, 33427000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 20, 45, 90380000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 21, 46, 170990000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 22, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 23, 50, 27416000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 24, 51, 92284000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 25, 53, -345000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 26, 55, 119355000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 27, 56, 119355000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 28, 58, 119355000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 29, 59, 290345000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 30, 30, 8940000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (4, 31, 40, 3624000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 0, 1, 13844000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 1, 3, 11233000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 2, 4, 9759000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 3, 5, 17460000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 4, 6, 2111000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 5, 9, 9806000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 6, 11, 68531000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 7, 14, 20624000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 8, 15, 130162000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 9, 17, 4616000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 10, 18, 4142000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 11, 21, 3764000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 12, 23, 142684000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 13, 24, 231839000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 14, 25, 6308000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 15, 26, 30196000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 16, 27, 18453000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 17, 36, 63448000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 18, 37, 28987000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 19, 43, 24826000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 20, 45, 56844000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 21, 46, 120292000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 22, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 23, 50, 23313000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 24, 51, 87152000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 25, 53, 1082000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 26, 55, 111547000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 27, 56, 111547000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 28, 58, 111547000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 29, 59, 231839000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 30, 8, 4318000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 31, 30, 8491000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (6, 32, 40, 3031000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 0, 1, 4546000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 1, 3, 1233000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 2, 5, 1432000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 3, 6, 9834000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 4, 9, 272000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 5, 11, 17317000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 6, 12, 28341000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 7, 13, 10180000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 8, 14, 18161000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 9, 21, 869000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 10, 23, 869000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 11, 24, 36347000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 12, 26, 9608000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 13, 34, 2725000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 14, 36, 17495000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 15, 37, 6573000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 16, 43, 1200000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 17, 45, 7773000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 18, 46, 25268000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 19, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 20, 49, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 21, 50, 5804000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 22, 51, 5988000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 23, 53, -1014000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 24, 55, 10778000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 25, 56, 10778000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 26, 57, 301000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 27, 58, 11079000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 28, 59, 36347000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 29, 28, 961000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 30, 30, 1498000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (7, 31, 32, 2703000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 0, 1, 3379000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 1, 3, 1350000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 2, 5, 1252000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 3, 6, 8969000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 4, 9, 268000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 5, 11, 15218000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 6, 12, 26167000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 7, 13, 9124000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 8, 14, 17043000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 9, 21, 902000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 10, 23, 902000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 11, 24, 33163000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 12, 25, 1100000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 13, 26, 7612000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 14, 34, 2003000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 15, 36, 15575000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 16, 37, 4061000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 17, 43, 1195000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 18, 45, 5256000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 19, 46, 20831000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 20, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 21, 49, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 22, 50, 5492000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 23, 51, 7686000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 24, 53, -1099000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 25, 55, 12079000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 26, 56, 12079000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 27, 57, 253000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 28, 58, 12332000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 29, 59, 33163000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 30, 28, 869000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 31, 30, 1362000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (8, 32, 32, 2629000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 0, 1, 4801000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 1, 3, 1618000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 2, 5, 1224000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 3, 6, 8908000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 4, 9, 228000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 5, 11, 16779000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 6, 12, 23664000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 7, 13, 8263000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 8, 14, 15401000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 9, 21, 837000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 10, 23, 837000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 11, 24, 33017000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 12, 25, 1283000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 13, 26, 9011000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 14, 34, 1695000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 15, 36, 16539000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 16, 37, 4852000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 17, 43, 783000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 18, 45, 5635000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 19, 46, 22174000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 20, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 21, 49, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 22, 50, 5220000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 23, 51, 6518000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 24, 53, -1121000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 25, 55, 10617000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 26, 56, 10617000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 27, 57, 226000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 28, 58, 10843000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 29, 59, 33017000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 30, 28, 813000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 31, 30, 1269000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (9, 32, 32, 2468000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 0, 1, 5738000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 1, 3, 1577000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 2, 5, 1148000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 3, 6, 8456000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 4, 11, 17588000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 5, 12, 22675000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 6, 13, 7845000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 7, 14, 14830000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 8, 21, 606000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 9, 23, 606000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 10, 24, 33024000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 11, 25, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 12, 26, 8491000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 13, 34, 1663000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 14, 36, 14412000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 15, 37, 5093000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 16, 45, 6097000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 17, 46, 20509000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 18, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 19, 49, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 20, 50, 4921000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 21, 51, 7458000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 22, 53, -76000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 23, 55, 12303000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 24, 56, 12303000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 25, 57, 212000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 26, 58, 12515000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 27, 59, 33024000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 28, 8, 669000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 29, 28, 773000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 30, 30, 1254000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 31, 32, 2231000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (10, 32, 108, 1004000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 0, 1, 20522000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 1, 3, 10464000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 2, 5, 13164000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 3, 6, 16047000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 4, 11, 60197000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 5, 14, 48866000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 6, 17, 13350000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 7, 21, 8897000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 8, 23, 22247000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 9, 24, 131310000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 10, 26, 34616000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 11, 27, 18170000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 12, 36, 57883000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 13, 37, 24743000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 14, 43, 20975000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 15, 45, 45718000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 16, 46, 103601000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 17, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 18, 49, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 19, 50, 21394000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 20, 51, 8636000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 21, 52, -1837000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 22, 53, -484000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 23, 55, 27709000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 24, 56, 27709000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 25, 58, 27709000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 26, 59, 131310000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (11, 27, 30, 5097000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 0, 1, 19334000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 1, 3, 6647000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 2, 5, 8339000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 3, 6, 11461000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 4, 11, 45781000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 5, 14, 29114000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 6, 17, 3784000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 7, 21, 4723000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 8, 23, 8507000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 9, 24, 83402000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 10, 26, 25309000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 11, 27, 13739000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 12, 36, 43816000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 13, 37, 7694000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 14, 43, 12607000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 15, 45, 20301000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 16, 46, 64117000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 17, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 18, 49, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 19, 50, 17191000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 20, 51, 4916000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 21, 52, -1837000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 22, 53, -985000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 23, 55, 19285000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 24, 56, 19285000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 25, 58, 19285000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 26, 59, 83402000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (12, 27, 30, 4768000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 0, 1, 15890000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 1, 3, 3918000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 2, 5, 5654000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 3, 6, 10243000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 4, 11, 35705000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 5, 14, 21838000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 6, 17, 3759000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 7, 21, 3445000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 8, 23, 7204000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 9, 24, 64747000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 10, 26, 20397000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 11, 27, 10372000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 12, 36, 33887000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 13, 37, 8227000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 14, 43, 9249000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 15, 45, 17476000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 16, 46, 51363000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 17, 49, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 18, 50, 13399000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 19, 51, 2545000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 20, 52, -1837000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 21, 53, -723000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 22, 55, 13384000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 23, 56, 13384000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 24, 58, 13384000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 25, 59, 64747000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (16, 26, 30, 3118000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 0, 1, 14557000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 1, 3, 2859000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 2, 5, 5612000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 3, 6, 8299000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 4, 11, 31327000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 5, 14, 16967000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 6, 17, 3319000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 7, 21, 2892000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 8, 23, 6211000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 9, 24, 54505000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 10, 26, 16459000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 11, 27, 9807000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 12, 36, 28089000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 13, 37, 8265000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 14, 43, 7410000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 15, 45, 15675000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 16, 46, 43764000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 17, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 18, 49, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 19, 50, 11140000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 20, 51, 1949000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 21, 52, -1837000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 22, 53, -511000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 23, 55, 10741000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 24, 56, 10741000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 25, 58, 10741000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 26, 59, 54505000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (17, 27, 30, 1823000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 0, 60, 229234000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 1, 62, 229234000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 2, 63, 141048000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 3, 65, 141048000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 4, 66, 88186000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 5, 67, 15261000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 6, 69, 11581000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 7, 78, 26842000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 8, 79, 61344000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 9, 82, 2745000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 10, 83, 2745000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 11, 84, 64089000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 12, 85, 15738000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 13, 87, 48351000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 14, 91, 48351000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 15, 106, 48351000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 16, 96, 5217242000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 17, 97, 9.2700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 18, 98, 5251692000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 19, 99, 9.2100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 20, 107, 5215900000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 21, 101, 9.2700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (18, 22, 102, 2.4000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 0, 60, 215639000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 1, 62, 215639000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 2, 63, 131376000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 3, 65, 131376000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 4, 66, 84263000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 5, 67, 14194000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 6, 69, 10045000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 7, 78, 24239000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 8, 79, 60024000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 9, 82, 1348000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 10, 83, 1348000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 11, 84, 61372000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 12, 85, 15685000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 13, 87, 45687000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 14, 91, 45687000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 15, 106, 45687000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 16, 96, 5470820000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 17, 97, 8.3500)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 18, 98, 5500281000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 19, 99, 8.3100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 20, 107, 5471500000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 21, 101, 8.3500)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (19, 22, 102, 2.1800)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 0, 60, 233715000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 1, 62, 233715000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 2, 63, 140089000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 3, 65, 140089000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 4, 66, 93626000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 5, 67, 14329000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 6, 69, 8067000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 7, 78, 22396000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 8, 79, 71230000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 9, 82, 1285000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 10, 83, 1285000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 11, 84, 72515000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 12, 85, 19121000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 13, 87, 53394000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 14, 91, 53394000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 15, 106, 53394000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 16, 96, 5753421000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 17, 97, 9.2800)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 18, 98, 5793069000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 19, 99, 9.2200)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 20, 107, 5753700000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 21, 101, 9.2800)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (20, 22, 102, 1.9800)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 0, 60, 182795000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 1, 62, 182795000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 2, 63, 112258000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 3, 65, 112258000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 4, 66, 70537000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 5, 67, 11993000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 6, 69, 6041000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 7, 78, 18034000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 8, 79, 52503000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 9, 82, 980000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 10, 83, 980000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 11, 84, 53483000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 12, 85, 13973000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 13, 87, 39510000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 14, 91, 39510000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 15, 106, 39510000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 16, 96, 6085572000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 17, 97, 6.4900)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 18, 98, 6122663000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 19, 99, 6.4500)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 20, 107, 6087800000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 21, 101, 6.4900)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (21, 22, 102, 1.8200)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 0, 60, 129025000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 1, 62, 129025000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 2, 63, 111882000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 3, 65, 111882000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 4, 66, 17143000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 5, 67, 12950000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 6, 77, 82000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 7, 78, 13032000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 8, 79, 4111000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 9, 80, 134000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 10, 81, 62000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 11, 83, -72000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 12, 84, 4039000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 13, 85, 1325000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 14, 87, 2714000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 15, 91, 2714000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 16, 104, 35000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 17, 106, 2679000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 18, 96, 438437000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 19, 97, 6.1100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 20, 98, 440937000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 21, 99, 6.0800)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 22, 107, 438500000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 23, 101, 6.1100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (22, 24, 102, 8.9000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 0, 60, 118719000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 1, 62, 118719000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 2, 63, 102901000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 3, 65, 102901000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 4, 66, 15818000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 5, 67, 12068000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 6, 77, 78000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 7, 78, 12146000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 8, 79, 3672000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 9, 80, 133000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 10, 81, 80000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 11, 83, -53000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 12, 84, 3619000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 13, 85, 1243000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 14, 87, 2376000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 15, 91, 2376000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 16, 104, 26000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 17, 106, 2350000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 18, 96, 438585000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 19, 97, 5.3600)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 20, 98, 441263000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 21, 99, 5.3300)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 22, 107, 438400000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 23, 101, 5.3600)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (23, 24, 102, 1.7000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 0, 60, 116199000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 1, 62, 116199000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 2, 63, 101065000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 3, 65, 101065000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 4, 66, 15134000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 5, 67, 11445000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 6, 77, 65000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 7, 78, 11510000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 8, 79, 3624000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 9, 80, 124000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 10, 81, 104000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 11, 83, -20000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 12, 84, 3604000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 13, 85, 1195000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 14, 87, 2409000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 15, 91, 2409000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 16, 104, 32000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 17, 106, 2377000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 18, 96, 439455000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 19, 97, 5.4100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 20, 98, 442716000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 21, 99, 5.3700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 22, 107, 439400000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 23, 101, 5.4100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (24, 24, 102, 6.5100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 0, 60, 112640000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 1, 62, 112640000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 2, 63, 98458000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 3, 65, 98458000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 4, 66, 14182000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 5, 67, 10899000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 6, 77, 63000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 7, 78, 10962000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 8, 79, 3220000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 9, 80, 113000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 10, 81, 90000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 11, 83, -23000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 12, 84, 3197000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 13, 85, 1109000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 14, 87, 2088000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 15, 91, 2088000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 16, 104, 30000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 17, 106, 2058000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 18, 96, 438693000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 19, 97, 4.6900)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 20, 98, 442485000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 21, 99, 4.6500)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 22, 107, 438800000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 23, 101, 4.6900)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (25, 24, 102, 1.3300)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 0, 60, 177866000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 1, 62, 177866000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 2, 63, 137183000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 3, 65, 137183000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 4, 66, 40683000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 5, 67, 3888000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 6, 68, 10069000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 7, 69, 22620000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 8, 78, 36577000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 9, 79, 4106000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 10, 80, 848000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 11, 81, 202000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 12, 82, 346000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 13, 83, -300000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 14, 84, 3806000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 15, 85, 769000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 16, 86, -4000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 17, 87, 3033000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 18, 91, 3033000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 19, 106, 3033000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 20, 96, 480000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 21, 97, 6.3200)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 22, 98, 493000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 23, 99, 6.1500)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 24, 107, 479900000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (26, 25, 101, 6.3200)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 0, 60, 135987000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 1, 62, 135987000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 2, 63, 105884000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 3, 65, 105884000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 4, 66, 30103000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 5, 67, 2599000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 6, 68, 7233000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 7, 69, 16085000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 8, 78, 25917000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 9, 79, 4186000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 10, 80, 484000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 11, 81, 100000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 12, 82, 90000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 13, 83, -294000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 14, 84, 3892000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 15, 85, 1425000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 16, 86, -96000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 17, 87, 2371000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 18, 91, 2371000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 19, 106, 2371000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 20, 96, 474000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 21, 97, 5.0100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 22, 98, 484000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 23, 99, 4.9000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 24, 107, 473300000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (27, 25, 101, 5.0100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 0, 60, 107006000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 1, 62, 107006000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 2, 63, 85061000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 3, 65, 85061000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 4, 66, 21945000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 5, 67, 1918000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 6, 68, 5254000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 7, 69, 12540000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 8, 78, 19712000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 9, 79, 2233000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 10, 80, 459000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 11, 81, 50000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 12, 82, -256000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 13, 83, -665000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 14, 84, 1568000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 15, 85, 950000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 16, 86, -22000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 17, 87, 596000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 18, 91, 596000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 19, 106, 596000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 20, 96, 467000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 21, 97, 1.2800)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 22, 98, 477000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 23, 99, 1.2500)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 24, 107, 465600000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (28, 25, 101, 1.2800)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 0, 60, 88988000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 1, 62, 88988000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 2, 63, 73518000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 3, 65, 73518000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 4, 66, 15470000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 5, 67, 1685000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 6, 68, 4332000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 7, 69, 9275000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 8, 78, 15292000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 9, 79, 178000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 10, 80, 210000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 11, 81, 39000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 12, 82, -118000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 13, 83, -289000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 14, 84, -111000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 15, 85, 167000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 16, 86, 37000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 17, 87, -241000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 18, 91, -241000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 19, 106, -241000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 20, 96, 462000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 21, 97, -0.5200)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 22, 98, 462000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 23, 99, -0.5200)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 24, 107, 463500000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (29, 25, 101, -0.5200)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 0, 60, 40653000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 1, 62, 40653000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 2, 63, 5454000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 3, 65, 5454000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 4, 66, 35199000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 5, 67, 2517000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 6, 68, 4725000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 7, 69, 7754000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 8, 78, 14996000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 9, 79, 20203000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 10, 82, 391000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 11, 83, 391000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 12, 84, 20594000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 13, 85, 4660000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 14, 87, 15934000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 15, 91, 15934000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 16, 104, 14000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 17, 106, 15920000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 18, 96, 2901000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 19, 97, 5.4900)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 20, 98, 2956000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 21, 99, 5.3900)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 22, 107, 2899800000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (30, 23, 101, 5.4900)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 0, 60, 27638000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 1, 62, 27638000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 2, 63, 3789000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 3, 65, 3789000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 4, 66, 23849000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 5, 67, 1731000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 6, 68, 3772000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 7, 69, 5919000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 8, 78, 11422000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 9, 79, 12427000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 10, 82, 91000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 11, 83, 91000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 12, 84, 12518000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 13, 85, 2301000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 14, 87, 10217000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 15, 91, 10217000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 16, 104, 29000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 17, 106, 10188000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 18, 96, 2863000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 19, 97, 3.5600)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 20, 98, 2925000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 21, 99, 3.4900)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 22, 107, 2861800000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (31, 23, 101, 3.5600)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 0, 60, 17928000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 1, 62, 17928000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 2, 63, 2867000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 3, 65, 2867000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 4, 66, 15061000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 5, 67, 1295000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 6, 68, 2725000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 7, 69, 4816000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 8, 78, 8836000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 9, 79, 6225000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 10, 82, -31000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 11, 83, -31000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 12, 84, 6194000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 13, 85, 2506000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 14, 87, 3688000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 15, 91, 3688000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 16, 104, 19000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 17, 106, 3669000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 18, 96, 2803000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 19, 97, 1.3100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 20, 98, 2853000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 21, 99, 1.2900)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 22, 107, 2800800000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (32, 23, 101, 1.3100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 0, 60, 12466000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 1, 62, 12466000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 2, 63, 2153000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 3, 65, 2153000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 4, 66, 10313000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 5, 67, 973000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 6, 68, 1680000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 7, 69, 2666000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 8, 78, 5319000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 9, 79, 4994000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 10, 82, -84000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 11, 83, -84000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 12, 84, 4910000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 13, 85, 1970000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 14, 87, 2940000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 15, 91, 2940000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 16, 104, 15000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 17, 106, 2925000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 18, 96, 2614000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 19, 97, 1.1200)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 20, 98, 2664000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 21, 99, 1.1000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 22, 107, 2611600000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (33, 23, 101, 1.1200)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 0, 1, 8079000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 1, 3, 33632000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 2, 5, 5832000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 3, 7, 1020000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 4, 11, 48563000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 5, 14, 13721000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 6, 17, 18221000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 7, 18, 1884000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 8, 21, 2135000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 9, 23, 22240000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 10, 24, 84524000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 11, 26, 770000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 12, 27, 2892000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 13, 36, 3760000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 14, 43, 6417000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 15, 45, 6417000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 16, 46, 10177000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 17, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 18, 50, 40584000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 19, 51, 33990000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 20, 53, -227000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 21, 55, 74347000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 22, 56, 74347000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 23, 58, 74347000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 24, 59, 84524000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (34, 25, 30, 98000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 0, 1, 8903000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 1, 3, 20546000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 2, 5, 3993000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 3, 7, 959000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 4, 11, 34401000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 5, 14, 8591000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 6, 17, 18122000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 7, 18, 2535000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 8, 21, 1312000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 9, 23, 21969000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 10, 24, 64961000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 11, 26, 582000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 12, 27, 2203000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 13, 36, 2875000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 14, 43, 2892000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 15, 45, 2892000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 16, 46, 5767000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 17, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 18, 50, 38227000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 19, 51, 21670000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 20, 53, -703000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 21, 55, 59194000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 22, 56, 59194000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 23, 58, 59194000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 24, 59, 64961000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (35, 25, 30, 90000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 0, 1, 4907000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 1, 3, 13527000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 2, 5, 2559000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 3, 7, 659000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 4, 11, 21652000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 5, 14, 5687000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 6, 17, 18026000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 7, 18, 3246000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 8, 21, 796000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 9, 23, 22068000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 10, 24, 49407000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 11, 25, 7000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 12, 26, 413000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 13, 27, 1449000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 14, 36, 1925000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 15, 38, 107000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 16, 43, 3157000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 17, 45, 3264000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 18, 46, 5189000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 19, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 20, 50, 34886000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 21, 51, 9787000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 22, 53, -455000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 23, 55, 44218000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 24, 56, 44218000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 25, 58, 44218000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 26, 59, 49407000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (36, 27, 30, 56000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 0, 1, 4315000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 1, 3, 6884000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 2, 5, 1678000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 3, 7, 513000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 4, 11, 13390000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 5, 14, 3967000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 6, 17, 17981000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 7, 18, 3929000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 8, 21, 699000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 9, 23, 22609000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 10, 24, 39966000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 11, 25, 114000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 12, 26, 378000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 13, 27, 866000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 14, 36, 1424000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 15, 38, 119000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 16, 43, 2327000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 17, 45, 2446000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 18, 46, 3870000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 19, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 20, 50, 30225000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 21, 51, 6099000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 22, 53, -228000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 23, 55, 36096000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 24, 56, 36096000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 25, 58, 36096000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 26, 59, 39966000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (37, 27, 30, 66000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 0, 1, 11972000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 1, 3, 608000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 2, 4, 21721000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 3, 5, 9909000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 4, 6, 1583000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 5, 7, 3942000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 6, 11, 49735000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 7, 12, 32331000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 8, 13, 21215000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 9, 14, 11116000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 10, 15, 4919000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 11, 17, 36788000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 12, 18, 3742000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 13, 23, 64504000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 14, 24, 125356000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 15, 25, 6987000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 16, 26, 6451000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 17, 27, 4510000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 18, 36, 37363000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 19, 37, 39837000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 20, 43, 9965000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 21, 45, 70268000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 22, 46, 107631000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 23, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 24, 50, 54566000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 25, 51, 153126000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 26, 52, -163507000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 27, 53, -26592000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 28, 55, 17593000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 29, 56, 17594000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 30, 57, 131000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 31, 58, 17725000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 32, 59, 125356000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 33, 16, 9550000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 34, 19, 4862000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 35, 20, 4643000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 36, 30, 11552000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 37, 31, 4219000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 38, 32, 3644000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 39, 40, 3746000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (38, 40, 42, 16720000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 0, 1, 7826000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 1, 3, 701000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 2, 4, 19006000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 3, 5, 10239000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 4, 6, 1553000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 5, 7, 4564000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 6, 11, 43888000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 7, 12, 30133000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 8, 13, 19303000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 9, 14, 10830000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 10, 15, 4585000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 11, 17, 36199000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 12, 18, 4688000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 13, 23, 62751000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 14, 24, 117470000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 15, 25, 7513000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 16, 26, 6209000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 17, 27, 4705000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 18, 36, 36275000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 19, 37, 34655000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 20, 43, 7477000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 21, 45, 62802000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 22, 46, 99078000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 23, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 24, 50, 53935000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 25, 51, 152759000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 26, 52, -159050000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 27, 53, -29398000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 28, 55, 18246000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 29, 56, 18246000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 30, 57, 146000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 31, 58, 18392000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 32, 59, 117470000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 33, 16, 9021000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 34, 19, 5224000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 35, 20, 3034000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 36, 30, 11035000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 37, 31, 3235000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 38, 32, 3577000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 39, 40, 3600000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (39, 40, 42, 17070000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 0, 1, 7686000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 1, 3, 508000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 2, 4, 19020000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 3, 5, 9534000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 4, 6, 1551000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 5, 7, 4205000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 6, 11, 42504000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 7, 12, 29342000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 8, 13, 18615000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 9, 14, 10727000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 10, 15, 5187000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 11, 17, 32021000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 12, 18, 3487000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 13, 23, 57264000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 14, 24, 110495000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 15, 25, 6461000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 16, 26, 6028000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 17, 27, 4353000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 18, 36, 34269000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 19, 37, 33428000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 20, 43, 8099000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 21, 45, 61802000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 22, 46, 96071000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 23, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 24, 50, 53262000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 25, 51, 146124000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 26, 52, -155518000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 27, 53, -29607000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 28, 55, 14261000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 29, 56, 14262000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 30, 57, 162000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 31, 58, 14424000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 32, 59, 110495000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 33, 16, 10013000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 34, 19, 4822000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 35, 20, 1734000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 36, 30, 11021000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 37, 31, 2847000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 38, 32, 3560000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 39, 40, 3771000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (40, 40, 42, 16504000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 0, 1, 8476000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 1, 3, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 2, 4, 19835000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 3, 5, 11996000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 4, 6, 2103000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 5, 7, 4967000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 6, 11, 47377000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 7, 12, 39034000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 8, 13, 28263000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 9, 14, 10771000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 10, 17, 30556000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 11, 18, 3104000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 12, 21, 5520000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 13, 23, 59124000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 14, 24, 117271000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 15, 25, 5731000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 16, 26, 6864000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 17, 34, 5994000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 18, 36, 39581000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 19, 37, 34991000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 20, 43, 8733000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 21, 45, 65676000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 22, 46, 105257000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 23, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 24, 50, 52666000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 25, 51, 137793000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 26, 52, -150715000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 27, 53, -27875000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 28, 55, 11869000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 29, 56, 11868000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 30, 57, 146000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 31, 58, 12014000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 32, 59, 117271000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 33, 16, 11109000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 34, 19, 6675000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 35, 20, 2160000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 36, 30, 11877000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 37, 31, 5084000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 38, 32, 4031000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 39, 40, 3691000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (41, 40, 42, 18261000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 0, 60, 79139000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 1, 62, 79139000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 2, 63, 42913000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 3, 65, 42913000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 4, 66, 36226000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 5, 67, 20107000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 6, 69, 4321000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 7, 74, -216000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 8, 78, 24212000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 9, 79, 12014000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 10, 80, 615000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 11, 83, -615000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 12, 84, 11400000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 13, 85, 5642000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 14, 87, 5758000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 15, 88, -5000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 16, 91, 5753000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 17, 106, 5753000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 18, 96, 932828295.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 19, 97, 6.1700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 20, 98, 937385625.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 21, 99, 6.1400)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 22, 107, 9279000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (42, 23, 101, 0.6200)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 0, 60, 79920000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 1, 62, 79920000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 2, 63, 41624000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 3, 65, 41625000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 4, 66, 38295000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 5, 67, 21069000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 6, 69, 4120000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 7, 74, 145000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 8, 78, 25334000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 9, 79, 12961000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 10, 80, 630000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 11, 83, -630000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 12, 84, 12330000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 13, 85, 449000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 14, 87, 11881000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 15, 88, -9000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 16, 91, 11872000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 17, 106, 11872000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 18, 96, 955422530.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 19, 97, 12.4300)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 20, 98, 958714097.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 21, 99, 12.3800)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 22, 107, 955100000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (43, 23, 101, 12.4300)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 0, 60, 81742000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 1, 62, 81742000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 2, 63, 41057000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 3, 65, 41057000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 4, 66, 40685000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 5, 67, 20430000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 6, 69, 4565000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 7, 74, -724000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 8, 78, 24271000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 9, 79, 16414000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 10, 80, 468000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 11, 83, -468000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 12, 84, 15945000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 13, 85, 2581000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 14, 87, 13364000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 15, 88, -174000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 16, 91, 13190000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 17, 106, 13190000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 18, 96, 978744523.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 19, 97, 13.4800)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 20, 98, 982700267.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 21, 99, 13.4200)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 22, 107, 978500000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (44, 23, 101, 13.4800)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 0, 60, 92793000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 1, 62, 92793000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 2, 63, 46386000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 3, 65, 46386000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 4, 66, 46407000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 5, 67, 23180000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 6, 69, 4695000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 7, 74, -1938000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 8, 78, 25937000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 9, 79, 20470000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 10, 80, 484000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 11, 83, -484000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 12, 84, 19986000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 13, 85, 4234000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 14, 87, 15751000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 15, 88, -3729000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 16, 91, 12022000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 17, 106, 12022000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 18, 96, 1004272584.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 19, 97, 11.9700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 20, 98, 1010000480.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 21, 99, 11.9000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 22, 107, 1004300000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (45, 23, 101, 11.9700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 0, 1, 5109000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 1, 3, 319000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 2, 5, 3759000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 3, 6, 3123000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 4, 9, 147000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 5, 11, 12457000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 6, 14, 19431000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 7, 15, 617000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 8, 17, 1228000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 9, 18, 387000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 10, 21, 450000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 11, 23, 3448000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 12, 24, 35336000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 13, 25, 1262000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 14, 26, 3664000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 15, 36, 5334000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 16, 37, 9872000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 17, 43, 639000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 18, 45, 10511000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 19, 46, 15845000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 20, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 21, 48, 21000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 22, 50, 8399000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 23, 51, 10260000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 24, 52, -67000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 25, 53, 29000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 26, 55, 18621000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 27, 56, 18621000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 28, 57, 849000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 29, 58, 19470000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 30, 59, 35336000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 31, 19, 766000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (46, 32, 30, 408000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 0, 1, 2287000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 1, 3, 1234000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 2, 5, 2507000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 3, 6, 2340000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 4, 9, 228000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 5, 11, 8596000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 6, 14, 10554000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 7, 15, 3492000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 8, 18, 449000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 9, 21, 455000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 10, 23, 4993000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 11, 24, 24143000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 12, 25, 1089000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 13, 26, 2611000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 14, 36, 3905000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 15, 37, 6252000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 16, 43, 698000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 17, 45, 6950000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 18, 46, 10855000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 19, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 20, 48, 49000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 21, 50, 7582000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 22, 51, 5588000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 23, 52, -881000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 24, 53, 13000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 25, 55, 12302000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 26, 56, 12302000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 27, 57, 937000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 28, 58, 13239000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 29, 59, 24143000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 30, 19, 597000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (47, 31, 30, 205000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 0, 1, 4140000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 1, 3, 258000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 2, 5, 2068000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 3, 6, 2889000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 4, 9, 140000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 5, 11, 9495000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 6, 14, 14686000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 7, 15, 1778000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 8, 17, 104000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 9, 18, 464000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 10, 21, 356000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 11, 23, 3359000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 12, 24, 27540000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 13, 25, 756000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 14, 26, 3879000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 15, 36, 4835000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 16, 37, 9154000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 17, 43, 623000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 18, 45, 9777000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 19, 46, 14612000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 20, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 21, 48, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 22, 50, 7845000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 23, 51, 5299000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 24, 52, -1029000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 25, 53, -35000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 26, 55, 12080000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 27, 56, 12080000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 28, 57, 848000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 29, 58, 12928000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 30, 59, 27540000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 31, 19, 657000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (48, 32, 30, 200000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 0, 1, 4150000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 1, 3, 384000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 2, 5, 2906000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 3, 6, 2455000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 4, 9, 350000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 5, 11, 10245000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 6, 14, 8682000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 7, 15, 1790000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 8, 18, 468000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 9, 21, 415000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 10, 23, 3489000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 11, 24, 22416000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 12, 25, 1618000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 13, 26, 2864000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 14, 36, 4791000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 15, 37, 4893000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 16, 43, 1102000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 17, 45, 5995000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 18, 46, 10786000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 19, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 20, 48, 68000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 21, 50, 7975000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 22, 51, 2729000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 23, 52, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 24, 53, 56000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 25, 55, 10760000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 26, 56, 10760000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 27, 57, 802000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 28, 58, 11562000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 29, 59, 22416000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 30, 19, 816000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (49, 31, 30, 309000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 0, 60, 20322000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 1, 62, 20322000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 2, 63, 11886000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 3, 65, 11886000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 4, 66, 8436000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 5, 67, 743000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 6, 69, 1824000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 7, 74, -17000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 8, 76, 18000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 9, 78, 2568000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 10, 79, 5868000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 11, 80, 601000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 12, 81, 41000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 13, 82, -112000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 14, 83, -672000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 15, 84, 5196000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 16, 85, 114000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 17, 86, 8000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 18, 87, 5090000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 19, 91, 5090000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 20, 104, 1000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 21, 106, 5089000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 22, 96, 1089000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 23, 97, 4.6700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 24, 98, 1154000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 25, 99, 4.4100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 26, 107, 1089700000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (50, 27, 101, 4.6700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 0, 60, 16358000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 1, 62, 16358000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 2, 63, 10921000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 3, 65, 10921000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 4, 66, 5437000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 5, 67, 707000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 6, 69, 1371000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 7, 74, 232000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 8, 76, 40000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 9, 78, 2350000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 10, 79, 3087000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 11, 80, 352000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 12, 81, 23000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 13, 82, -25000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 14, 83, -354000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 15, 84, 2733000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 16, 85, 128000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 17, 86, 474000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 18, 87, 3079000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 19, 91, 3079000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 20, 104, 34000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 21, 106, 3045000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 22, 96, 1060000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 23, 97, 2.8700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 24, 98, 1198000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 25, 99, 2.5400)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 26, 107, 1061000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (51, 27, 101, 2.8700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 0, 60, 12399000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 1, 62, 12399000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 2, 63, 9894000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 3, 65, 9894000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 4, 66, 2505000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 5, 67, 659000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 6, 69, 1617000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 7, 74, -6000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 8, 76, 67000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 9, 78, 2337000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 10, 79, 168000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 11, 80, 437000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 12, 81, 42000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 13, 82, -54000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 14, 83, -449000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 15, 84, -281000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 16, 85, 19000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 17, 86, 25000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 18, 87, -275000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 19, 91, -275000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 20, 104, 1000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 21, 106, -276000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 22, 96, 1036000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 23, 97, -0.2700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 24, 98, 1036000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 25, 99, -0.2700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 26, 107, 1022200000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (52, 27, 101, -0.2700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 0, 60, 16192000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 1, 62, 16192000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 2, 63, 10977000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 3, 65, 10977000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 4, 66, 5215000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 5, 67, 719000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 6, 69, 1540000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 7, 74, -45000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 8, 76, 3000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 9, 78, 2217000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 10, 79, 2998000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 11, 80, 371000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 12, 81, 35000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 13, 82, -53000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 14, 83, -389000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 15, 84, 2609000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 16, 85, 157000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 17, 86, 447000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 18, 87, 2899000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 19, 91, 2899000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 20, 104, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 21, 106, 2899000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 22, 96, 1070000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 23, 97, 2.7100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 24, 98, 1170000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 25, 99, 2.4700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 26, 107, 1069700000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (53, 27, 101, 2.7100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 0, 1, 31265000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 1, 110, 192482000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 2, 112, 128088000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 4, 116, 640858000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 5, 118, 896983000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 6, 120, 12234000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 7, 121, 884749000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 8, 129, 9485000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 9, 17, 69761000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 10, 18, 3768000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 11, 140, 176087000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 12, 24, 2144287000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 13, 142, 432153000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 14, 143, 765106000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 15, 145, 174291000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 16, 25, 28098000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 17, 37, 236764000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 18, 165, 251699000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 19, 46, 1888111000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 20, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 21, 50, 151042000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 22, 51, 88219000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 23, 53, -5358000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 24, 54, 22273000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 25, 55, 256176000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 26, 56, 256176000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 27, 58, 256176000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (54, 28, 59, 2144287000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 0, 1, 29480000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 1, 110, 212747000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 2, 112, 127954000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 4, 116, 698680000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 5, 118, 936749000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 6, 120, 10393000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 7, 121, 926356000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 8, 129, 9247000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 9, 17, 68951000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 10, 140, 196666000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 11, 24, 2281234000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 12, 142, 444674000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 13, 143, 864871000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 14, 145, 176865000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 15, 25, 32666000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 16, 37, 227402000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 17, 165, 267610000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 18, 46, 2014088000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 19, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 20, 50, 138089000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 21, 51, 113816000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 22, 53, -7082000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 23, 54, 22323000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 24, 55, 267146000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 25, 56, 267146000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 26, 58, 267146000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (55, 27, 59, 2281234000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 0, 1, 33118000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 1, 110, 191823000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 2, 112, 105471000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 4, 116, 637764000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 5, 118, 881391000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 6, 120, 14419000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 7, 121, 866972000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 8, 129, 10049000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 9, 17, 69777000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 10, 18, 4612000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 11, 140, 177438000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 12, 24, 2104534000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 13, 142, 400332000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 14, 143, 718604000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 15, 145, 201277000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 16, 25, 31172000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 17, 37, 243139000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 18, 165, 266539000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 19, 46, 1861063000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 20, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 21, 50, 153458000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 22, 51, 75024000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 23, 53, -4320000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 24, 54, 19309000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 25, 55, 243471000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 26, 56, 243471000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 27, 58, 243471000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (56, 28, 59, 2104534000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 0, 1, 30719000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 1, 110, 198224000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 2, 112, 117019000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 4, 116, 662506000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 5, 118, 906683000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 6, 120, 11237000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 7, 121, 895446000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 8, 129, 9139000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 9, 17, 68969000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 10, 140, 196172000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 11, 24, 2188067000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 12, 142, 450164000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 13, 143, 810770000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 14, 145, 170291000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 15, 25, 23944000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 16, 37, 216823000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 17, 165, 249900000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 18, 46, 1921872000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 19, 47, 0.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 20, 50, 147038000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 21, 51, 101225000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 22, 53, -7288000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 23, 54, 25220000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 24, 55, 266195000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 25, 56, 266195000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 26, 58, 266195000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (57, 27, 59, 2188067000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 0, 109, 36221000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 1, 111, 10471000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 3, 117, 4474000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 4, 119, 4023000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 5, 81, 57579000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 6, 122, 1931000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 7, 124, 3538000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 8, 126, 7443000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 9, 80, 12912000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 10, 135, 44667000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 11, 137, 13281000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 12, 139, 15861000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 14, 146, 6011000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 15, 149, 42685000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 16, 62, 87352000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 17, 152, 3396000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 18, 153, 31642000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 19, 154, 8840000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 20, 68, 1746000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 21, 74, 12515000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 22, 166, 54743000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 23, 84, 29213000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 24, 85, 10981000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 25, 87, 18232000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 26, 91, 18232000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 27, 92, 1614000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 28, 106, 16618000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 29, 96, 10195646000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 30, 97, 1.6300)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 31, 98, 10778428000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 32, 99, 1.5600)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 33, 107, 10195100000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 34, 101, 1.6300)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (58, 35, 102, 0.3900)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 0, 109, 33228000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 1, 111, 9167000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 3, 117, 4423000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 4, 119, 3121000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 5, 81, 51057000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 6, 122, 1015000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 7, 124, 2350000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 8, 126, 6596000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 9, 80, 9961000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 10, 135, 41096000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 11, 137, 12745000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 12, 139, 17227000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 14, 146, 5241000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 15, 149, 42605000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 16, 62, 83701000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 17, 152, 3597000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 18, 153, 31748000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 19, 154, 8849000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 20, 68, 1703000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 21, 74, 12783000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 22, 166, 55083000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 23, 84, 25021000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 24, 85, 7199000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 25, 87, 17822000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 26, 91, 17822000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 27, 92, 1682000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 28, 106, 16140000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 29, 96, 10284147000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 30, 97, 1.5700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 31, 98, 11046806000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 32, 99, 1.4900)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 33, 107, 10280300000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 34, 101, 1.5700)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (59, 35, 102, 0.2500)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 0, 109, 31918000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 1, 111, 9178000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 3, 117, 4397000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 4, 119, 3026000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 5, 81, 49507000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 6, 122, 861000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 7, 124, 2387000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 8, 126, 7301000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 9, 80, 10549000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 10, 135, 38958000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 11, 137, 13337000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 12, 139, 17487000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 14, 146, 5572000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 15, 149, 44007000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 16, 62, 82965000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 17, 152, 3161000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 18, 153, 32751000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 19, 154, 9247000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 20, 68, 1811000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 21, 74, 13808000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 22, 166, 57617000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 23, 84, 22187000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 24, 85, 6277000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 25, 87, 15910000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 26, 91, 15910000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 27, 92, 1483000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 28, 106, 14427000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 29, 96, 10462282000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 30, 97, 1.3800)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 31, 98, 11236230000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 32, 99, 1.3100)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 33, 107, 10454300000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 34, 101, 1.3800)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (60, 35, 102, 0.2000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 0, 109, 34145000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 1, 111, 9010000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 3, 117, 4561000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 4, 119, 2959000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 5, 81, 51714000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 6, 122, 1080000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 7, 124, 2579000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 8, 126, 7276000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 9, 80, 10935000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 10, 135, 40779000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 11, 137, 13284000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 12, 139, 17976000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 14, 146, 6065000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 15, 149, 45115000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 16, 62, 85894000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 17, 152, 2275000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 18, 153, 33787000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 19, 154, 9529000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 20, 68, 1829000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 21, 74, 29575000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 22, 72, 936000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 23, 166, 75656000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 24, 84, 7963000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 25, 85, 2443000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 26, 87, 5520000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 27, 91, 5520000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 28, 92, 1044000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 29, 106, 4476000000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 30, 96, 10527818000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 31, 97, 0.4300)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 32, 98, 10584535000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 33, 99, 0.4200)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 34, 107, 10409300000.0000)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 35, 101, 0.4300)
GO
INSERT [dbo].[statement_detail] ([statement_id], [line], [ratio_construct_id], [value]) VALUES (61, 36, 102, 0.1200)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'accounts receivable', N'accounts receivables', N'')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'aged balance', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'aged schedule', N'aged schedules', N'')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'aging', N'aging', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'allowance', N'allowance', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'amortization', N'amortizing', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'amortized loans', N'amortized loanss', N'')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'asset', N'assets', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'bad debt', N'bad debts', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'bank deposit', N'bank deposits', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'beginning inventory', N'beginning inventories', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'board of directors', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'building', N'buildings', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'capital', N'capitals', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'cash', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'cash cow', N'cash cows', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'cash purchase', N'cash purchases', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'cash reciept', N'cash reciepts', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'cash sales', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'ceo', N'chief executive officer', N'chief executive officers')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'cio', N'chief information officier', N'chief information officiers')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'coin', N'coins', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'cost of good sold', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'credit', N'credits', N'')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'credit loss', N'credit losses', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'credit policy', N'credit policies', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'credit rating', N'credit ratings', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'credit sales', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'creditor', N'creditors', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'currency', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'current asset', N'current assets', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'current liability', N'current liabilities', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'customer', N'customers', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'customer demand', N'customer demands', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'customer service', N'customer services', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'Debt', N'Debts', N'')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'demand', N'demands', N'')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'deposit', N'deposits', N'')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'depreciation', N'depreciation', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'distribution', N'distribution', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'distribution center', N'distribution centers', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'earning', N'earnings', N'')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'ending inventory', N'ending inventories', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'equipment', N'equipments', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'equity', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'expense', N'expenses', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'factory', N'factories', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'finished good', N'finished goods', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'fixed asset', N'fixed assets', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'forecast', N'forecasts', N'')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'fund', N'funds', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'goodwill', N'goodwills', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'income', N'incomes', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'installment account', N'installment accounts', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'intangible asset', N'intangible assets', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'inventory', N'inventories', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'liability', N'liabilities', N'liab')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'liquidity', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'liquidity ratio', N'liquidity ratios', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'logistics', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'long-term asset', N'long-tem assets', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'long-term liability', N'long-term liabilities', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'machine', N'machines', N'')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'manager', N'managers', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'manufacturing', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'market demand', N'market demands', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'market forecast', N'market forecasts', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'market share', N'market shares', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'marketable security', N'marketable securities', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'marketing', N'marketing', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'marketing department', N'marketing departments', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'marketing force', N'marketing forces', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'marketing strategy', N'marketing strategys', N'')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'marketing vice-president', N'marketing vice-presidents', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'merchandise', N'merchandises', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'merge', N'merges', N'merging')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'money', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'nontrade receivable', N'nontrade receivables', N'non-trade recievables')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'notes receivable', N'notes receivables', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'outstanding share', N'outstanding shares', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'payable', N'payables', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'plant', N'plants', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'prepaid expense', N'prepaid expenses', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'president', N'presidents', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'pricing', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'pricing strategy', N'pricing strategies', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'product', N'products', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'product design', N'product designs', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'production', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'production plan', N'production plans', N'production planning')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'profit', N'profits', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'profit margin', N'profit margins', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'profitability', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'purchase', N'purchases', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'purchaser', N'purchasers', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'purchasing', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'quality', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'raw material', N'raw materials', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'receivable', N'receivables', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'restricted cash', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'revenue', N'revenues', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'sales', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'sales force', N'sales forces', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'sales price', N'sales prices', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'sales representative', N'sales representatives', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'salesman', N'salesmen', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'saving account', N'saving accounts', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'shareholder', N'shareholders', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'short-term liability', N'short-term liabilities', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'short-term receivable', N'short-term receivables', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'tangible asset', N'tangible assets', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'technological advance', N'technological advances', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'technological development', N'technological developments', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'text', N'texts', N'')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'trade receivable', N'trade receivables', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'uncollectible', N'uncollectibles', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (3, N'uncollectible account', N'uncollectible accounts', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'uncollectible receivable', N'uncollectible receivables', NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'unrestricted cash', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (2, N'work in process', NULL, NULL)
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'working capital', N'working capitals', N'')
GO
INSERT [dbo].[object] ([type], [name], [plural], [abreviation]) VALUES (1, N'write-off', NULL, NULL)
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'aged balance', N'bad debt', NULL)
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'asset', N'amortization', NULL)
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'asset', N'depreciation', NULL)
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'cash', N'accounts receivable', N'generation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'credit loss', N'bad debt', N'generation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'debt', N'credit', NULL)
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'debt', N'uncollectible', N'generation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'deposit', N'cash', N'conversion')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'equipment', N'purchase', NULL)
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'forecast', N'customer', N'generation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'forecast', N'demand', N'generation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'income', N'expense', NULL)
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'income', N'profit', N'generation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'income', N'revenue', NULL)
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'pricing', N'marketing strategy', N'strategy formulation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'product', N'distribution', N'facilitation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'product', N'distribution center', N'facilitation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'product', N'logistics', N'facilitation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'product', N'product design', N'facilitation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'product', N'production', N'transformation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'product', N'raw material', N'transformation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'product design', N'technological development', N'faciliation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'production', N'equipment', N'facilitation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'production', N'plant', N'facilitation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'production', N'production plan', N'facilitation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'production', N'technological development', N'facilitation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'production plan', N'market forecast', N'generation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'profit', N'sales', N'generation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'profitability', N'profit margin', NULL)
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'raw material', N'purchasing', N'facilitation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'receivable', N'aging', N'measurement')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'receivable', N'allowance', N'measurement')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'receivable', N'credit', N'generation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'sales', N'customer', NULL)
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'sales', N'marketing', NULL)
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'sales', N'pricing strategy', N'generation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'sales', N'sales force', N'facilitation')
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'saving account', N'cash', NULL)
GO
INSERT [dbo].[isc] ([obj_a], [obj_b], [relationship]) VALUES (N'write-off', N'bad debt', N'generation')
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'accounts receivable', N'current asset', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'accounts receivable', N'receivable', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'aged balance', N'aged schedule', N'attribute')
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'aged balance', N'asset', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'bad debt', N'Debt', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'beginning inventory', N'inventory', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'building', N'asset', N'group')
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'cash', N'current asset', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'cash cow', N'marketing strategy', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'cash sales', N'sales', N'group')
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'coin', N'cash', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'credit sales', N'sales', N'group')
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'currency', N'cash', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'current asset', N'working capital', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'current liability', N'working capital', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'ending inventory', N'inventory', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'equipment', N'asset', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'finished good', N'inventory', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'goodwill', N'intangible asset', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'intangible asset', N'asset', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'inventory', N'current asset', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'machine', N'asset', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'marketable security', N'current asset', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'notes receivable', N'receivable', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'plant', N'asset', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'prepaid expense', N'current asset', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'quality', N'product', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'raw material', N'inventory', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'restricted cash', N'cash', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'sales', N'revenue', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'tangible asset', N'asset', NULL)
GO
INSERT [dbo].[isp] ([obj_a], [obj_b], [relationship]) VALUES (N'unrestricted cash', N'cash', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isa', N'asset', N'profit', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isa', N'cash', N'money', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isa', N'customer', N'purchaser', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isa', N'product', N'merchandise', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isa', N'production', N'manufacturing', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isa', N'sales', N'earning', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isa', N'sales', N'revenue', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isa', N'salesman', N'sales representative', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isa', N'technological advance', N'technological development', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isa', N'uncollectible', N'uncollectible receivable', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'asset', N'amortization', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'asset', N'depreciation', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'cash', N'accounts receivable', N'generation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'credit loss', N'bad debt', N'generation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'debt', N'credit', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'debt', N'uncollectible', N'generation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'deposit', N'cash', N'conversion')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'equipment', N'purchase', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'forecast', N'customer', N'generation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'forecast', N'demand', N'generation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'income', N'expense', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'income', N'profit', N'generation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'income', N'revenue', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'pricing', N'marketing strategy', N'strategy formulation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'product', N'distribution', N'facilitation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'product', N'distribution center', N'facilitation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'product', N'logistics', N'facilitation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'product', N'product design', N'facilitation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'product', N'production', N'transformation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'product', N'raw material', N'transformation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'product design', N'technological development', N'faciliation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'production', N'equipment', N'facilitation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'production', N'plant', N'facilitation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'production', N'production plan', N'facilitation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'production', N'technological development', N'facilitation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'production plan', N'market forecast', N'generation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'profit', N'sales', N'generation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'profitability', N'profit margin', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'raw material', N'purchasing', N'facilitation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'receivable', N'aging', N'measurement')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'receivable', N'allowance', N'measurement')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'receivable', N'credit', N'generation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'sales', N'customer', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'sales', N'marketing', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'sales', N'pricing strategy', N'generation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'sales', N'sales force', N'facilitation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'saving account', N'cash', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isc', N'write-off', N'bad debt', N'generation')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'accounts receivable', N'current asset', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'accounts receivable', N'receivable', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'aged balance', N'aged schedule', N'attribute')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'beginning inventory', N'inventory', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'building', N'asset', N'group')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'cash', N'current asset', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'cash cow', N'marketing strategy', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'cash sales', N'sales', N'group')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'coin', N'cash', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'credit sales', N'sales', N'group')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'currency', N'cash', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'current asset', N'working capital', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'current liability', N'working capital', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'ending inventory', N'inventory', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'equipment', N'asset', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'finished good', N'inventory', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'goodwill', N'intangible asset', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'intangible asset', N'asset', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'inventory', N'current asset', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'machine', N'asset', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'marketable security', N'current asset', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'notes receivable', N'receivable', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'plant', N'asset', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'prepaid expense', N'current asset', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'quality', N'product', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'raw material', N'inventory', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'restricted cash', N'cash', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'sales', N'revenue', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'tangible asset', N'asset', NULL)
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'text', N'text', N'text')
GO
INSERT [dbo].[knowledge_relationships] ([semantic], [obj_a], [obj_b], [relationship]) VALUES (N'isp', N'unrestricted cash', N'cash', NULL)
GO
INSERT [dbo].[isa] ([obj_a], [obj_b], [relationship]) VALUES (N'aged balance', N'asset', NULL)
GO
INSERT [dbo].[isa] ([obj_a], [obj_b], [relationship]) VALUES (N'bad debt', N'liability', NULL)
GO
INSERT [dbo].[isa] ([obj_a], [obj_b], [relationship]) VALUES (N'cash', N'money', NULL)
GO
INSERT [dbo].[isa] ([obj_a], [obj_b], [relationship]) VALUES (N'customer', N'purchaser', NULL)
GO
INSERT [dbo].[isa] ([obj_a], [obj_b], [relationship]) VALUES (N'product', N'merchandise', NULL)
GO
INSERT [dbo].[isa] ([obj_a], [obj_b], [relationship]) VALUES (N'production', N'manufacturing', NULL)
GO
INSERT [dbo].[isa] ([obj_a], [obj_b], [relationship]) VALUES (N'sales', N'earning', NULL)
GO
INSERT [dbo].[isa] ([obj_a], [obj_b], [relationship]) VALUES (N'sales', N'revenue', NULL)
GO
INSERT [dbo].[isa] ([obj_a], [obj_b], [relationship]) VALUES (N'salesman', N'sales representative', NULL)
GO
INSERT [dbo].[isa] ([obj_a], [obj_b], [relationship]) VALUES (N'technological advance', N'technological development', NULL)
GO
INSERT [dbo].[isa] ([obj_a], [obj_b], [relationship]) VALUES (N'uncollectible', N'uncollectible receivable', NULL)
GO
SET IDENTITY_INSERT [dbo].[article] ON 
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (1, 2, N'Yahoo Finance', CAST(N'2018-01-28' AS Date), N'https://finance.yahoo.com/news/facebook-apple-google-amazon-apos-233011259.html', N'The picture emerging from the Q4 earnings season is one of all around strength and momentum. Not only is an above average proportion of companies beating top- and bottom-line expectations, but estimates for the current period are materially going up. With results from 26% of the S&P 500 members already out and another 24% on deck to report results this week, we will be at the halfway mark by the end of this week.

It is still early going for the small-cap S&P 600 index, with results from only 14% of the index’s members out.

Of the roughly 400 companies reporting results this week, including 121 S&P 500 members, the most notable reports are:

McDonald’s (MCD) – The fast giant reports Q4 results before the market’s open on Tuesday January 30th. The company is expected to earn $1.59 per share on $5.26 billion in revenues, which compares to $1.44 in EPS and $6.03 billion in revenues in the year-earlier quarter. The company’s operating and stock-market performance has been very impressive lately, with the stock up a +46.4% in the past one year, outperforming the Zacks Restaurant industry’s +21.7% gain and the S&P 500 index’s +24.2% gain.

Boeing (BA) – Boeing reports Q4 results before the market’s open on Wednesday, January 31st. The company is expected to earn $2.91 per share on $24.83 billion in revenues, up +17.8% and +6.6% from the year-earlier period, respectively. Boeing is a beneficiary of the strong global commercial aviation market as well as the expectation of increased U.S. government defense spending. The momentum in Boeing shares over the past year has been very strong, with the stock up +102.8%, and playing a major role in pushing the Dow Jones Industrial Average into record territory.

Facebook (FB) – The social-media giant reports Q4 results after the market’s close on Wednesday, January 31st. The company is expected to earn $1.94 per share on $12.56 billion in revenues, up +37.6% and +42.6% from the year-earlier period, respectively. The company’s ever-growing tally of daily active users will be of as much importance to the market, as its top- and bottom-line results. The expectation is that the worldwide tally of daily active users increased to 1.414 billion, up from 1.227 billion in the year-earlier quarter and 1.368 billion in the preceding quarter. The impact of recent newsfeed changes on ad revenues will likely be of interest on the earnings call. The stock is up +7.7% since the start of the New year and +43.8% over the past year, outperforming the Zacks Tec sector’s +28.1% gain over the past year.

Alibaba (BABA) and Amazon (AMZN) – Alibaba reports before the market’s open on Thursday, February 1st, while Amazon reports after the market’s close that day. As impressive as Amazon’s stock market performance over the past year has been, Alibaba has done even better, with the stock up +101% over the past year, better than Amazon’s +67.7% gain. Amazon has long ‘trained’ the market on not to look for earnings performance in its quarterly results and that will likely be case this time around.
The key factor will be overall revenues and performance of the company’s cloud business – Amazon Web Services (AWS). With respect to revenues, the current Zacks Consensus expectation is $59.98 billion, which represents +37.1% growth from the year-earlier level, while earnings of $1.85 per share would represent a +20.1% year-over-year gain.

Apple (AAPL) - Apple reports Q4 results after the market’s close on Thursday, February 1st. The company is expected to earn $3.81 per share on $86 billion in revenues, up +13.4% and +9.8% from the year-earlier period, respectively. Apple makes plenty of products, but the most important product in its portfolio is the iPhone, whose unit sales are expected to have reached 79.8 million in the quarter, up from 78.29 million in the year-earlier quarter and 28.85 million in the preceding quarter. The stock has lost ground in recent days, but it is up +40.5% over the past year, handily outperforming the broader Tech sector.

Alphabet (GOOGL) – Thursday evening is very busy on the reporting calendar, with Alphabet also coming out with its quarterly results at the same time as Apple and Amazon. The search giant is expected to earn $10.12 per share on $25.67 billion in revenues, up +8.12% and +20.99% from the year-earlier period, respectively.
The stock has literally been on a tear in January, up +12.7% year-to-date, bring its performance of the past year to +40.6%.

Q4 Earnings Season Scorecard (as of Friday, January 26, 2018)

Total earnings for the 133 S&P 500 members that have reported results already are up +12.3% from the same period last year on +8.8% higher revenues, with 81.2% beating EPS estimates and 78.9% beating revenue estimates. The proportion of companies beating both EPS and revenue estimates is 65.4%.

To put these results in a historical context, the charts below compare the results thus far with what we had seen from the same group of 133 index members in other recent periods.', N'Facebook, Apple, Google and Amazon''s Q4 Earnings')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (8, 2, N'Forbes', CAST(N'2018-01-27' AS Date), N'https://www.forbes.com/sites/chuckjones/2018/01/27/iphone-x-supply-has-not-caught-up-to-demand/?utm_source=yahoo&utm_medium=partner&utm_campaign=yahootix&partner=yahootix&yptr=yahoo#ab69c714aeb7', N'Apple’s stock took a hit this past week falling from $178.46 to $171.51. The $7 drop, or 4%, was in contrast to the NASDAQ increasing from 7,336 to 7,506, or over 2%, closing at an all-time high. There were multiple sell-side analysts coming out with concerns about the iPhone X’s demand in the March quarter, which will essentially be disclosed in Apple’s announcement on Thursday, February 1. Since some sales for the X probably spilled into the March quarter, this could provide support to the company’s revenue guidance. (Note that I own Apple shares and have sold Put options). It has now been 12 weeks since the iPhone X became available

I have been tracking the X’s lead-times in seven countries (US, Canada, China, France, Germany, Japan and Great Britain) and 43 Apple stores in the Dallas, Minneapolis, New York City and Palo Alto areas for the past seven weeks to get a read on how well supply is catching up to demand. Given that Apple launched the iPhone 8, 8 Plus and X in 57 countries the company and its suppliers have done a very good job ramping production.

iPhone X lead-times vs. the iPhone 6 and 6 Plus

Probably the best iPhone launch to compare the X to is the 6 and 6 Plus since they introduced major functionality increases. While the 6’s became available in September vs. the X in November, the X has been selling long enough to compare the two.


The X’s current lead-times

U.S. website delivery is at 4 days
France and Germany are at 4 days
Japan is at 2 days
Canada, China and Great Britain are showing In Stock
At the same 12 week mark the iPhone 6 and 6 Plus had these lead-times

U.S. and Canada websites had 3 to 5 days or 7 to 10 days depending on the configuration
France, Germany and Great Britain had 3 to 5 days
China was at 3 to 5 days or 5 to 7 days
Hong Kong and Japan were not available to be ordered
While the iPhone 6 and 6 Pluses lead-times were a bit longer than the X’s at the same time, it does appear that demand for the X remains strong.

Very good in-store availability for the X but still not fully stocked', N'iPhone X Supply Has Not Caught Up To Demand
')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (10, 3, N'Yahoo Finance', CAST(N'2018-01-24' AS Date), N'https://finance.yahoo.com/news/solid-comps-strategic-initiatives-aid-123512670.html', N'Costco Wholesale Corporation’s COST growth strategies, sturdy comparable-store sales (comps) performance, strong membership trends and higher penetration of Citi Visa co-brand card program are the pillars that reinforce its position. The company has one of the highest square footage growth in the industry and remains committed toward opening new clubs in domestic and international markets. These endeavors are likely to fuel top-line growth.

Analysts polled by Zacks expect second-quarter and fiscal 2018 revenues to come in at $32.64 billion and $138.28 billion, reflecting an increase of roughly 9.7% and 7.2%, respectively. The Zacks Consensus Estimate for earnings is currently pegged at $1.43 for the quarter under review and $6.69 for the fiscal, reflecting an improvement of approximately 22.2% and 15%, respectively.

Sturdy Comps Induce Confidence

Costco seems somewhat unfazed by tough retail scenario, comprising soft traffic and inclination toward online shopping. This Issaquah, WA-based company continued with positive comps performance driven by improved store traffic and average transaction size. Comps for December increased 11.5%, following an increase of 10.8% in November, 7.5% in October and 8.9% in September. Notably, net sales increased 14.3%, 13.2%, 10.1% and 12.1% in the respective months.

The operator of membership warehouses commenced fiscal 2018 on an upbeat note with both the top and bottom lines beating the Zacks Consensus Estimate for the third straight quarter, consequently sidelining the woes which have gripped the brick-and-mortar retailers for some time now. Moreover, both sales and earnings have also increased year over year.

We noted that total revenue grew 13.2% during the first quarter of fiscal 2018, following an increase of 15.7% and 7.8% in the fourth and third quarter of fiscal 2017. Earnings per share improved 16.2% in the first quarter, after registering growth of 17.5% and 12.9% in the preceding two quarters.

Costco Wholesale Corporation Price, Consensus and EPS Surprise', N'Solid Comps, Strategic Initiatives to Aid Costco''s Top Line')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (12, 3, N'Yahoo Finance', CAST(N'2017-01-18' AS Date), N'https://finance.yahoo.com/news/3-discount-retailers-cashed-holiday-200708607.html', N'A splendid holiday season has given retailers a reason to smile. Certainly, Americans were in the mood to spend, as retail sales during the November/December period increased 5.5% to $691.9 billion, per National Retail Federation. Bullish stock market, improved job prospects, upbeat consumer sentiment and modest inflation were enough to trigger consumer spending.

Our today’s article revolves around three discount store retailers — Target TGT, Costco COST and PriceSmart PSMT. Promising holiday sales numbers have not only helped the retail-discount industry to rally approximately 20% in three months but also outpace the S&P 500’s growth of roughly 10%. We noted that the industry occupies a space in the top 20% of the Zacks classified industries (52 out of the 256). Further, the broader Retail-Wholesale sector of which they are part of is also placed at top 13% of the Zacks classified sectors (2 out of 16).

From the above, it is quite apparent that the near-term outlook for the industry looks favorable. Let’s take a closer look at the performances of the three discount retailers.

Target Posts Solid Holiday Comps

Target joined the bandwagon of retailers that have witnessed strong holiday season sales. Comparable sales for this general merchandise retailer rose 3.4% in the combined November/December period buoyed by healthy store comps, robust traffic and sturdy digital sales. The solid holiday numbers allowed management to lift the view.

Target now anticipates digital sales to increase more than 25% for the fourth straight year in fiscal 2017. The company now projects fourth-quarter fiscal 2017 adjusted earnings in the band of $1.30-$1.40 compared with the prior range of $1.05-$1.25. For the fiscal year, management now forecasts adjusted earnings between $4.64 and $4.74 per share, up from the previous guidance of $4.40-$4.60.

Further, Target now envisions comparable sales to increase approximately 3.4% during the fourth quarter with the full year expected to be just over 1%. Taking into account the 53rd week, Target anticipates total sales to increase more than 9% in the final quarter.

Target is trying all means to rapidly adapt to the changes in the retail ecosystem, which is more inclined toward digitalization. Initiatives such as the development of omni-channel capacities, diversification and localization of assortments along with emphasis on flexible format stores bode well for this Zacks Rank #1 (Strong Buy) company. You can see the complete list of today’s Zacks #1 Rank stocks here.

Costco Unveils Healthy Comps

Costco seems somewhat unfazed by tough retail scenario, comprising soft traffic and inclination toward online shopping. It continued with its solid comparable-store sales trend in the month of November as well December, which is the most crucial part of the year for retailers. Comparable-store sales rose 10.8% and 11.5% during November and December period, respectively. Meanwhile, comparable e-commerce sales for the respective months surged 39% and 33.3%.

We believe that this Zacks Rank #3 (Hold) company’s growth strategies, sturdy comparable-store sales (comps) performance, strong membership trends and higher penetration of Citi Visa co-brand card program are the pillars that reinforce its position. Moreover, analysts believe that Costco is likely to gain from Wal-Mart’s WMT latest decision to shut 63 of 660 Sam’s Club outlets in the United States over the next few weeks.

PriceSmart Witnesses Comps Growth

PriceSmart, which owns and operates membership shopping warehouse clubs, registered net sales increase of 6.4% and 4.9% in the months of November and December, respectively. This San Diego, CA-based company’s comparable warehouse sales jumped 2.7% and 6.4% during the said periods, respectively.

The company also recently came out with first-quarter fiscal 2018 results, wherein earnings of 74 cents missed the Zacks Consensus Estimate of 82 cents and declined roughly 10% from the year-ago period. However, the top line of this Zacks Rank #2 (Buy) company came in line with the consensus mark. The company reported total revenue of $767.1 million, reflecting an increase of 3.7% year over year.', N'3 Discount Retailers That Cashed In on Holiday Season')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (15, 4, N'Investopedia', CAST(N'2018-01-26' AS Date), N'https://www.investopedia.com/news/what-alibaba-kroger-alliance-would-mean-amazon/?partner=YahooSA&yptr=yahoo', N'On Wednesday, the New York Post indicated that a potential partnership between Chinese internet giant Alibaba Group (BABA
) and America''s largest grocery store chain, Kroger Co. (KR), could be in the works. Officials of Alibaba, which operates grocery stores with technology similar to Amazon.com Inc.''s (AMZN) cashier-free Amazon Go store prototype, reportedly met with Kroger representatives in China in late 2016.

The outlined deal, which spans both online and offline sales, could create an entity with a global reach and might to match the world''s largest retailer, Wal-Mart Stories Inc. (WMT), and help the companies in their battle against the growing dominance of e-commerce and cloud computing behemoth Amazon. (See also: Kroger Can Best Weather Grocery Price War: Moody’s.)

The Struggle Against Amazon
Analysts at Morgan Stanley indicated that a partnership would be a "natural extension" for BABA as a third-party marketplace and boost its new retail strategy aimed at a full integration of online, offline and logistics. Seattle-based Amazon has been making massive strides in this direction. After closing its $13.7 billion acquisition of Whole Foods Market in August, the company has introduced its branded products at hundreds of brick-and-mortar locations as it leverages the natural grocer to build out its online platform and Prime membership base. A Kroger partnership would also help Alibaba compete against Bezos'' Amazon globally as it works to expand its relatively small presence in America.

As for Kroger, which has seen it stock dip some 10% in the most recent 12 months, despite a gradual recovery beginning in late September, the move reflects its larger initiative to meet the demands of a rapidly evolving consumer goods market. Earlier this month, reports indicated that the Cincinnati-based grocery chain was in talks with online retailer Boxed.com, a favorite among the key Millennial cohort. Alibaba could provide Kroger, which has much less capital and technology than the Chinese conglomerate, with its Alipay digital payments platform and its massive e-commerce site. The American food giant, which was struggled to launch its own home delivery service, could potentially team with BABA-backed retailer Hema Xiansheng, which serves as a warehouse and distribution center for online sales, according to Goldman Sachs.

In the case that a deal between Jack Ma''s Alibaba and Kroger does materialize, it would have major implications not only for Amazon and Wal-Mart but for traditional retailers such as membership-only warehouse chain Costco Wholesale Corp. (COST) and Target Inc. (TGT).  (See also: Amazon’s Most Bullish Call Yet: $1,800 a Share.)



Read more: What Alibaba-Kroger Alliance Might Mean for Amazon | Investopedia https://www.investopedia.com/news/what-alibaba-kroger-alliance-would-mean-amazon/#ixzz55QncGGXC 
Follow us: Investopedia on Facebook', N'What Alibaba-Kroger Alliance Might Mean for Amazon')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (17, 4, N'TheStreet.com', CAST(N'2018-01-25' AS Date), N'https://realmoney.thestreet.com/articles/01/25/2018/market-gets-little-bumpy-stock-picking-still-rocks?puc=yahoo&cm_ven=YAHOO&yptr=yahoo', N'Stock quotes in this article: AAPL, AMZN, GOOGL, INTC, IOVA, MNLO
Many investors are content with a market that goes straight up every day but from a trading standpoint it is interesting to finally see a little downside action as well. It wasn''t much but President Trump''s comments caused the dollar to bounce and that tripped up the market a bit. Gold and oil reversed and the indices actually made an intraday low around 3 p.m. ET.

Of course, then the dip-buying programs went to work in the last hour and took things off the lows but a little downside action was a nice change of pace. Despite the bout of selling breadth wasn''t bad with about 3,150 gainers to 3,650 decliners.

Most of the damage to the indices was done by the Big Kuhana, Apple (AAPL) , which dropped for the second day in a row and breached its 50-day simple moving average. I''m not hearing much chatter about Apple but it''s offsetting some big gains in other stocks such as Amazon (AMZN) and Alphabet (GOOGL) .

Stock-picking remains robust. The two biotechnology names I mentioned this morning (Iovance Biotherapeutics (IOVA)  and Menlo Therapeutics (MNLO) ) roared higher and there was a good supply of stocks with moves of over 5%. As I said earlier, it is when the stock-picking stops working that we need to start worrying.

After the bell, Intel (INTC) put up some good numbers and that should help the chip sector which struggled some today. In the past the Intel report often marked an important turning point, in either direction, for the market but it probably isn''t as important as it once was.

The trend continues but it is a little bumpier. Manage those positions and let them be your guide.

Have a good evening. We''ll see you tomorrow.', N'Market Gets a Little Bumpy, but Stock-Picking Still Rocks')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (18, 2, N'Yahoo Finance', CAST(N'2018-02-04' AS Date), N'http://finance.yahoo.com/r/238b2412-19b5-3a86-93a0-aa71188ce933/apple-shares-look-pretty-cheap-following-its-earnings-report.html?puc=yahoo&cm_ven=YAHOO&yptr=yahoo&.tsrc=rss', N'What a difference 24 hours makes.

Following a mostly positive earnings call on Thursday afternoon, Apple (AAPL)  shares closed after-hours trading up over 3% following in the wake of a December quarter sales/EPS beat and below-consensus March quarter sales guidance. But on Friday, with an assist from an ugly market selloff, shares closed down 4.3% to $160.50, hitting their lowest levels since October.

Chip/component suppliers were also hit hard. Cirrus Logic (CRUS) , Skyworks (SWKS) , Qorvo (QRVO) and Lumentum (LITE)  all posted bigger declines than the Nasdaq''s 2% drop, with Cirrus dropping 7.9% ahead of its Monday earnings report.

Apple''s report certainly wasn''t without blemishes. In addition to providing light guidance, the company reported a 5% drop in Mac revenue a quarter after posting 25% growth, and iPhone unit sales (down 1% officially, and up 6% on a per-week basis) were a little disappointing given iPhone X hype and the boost Apple got in the quarter from channel inventory growth (just maybe a $100 iPhone X price cut is in order). And though they weren''t terrible, many were hoping for stronger iPad sales following iOS 11''s launch.

But Apple also reported strong Services and wearables (Apple Watch/headphone) growth, and the iPhone X helped it deliver a sky-high $796 iPhone average selling price ($40 above consensus). And as the company mentioned on the earnings call, the fact the December quarter had 13 weeks (1 less than the year-ago quarter) affected growth rates. Whereas revenue grew 13% on a reported basis, it was up 21% on a per-week basis.

In addition, thanks to tax reform, Apple guided for a March quarter tax rate of 15% -- well below the December quarter''s 25.8% rate -- and suggested its tax rate would be similar for at least the following two quarters. And the company, which ended the December quarter with $163 billion in net cash (cash minus debt), said it aims to eventually become net cash neutral following the repatriation of most of its giant offshore cash balance.

Provided a big chunk of that offshore cash isn''t directed towards M&A -- Apple insists tax reform hasn''t changed its M&A strategy -- this sets the stage for massive stock buybacks and/or dividend hikes. Particularly since Apple is producing over $50 billion in free cash flow each year.

Thanks to the lower tax rate, Apple''s fiscal 2018 (ends in September) consensus EPS estimate has actually risen by a few cents to $11.45 post-earnings, even as its consensus revenue estimate has fallen by $5.6 billion to $263.9 billion. And its fiscal 2019 consensus has risen by $0.58 to $12.95. Should giant buybacks be announced when Apple details changes to its capital allocation program in tandem with its March quarter earnings report, EPS estimates could rise further still.

Regardless, Apple now trades for just 12.4 times its fiscal 2019 GAAP EPS consensus (unlike many peers, Apple doesn''t report non-GAAP earnings). That''s well below Alphabet/Google (GOOGL) and Microsoft''s (MSFT)  multiples, and also well below that of slow-growing marquee consumer brands such as Starbucks (SBUX) , Nike  (NKE) and Coca-Cola (KO) , all of which trade for at least 19 times expected fiscal 2019 EPS. While one can debate whether Apple deserves to trade at multiples similar to Google and Microsoft, the case for it trading at a major discount to aforementioned consumer names is much more questionable, given its very high customer loyalty rates and the continued power of its brand and ecosystem.

An earnings report delivering a mixture of good and bad data about near-term sales trends, along with some encouraging commentary about tax rates and capital return plans, definitely doesn''t change that.', N'Apple Shares Look Pretty Cheap Following Their Post-Earnings Selloff')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (20, 2, N'Nasdaq.com', CAST(N'2018-02-04' AS Date), N'http://articlefeeds.nasdaq.com/~r/nasdaq/symbols/~3/LXG251s2Zds/why-this-internet-of-things-stock-may-be-the-best-buy-in-tech-cm915817', N'Much of the news surrounding Synaptics (NASDAQ: SYNA) of late hasn''t been good. CEO Rick Bergman started the retreat when he sold 20,000 shares on Jan. 12. Since then, several large institutional investors have also minimized their positions. To add insult to injury, a research firm recently lowered its rating on Synaptics stock to "hold" from "buy."

As so often happens, the bearish sentiment seems to be spreading. That''s the bad news. The upside is that there''s no legitimate reason for Synaptics stock to be under so much pressure. Last quarter was solid in a number of ways, though guidance for Synaptics'' fiscal 2018 second quarter was a bit light.

Despite this quarter''s revenue forecast, the fact remains that Synaptics stock is trading at bargain basement prices, yet it boasts several significant growth drivers -- a nice combination for value investors in search of growth.

Picture from inside a car of a Synaptics infotainment system.

Image source: Synaptics.

Smartphones are king, but for how long?
Long known for its multiple display and fingerprint sensors for smartphones, Synaptics continues to derive the majority of its revenue from mobile solutions: 70% of its $417.4 million in total revenue last quarter -- an 8% improvement year over year -- was from its mobile division.

The $292.9 million in mobile-related sales was down 7% compared to a year ago. It should be noted that Synaptics reclassified $20.2 million in former mobile revenue to its new-ish Internet of Things (IoT) unit last quarter. Consumer IoT generated $59.2 million in quarterly sales, equal to 14% of total revenue. Better still, Bergman expects IoT revenue will "approach a quarter" of total sales this period. Finally, PC revenue soared 19% year over year to $65.3 million.

Even as Synaptics is diversifying its revenue sources, mobile revenue should get a boost next quarter. Synaptics announced last month that the "world''s first in-display fingerprint sensors" are now being mass produced in partnership with a top-five original equipment manufacturer.

The highly secure in-display sensors, however, have applications well beyond smartphones. It''s not a reach to suggest Synaptics groundbreaking solution will be featured in smart-car infotainment systems -- already a targeted market -- and numerous smart-home devices.

Excluding $31.7 million in acquisition-related costs and other one-time items, compared to $12.2 million for acquisitions a year ago, Synaptics per-share earnings of $1.03 in its most recent quarter marked a 7% improvement. Speaking of acquisition-related costs, acquisitions of IoT providers Conexant Solutions and Marvell Technology ''s multimedia division -- two businesses that could serve as Synaptics next growth catalysts -- were Synaptics largest acquisitions recently.

Cartoon-ish drawing of a stand-up microphone and multiple images of a TV, light bulb, and car, among others, with a sound wave connecting them all.

Image source: Getty Images.

IoT, here we come
As Synaptics pointed out when it announced the deals for Conexant and Marvell''s multimedia unit, the IoT voice and video solutions offerings of the two instantly opened up a new multibillion-dollar market. Synaptics wasted no time taking advantage of its new opportunity.

One of Synaptics'' smart-home solutions, voice recognition ecosystem AudioSmart, will become an integral feature of Microsoft ''s (NASDAQ: MSFT) Cortana. In addition to enhancing Cortana''s capabilities, AudioSmart will reduce development time, enabling Microsoft to deliver upgraded solutions to consumers faster.

The partnership with Microsoft is also positive because it''s apparent that Cortana, and likely other major voice recognition players including Apple ''s Siri, aren''t necessarily competitors. Rather, the big hitters in the multibillion-dollar voice recognition market are possible customers, as Microsoft is.

The day following the Microsoft Cortana news, Synaptics said that Harman International has chosen its AudioSmart solution for its Allure family of smart speakers. Considering Synaptics'' initiative of growing its IoT sales, and expectations the unit will generate 25% of total revenue this quarter, more wins are just around the corner.

What a steal!
By virtually every metric, Synaptics stock is valued well below its peers. Looking ahead, at a mere 10 times forward earnings, Synaptics is an absolute steal. Not only does its rock-bottom valuation translate to tremendous upside potential, it limits risk. Let''s face it: At its current share price, how much lower can Synaptics stock go?

Yes, the $410 million to $450 million forecast for the second quarter is below last year''s $461.3 million, but it''s safe to say the expected "miss" is already priced, and then some, into Synaptics stock. With its revenue diversification efforts in full swing, nothing but upside in the exploding IoT market, and meager valuation, Synaptics may just be the best long-term growth stock in tech.

10 stocks we like better than Synaptics 
When investing geniuses David and Tom Gardner have a stock tip, it can pay to listen. After all, the newsletter they have run for over a decade, Motley Fool Stock Advisor , has tripled the market.*

David and Tom just revealed what they believe are the 10 best stocks for investors to buy right now... and Synaptics wasn''t one of them! That''s right -- they think these 10 stocks are even better buys.

Click here to learn about these picks!

*Stock Advisor returns as of January 2, 2018

Teresa Kersten is an employee of LinkedIn and is a member of The Motley Fool''s board of directors. LinkedIn is owned by Microsoft. Tim Brugger has no position in any of the stocks mentioned. The Motley Fool owns shares of and recommends Apple. The Motley Fool has the following options: long January 2020 $150 calls on Apple and short January 2020 $155 calls on Apple. The Motley Fool has a', N'Why This Internet of Things Stock May Be the Best Buy In Tech')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (23, 4, N'Yahoo Finance', CAST(N'2018-02-04' AS Date), N'https://finance.yahoo.com/news/3-takeaways-ebay-apos-fourth-203200428.html?.tsrc=rss', N'eBay (NASDAQ: EBAY) isn''t being left out of the e-commerce rally. Yes, the online marketplace''s sales volumes aren''t soaring like Amazon.com''s (NASDAQ: AMZN). But eBay''s holiday-quarter earnings report still showed a significant improvement in its growth rate while pointing to more acceleration ahead.

The company also demonstrated how its marketplace approach can deliver far higher profits than vertically integrated e-commerce retailers can hope for.

With that bigger picture in mind, let''s take a closer look at eBay''s latest results.

Keeping buyers and sellers happy
eBay added 2 million active buyers to its global base of engaged users. That translated into a healthy 5% increase and marked the fourth straight quarter of 5% gains on this metric following the prior year''s 4% uptick.

A man enters his credit card information into a laptop.View photos
A man enters his credit card information into a laptop.
More
Image source: Getty Images.

Sellers followed those buyers onto the platform over the holidays, and together their transactions produced a record quarter for the marketplace. Sales volumes spiked 8% in the U.S. market and 6% in the international geographies that make up 60% of eBay''s business. Overall volume rose 7%. While that was far below the 38% spike Amazon recently posted, it was a great result for eBay, matching the marketplace''s best expansion rate in over a year.

Other highlights
eBay''s other businesses chipped in solid growth, too. StubHub managed a 15% spike in volume on strength across ticket sales for concerts and sporting events. That jump followed a 2% increase in the prior quarter and a 5% drop in the fiscal second quarter, which suggests management has made good progress at getting this segment back on track. Classified platforms also enjoyed their fastest gains in over a year, with sales up 21% to over $244 million .', N'3 Takeaways From eBay&apos;s Fourth-Quarter Report')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (24, 4, N'Yahoo Finance', CAST(N'2018-02-04' AS Date), N'http://finance.yahoo.com/r/35c737f3-dd99-34ba-a750-5efe06a6d1ac/how-cloud-computing-giants-stack-up.html?puc=yahoo&cm_ven=YAHOO&yptr=yahoo&.tsrc=rss', N't''s getting crowded up in the cloud.

While Amazon''s (AMZN)  Amazon Web Services (AWS) maintained its lead in the cloud computing market in the fourth quarter, rivals such as Microsoft (MSFT) , IBM (IBM) , Alphabet  (GOOGL)  and Alibaba (BABA) are growing quickly -- in some cases, more quickly than AWS.

AWS revenue grew 45% to $5.1 billion in the fourth quarter, as it added customers such as Expedia (EXPE) , and Disney (DIS) and Time Warner''s (TWX) Turner named AWS their preferred cloud provider. AWS is on pace to generate $20 billion a year in revenue, and has 34% of the cloud infrastructure services market according to Synergy Research Group. 


Microsoft said in its Wednesday earnings call that its Azure cloud service grew 98% in the quarter. Synergy puts the company''s market share of the global cloud market at 13%, while noting that every company defines its cloud revenues differently.

"For example AWS revenue is predominantly (but not entirely) cloud infrastructure services," said Synergy Chief Analyst and Research Director John Dinsdale. "Microsoft includes in its cloud revenues a lot of SaaS and some professional services in addition to cloud infrastructure. IBM includes SaaS, professional services, hardware & software used to build clouds in addition to cloud infrastructure."

IBM Cloud, which contains diverse business related to cloud computing, posted a 30% gain in sales to $5.5 billion. The company''s "as-a-service" division, however, which includes cloud computing and software-as-a-service revenues, grew 20% to $2.6 billion in sales and produces more than $10 billion on an annual basis. The business has 8% market share, according to Synergy

Google CEO Sundar Pichai said that his company''s cloud business, which includes Google Cloud Platform and the G-Suite applications for businesses, are generating $1 billion per quarter during a Thursday earnings call. GCP is "the fastest-growing major public cloud provider in the world," Pichai added, without specifying its growth rate. GCP has 6% market share, Synergy says.

Meanwhile, Alibaba said that its cloud revenues gained 104% to $553 million on its Thursday earnings call. Alibaba Cloud has 4% market share, according to Synergy.

While Oracle (ORCL) did not make Synergy''s top 5, its cloud platform and infrastructure as-a-service revenues grew 21% to $396 million in its most recent quarter, and software-as-a-service sales increased 55% to $1.1 billion.', N'Tech Giants Amazon, Microsoft, Google and IBM Keep Their Heads in the Cloud')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (25, 4, N'Yahoo Finance', CAST(N'2018-02-04' AS Date), N'http://finance.yahoo.com/r/be1d72e0-1b38-37e9-a241-be36326b8be9/jim-cramer-amazon-wins-super-bowl.html?puc=yahoo&cm_ven=YAHOO&yptr=yahoo&.tsrc=rss', N'It''s vital to understand that no matter what happens, it''s about number raises and number cuts, and you raised numbers Amazon (AMZN) and you cut numbers Alphabet (GOOGL) .

That means in the end one is an upgrade or a reiterate with a much higher price target and, the other? It''s a soft downgrade.

Worse, if you own Alphabet, there is a sense that it doesn''t matter. The company says it is doing well, so you better believe it.

That''s OK when you are Amazon and you can say ads, services and retail are all good, because it''s pretty self-evident. But you can''t even figure what Alphabet wants to really be, other than a search company, which isn''t enough.

So in the end it seems to be happy to be in the playoffs, while Amazon wants to win the Super Bowl.


And how about the other Action Alerts PLUS charity portfolio holding, Apple (AAPL) ? It''s the underdog; it has a price to earnings multiple that is well under all of the others, meaning the others in the consumer packaged good business.

So, it is hard to get hit even after we get a long-awaited downgrade from chief Apple bear Tony Sacconaghi of Bernstein.

Takeaways: Alphabet will do nothing much; Apple will shade up, and Amazon is going to $1,600.', N'Jim Cramer: Amazon Wants to Win the Super Bowl; Alphabet, Not So Much')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (26, 3, N'Yahoo Finance', CAST(N'2018-02-04' AS Date), N'https://finance.yahoo.com/news/costco-wholesale-corp-declares-dividend-151817747.html?.tsrc=rss', N'Costco Wholesale Corp. (COST) today announced its dividend for the first quarter of 2018. As authorized by its board of directors, Costco will pay a cash dividend of 50 cents per ordinary share.

The dividend will be paid on March 2 to shareholders of record as of Feb. 16. The ex-dividend date is Feb. 15. The dividend is on par with the previous payment. If it is held constant by Costco for the next quarters, it will result in a forward annual dividend of $2 per ordinary share.

Warning! GuruFocus has detected 7 Warning Sign with COST. Click here to check it out.
High Yield Dividend Stocks in Gurus'' Portfolio
This Powerful Chart Made Peter Lynch 29% A Year For 13 Years
How to calculate the intrinsic value of a stock?


According to Costco''s current market valuation, the forward annual dividend yield is 1.01%. The dividend pay-out ratio is currently 31%.

The company closed the first quarter of fiscal year 2018 with earnings per share of $1.45, which was backed by revenue of $31.8 billion. Quarterly earnings and sales increased 17% and 13.2% compared to the same period of fiscal 2017.

For the second quarter of fiscal 2018, analysts expect Costco to report EPS of $1.45 on revenue of $32.61 billion. For full fiscal 2018, consensus is for an EPS of $6.66 and for a revenue of $138.48 billion.

GuruFocus gives Costco a profitability and growth rating of 7 out of 10 and a financial strength rating of 7 out of 10.

The stock has gained 20.51% on the New York Stock Exchange over the twelve trailing months timeframe, underperforming the S&P 500 index by 3.6%.


Source: Yahoo Finance

Costco is trading around $197.91 per share with a market capitalization of $86.9 billion, a price-book (P/B) ratio of 7.86, a price-sales (P/S) ratio of 0.66 and a price-earnings (P/E) ratio of 31.41.

The 52-weeks range is $150.00 to $199.88.

The forward P/E ratio is 29.59. When you multiply that by the forecasted 2018 EPS of $6.66, it yields a value of $197.07 per share. When the forward P/E ratio is multiplied by the forecasted 2019 EPS of $7.46, it yields a value of $220.74 per share.

The average target price is $208.28 per share and the recommendation rating is 2.1 out of 5.', N'Costco Wholesale Corp Declares Dividend')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (27, 3, N'Nasdaq.com', CAST(N'2018-01-29' AS Date), N'http://articlefeeds.nasdaq.com/~r/nasdaq/symbols/~3/hE5rQFYxBrg/heres-why-the-best-is-yet-to-come-for-costco-cm912302', N'Costco (NASDAQ: COST) has taken the long-range approach to building its business. The warehouse club often reacts slowly to change, and while that may appear complacent, it''s actually measured.

Because the chain has a loyal user base that has steadily grown while renewing at a roughly 90% rate, it does not have to react quickly. The company''s core customer base liked shopping in its warehouses. They enjoy not just the low prices, but also the ever-changing merchandise, the free samples, the cheap food, and many other things about the company''s brick-and-mortar stores.

That affinity for the experience offered in Costco warehouses has protected the company from the Retail Apocalypse . It also gave the company time to implement both a digital and a delivery strategy.

The exterior of a Costco with a crowded parking lot

Costco has been slow in making changes and that has worked for it. Image source: Costco.

What is Costco doing?
After pretty much ignoring the internet, the chain began improving its website last year. That included increasing selection, but it most importantly involved the company investing heavily in infrastructure. Costco did not simply throw a bunch of merchandise online; it improved the back end of its digital operation while also making its website more user-friendly and spending heavily on improving its shipping logistics.

That investment paid off strongly as the company reported a 43.5% gain in comparable e-commerce sales in Q1 2018. It then followed that up by reporting that December e-commerce sales, the first month of Q2 2018, rose by 33.3%. That''s strong evidence that waiting did not hurt the company when it came to offering its customer base a strong digital product.

The same is likely true for delivery, though the warehouse club is early in its implementation of two new plans. One, Costco Grocery, offers free two-day delivery on orders of non-perishable items over $75. The total box can weigh up to 40 pounds, and about 500 products are included in the offer.

The second offer is a same-day delivery partnership with Instacart. That deal lets Costco benefit from the delivery company''s growing footprint and strong infrastructure. It essentially puts Costco in same-day delivery business with very little risk or financial outlay.

"This is currently offered at 376 of our U.S. locations, and there will be a number of additional U.S. locations planned between now and the end of calendar ''18 as our partnership expands," said CFO Richard Galanti of the Instacart deal during the company''s Q4 earnings call. "There are approximately 1,700 SKUs, both dry and fresh that are offered and can be fulfilled."

The best is yet to come
Every time another retailer makes a big move, it seems like a number of retail analysts predict that whatever has happened will doom Costco. The reality is that the warehouse club has remained largely apart from the fate of others retailers. Its success won''t hinge on what Amazon does with Whole Foods, or whether Wal-Mart keeps lowering prices.

Instead, the company''s fate will be decided by its members. Costco makes about 75% of its profits from selling memberships, and its renewal rates in Q1 came in at 90% in the U.S. and Canada and 87.2% worldwide, nearly exactly where they were at the end of the previous quarter. That consistency looks even better when you consider the retail chain raised its prices in June for the first time in about five years.

Costco doesn''t respond like most retailers because it has a different business model. There are no signs that model has any weakness, and while growth will be slow (with 20 to 25 new warehouses planned in 2018), it should stay steady.

10 stocks we like better than Costco Wholesale 
When investing geniuses David and Tom Gardner have a stock tip, it can pay to listen. After all, the newsletter they have run for over a decade, Motley Fool Stock Advisor , has tripled the market.*

David and Tom just revealed what they believe are the 10 best stocks for investors to buy right now... and Costco Wholesale wasn''t one of them! That''s right -- they think these 10 stocks are even better buys.

Click here to learn about these picks!

*Stock Advisor returns as of January 2, 2018

John Mackey, CEO of Whole Foods Market, an Amazon subsidiary, is a member of The Motley Fool''s board of directors. Daniel B. Kline has no position in any of the stocks mentioned. The Motley Fool owns shares of and recommends Amazon. The Motley Fool recommends Costco Wholesale. The Motley Fool has a disclosure policy .', N'Here''s Why the Best Is Yet to Come for Costco')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (28, 2, N'Motley Fool', CAST(N'2018-02-10' AS Date), N'https://finance.yahoo.com/news/don-apos-t-overlook-metrics-174600709.html', N'Ahead of its fourth-quarter earnings report, investors had big expectations for Amazon.com (NASDAQ: AMZN). Yet somehow it still managed to crush expectations, delivering year-over-year revenue growth of 38% and earnings-per-share growth of 144%. 

But there''s far more to Amazon''s fourth quarter than its record revenue or even its enormous guidance. A close look at its report reveals a handful of easily overlooked insights for investors, including huge growth in subscription services and Amazon Web Services (AWS) revenue, a surprising jump in its North America segment''s net sales, and an accelerating pace of feature launches for AWS.

Many Amazon boxes riding a conveyor belt in an Amazon fulfillment center
Many Amazon boxes riding a conveyor belt in an Amazon fulfillment center
More
Image source: Amazon.com.

1. Subscription revenue was up 49%
Online subscriptions are all the rage right now -- and Amazon knows it. Revenue for online subscriptions to services like its Amazon Prime membership, Audible, Prime Video, and Prime Music Unlimited was up 49% year over year, handily outpacing the 20% year-over-year revenue growth from its online store segment, which includes sales of products and digital media content.

Subscription services revenue was $3.2 billion, accounting for 5.3% of total revenue. This was up from 4.9% in the year-ago quarter.

2. AWS revenue climbed 45%
As the main driver of operating profits, Amazon''s cloud computing business was closely watched by investors. Fortunately for them, growth in this already fast-growing business accelerated in Q4. AWS revenue increased 45% year over year in Q4, up from a growth rate of 42% in Q3. 

This rapid revenue in AWS comes as tens of thousands of companies migrate their data to AWS. "In its second year of availability, the number of databases migrated to AWS in 2017 using the AWS Database Migration Service is accelerating -- growing more than 100% over 2016 to a total of more than 54,000 databases migrated since the introduction of the service," Amazon said.

A hand holding up a blue cloud-shaped cardboard under a diagram of laptops drawn on a chalkboard
A hand holding up a blue cloud-shaped cardboard under a diagram of laptops drawn on a chalkboard
More
Image source: Getty Images.

3. AWS launched 1,430 significant new services and features in 2017
Speaking of AWS, it''s easy to see why companies are moving their data to the cloud computing platform in droves. Amazon said AWS launched 1,430 significant new features and services in 2017, up about 41% from the 1,017 it released last year. Furthermore, an impressive 497 of these new features were launched in the fourth quarter alone.', N'Don''t Overlook These Metrics From Amazon.com, Inc.''s Fourth Quarter')
GO
INSERT [dbo].[article] ([id], [company_id], [source], [date], [url], [text], [title]) VALUES (29, 5, N'Seeking Alpha', CAST(N'2018-01-01' AS Date), N'https://seekingalpha.com/article/4056583-facebook-turning-free-cash-flow-machine', N'Facebook (NASDAQ:FB) is a stock that has been too "expensive" (using traditional metrics) for me to buy since it went public in 2012. And while the trailing P/E ratio is still above 40x, Facebook shares now trade for a slightly more reasonable 26x expected 2017 earnings. While technology companies such as Apple (NASDAQ:AAPL), Microsoft (NASDAQ:MSFT) and even Alphabet/Google (NASDAQ:GOOG) (NASDAQ:GOOGL) are known as free cash flow generating machines, Facebook does not have that reputation. Therefore, I expected that the results would not be positive if I analyzed Facebook shares using my DCF model and performed a sensitivity analysis of the results.

Note: I invite you to read my original article that outlines the DCF sensitivity analysis methodology. The basic idea is that since the results of a DCF analysis can be heavily skewed by making minor changes to the terminal growth rate or WACC (weighted average cost of capital), I have used a range of long-term growth rates and discount [WACC] rates in my analysis below. By using one''s own estimate of long-term growth and an appropriate WACC (discount) rate, each individual investor can come up with their own target price for the security in question.

Facebook''s past five years of results are as follows:

This data allows us to find the average Operating Cash Flow/Revenue (47%) and average Capital Expenditures/Revenue (17%). Perhaps not surprisingly as a social media company, Facebook has strong margins but spends a meaningful portion of its operating cash flow on capital expenditures. Investors should note that the above CapEx excludes the company''s purchases of Instagram and WhatsApp. One could reasonably argue that those acquisitions should be included as part of the CapEx figure, but as I do not believe Facebook to a serial acquirer, I have excluded them.', N'Facebook: Turning Into A Free Cash Flow Machine')
GO
SET IDENTITY_INSERT [dbo].[article] OFF
GO
SET IDENTITY_INSERT [dbo].[common_words] ON 
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (1, N'&')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (2, N'this')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (3, N'that')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (4, N'those')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (5, N'these')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (6, N'such')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (7, N'a')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (8, N'the')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (9, N'one')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (10, N'two')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (11, N'three')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (12, N'four')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (13, N'which')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (14, N'whose')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (15, N'who')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (16, N'where')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (17, N'as')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (18, N'to')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (19, N'in')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (20, N'at')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (21, N'from')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (22, N'on')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (23, N'of')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (24, N'not')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (25, N'no')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (26, N'do')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (27, N'does')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (28, N'did')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (29, N'must')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (30, N'have')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (31, N'had')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (32, N'has')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (33, N'been')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (34, N'should')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (35, N'would')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (36, N'through')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (37, N'is')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (38, N'was')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (39, N'are')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (40, N'were')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (41, N'am')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (42, N'for')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (43, N'into')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (44, N'it')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (45, N'we')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (46, N'us')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (47, N'you')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (48, N'your')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (49, N'our')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (50, N'ours')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (51, N'he')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (52, N'him')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (53, N'his')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (54, N'her')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (55, N'she')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (56, N'hers')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (57, N'each')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (58, N'there')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (59, N'can')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (60, N'could')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (61, N'up')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (62, N'down')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (63, N'with')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (64, N'many')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (65, N'much')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (66, N'and')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (67, N'make')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (68, N'made')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (69, N'put')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (70, N'their')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (71, N'they')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (72, N'here')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (73, N'its')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (74, N'will')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (75, N'by')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (76, N'all')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (77, N'or')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (78, N'too')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (79, N'ago')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (80, N'when')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (81, N'my')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (82, N'now')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (83, N'but')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (84, N'since')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (85, N'back')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (86, N'we''ve')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (87, N'so')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (88, N'around')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (89, N'about')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (90, N'belong')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (91, N'years')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (92, N'i''m')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (93, N'out')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (94, N'what')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (95, N'only')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (96, N'then')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (97, N'being')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (98, N'didn''t')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (99, N'company''s')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (100, N'got')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (101, N'yes')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (102, N'it''s')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (103, N'you''re')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (104, N'some')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (105, N'more')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (106, N'than')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (107, N'ever')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (108, N'yet')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (109, N'nearly')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (110, N'even')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (111, N'how')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (112, N'able')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (113, N'also')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (114, N'outside')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (115, N'seem')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (116, N'others')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (117, N'that''s')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (118, N'any')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (119, N'doesn''t')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (120, N'over')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (121, N'let''s')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (122, N'here''s')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (123, N'doing')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (124, N'among')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (125, N'because')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (126, N'weren''t')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (127, N'alike')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (128, N'away')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (129, N'while')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (130, N'you''ll')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (131, N'every')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (132, N'don''t')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (133, N'without')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (134, N'beyond')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (135, N'if')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (136, N'get')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (137, N'them')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (138, N'we''ll')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (139, N'we''re')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (140, N'i''d')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (141, N'before')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (142, N'though')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (143, N'moment')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (144, N'likely')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (145, N'during')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (146, N'however')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (147, N'until')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (148, N'several')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (149, N'become')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (150, N'above')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (151, N'year''s')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (152, N'may')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (153, N'unable')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (154, N'whether')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (155, N'prior')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (156, N'strongly')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (157, N'probably')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (158, N'both')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (159, N'just')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (160, N'always')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (161, N'almost')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (162, N'ahead')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (163, N'virtually')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (164, N'anything')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (165, N'there''s')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (166, N'including')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (167, N'substantially')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (168, N'similarly')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (169, N'another')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (170, N'totally')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (171, N'particularly')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (172, N'primarily')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (173, N'mainly')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (174, N'meanwhile')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (175, N'currently')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (176, N'despite')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (177, N'throughout')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (178, N'adversely')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (179, N'against')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (180, N'timely')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (181, N'additional')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (182, N'cannot')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (183, N'aforementioned')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (184, N'once')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (185, N'previously')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (186, N'often')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (187, N'after')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (188, N'behind')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (189, N'although')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (190, N'originally')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (191, N'generally')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (192, N'approximately')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (193, N'together')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (194, N'still')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (195, N'both')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (196, N'under')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (197, N'hasn''t')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (198, N'toward')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (199, N'together')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (200, N'overall')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (201, N'who''ll')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (202, N'why')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (203, N'just')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (204, N'couldn''t')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (205, N'onto')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (206, N'haven''t')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (207, N'especially')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (208, N'never')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (209, N'enough')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (210, N'won''t')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (211, N'lets')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (212, N'they''re')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (213, N'an')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (214, N'therefore')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (215, N'thereby')
GO
INSERT [dbo].[common_words] ([id], [word]) VALUES (216, N'thereafter')
GO
SET IDENTITY_INSERT [dbo].[common_words] OFF
GO