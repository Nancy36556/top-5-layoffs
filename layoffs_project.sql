select * from layoffs_5;
with dubbel_cte as
( 
Select *,
 row_number() OVER( 
partition by company, industry, 
total_laid_off , percentage_laid_off , location, stage, country,funds_raised_millions, 'date') as row_num
From  layoffs_5) 
select *
from dubbel_cte 
where row_num > 1;
select * 
from layoffs_5
where company='Casper';
