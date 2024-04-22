use chandigarh
select * from [dbo].[data1]
select * from [dbo].[Sheet1$]
select count(*)from.[dbo].[Dataset1 .xlsx - Data1(sql project indian census)33]
select count(*) from [dbo].[Sheet1$]
select * from [dbo].[Dataset1 .xlsx - Data1(sql project indian census)33]where state in ('jharkhand','Bihar')
select sum(population) from [dbo].[Sheet1$]
select avg(Growth)*100 from [dbo].[data1]
select state, avg(Growth)*100 from data1 group by state
select state, round(avg(Sex_Ratio),0) from dbo.data1 group by state
select state, round(avg(literacy),0) avg_literacy_ratio from dbo.data1
group by state having round(avg(literacy),0)>90 order by avg_literacy_ratio desc
select top 3 state, avg(Growth)*100 avg_growth from [dbo].[data1]
group by state order by avg_growth desc
select state, avg(Growth)*100 avg_growth from [dbo].[data1]
group by state order by avg_growth desc limit 3

select state,round(avg(Sex_Ratio),0) avg_sex_ratio from [dbo].[data1]
group by state order by avg_sex_ratio asc
select top 3 state,round(avg(Sex_Ratio),0) avg_sex_ratio from [dbo].[data1]
group by state order by avg_sex_ratio asc


create table #topstates(
state nvarchar(255),
topstate float)

insert into #topstates
select state, round(avg(Literacy),0) avg_literacy_ratio from [dbo].[data1]
group by state order by avg_literacy_ratio desc;

select * from #topstates
select top 3* from #topstates order by #topstates.topstate desc
select state from [dbo].[data1] where lower(state) like 'a%'
select distinct state from [dbo].[data1] where lower(state) like 'a%'