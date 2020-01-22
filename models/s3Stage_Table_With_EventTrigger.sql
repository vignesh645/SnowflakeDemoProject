{{ config(materialized='table') }}

with source_data as (
    select
    t.$2 as rowid,
    t.$3 as orderid,
    t.$4 as OrderDate,
    t.$5 as ShipDate,
    t.$6 as ShipModeCustomerID,
    t.$7 as CustomerName,
    t.$8 as Segment,
    t.$9 as City,
    t.$10 as State,
    t.$11 as Country,
    t.$12 as PostalCodeMarket,
    t.$13 as Region,
    t.$14 as ProductID,
    t.$15 as Category,
    t.$16 as SubCategory,
    t.$17 as ProductName,
    t.$18 as Sales,
    t.$19 as Quantity,
    t.$20 as Discount,
    t.$21 as Profit,
    t.$22 as ShippingCost,
    t.$23 as OrderPriority
    from @Sales_Year_Stage_SF/ t
    where t.$1 = '{{ var("Var_Year") }}'
)
select * from source_data
