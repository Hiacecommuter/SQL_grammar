--Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

select 
    case
        when (select count(*) from station tot1)%2=0 
        then (
            select * from (select round(avg(lat_n), 4) from 
                 (select lat_n from 
                    (select lat_n, row_number() over() as rb  from station order by lat_n) tp 
                    where rb >= (select count(*) from station tot) /2 -1
                        order by rb limit 2 ) c1) c11           
           ) 
        else (
            select * from (select round(lat_n, 4) from 
               (select lat_n from 
                ( select lat_n, row_number() over() as rb from station order by lat_n) tp
             where rb > ((select count(*) from station tot) - 1) /2
                order by rb limit 1 )c2 ) c22
        ) 
    end;
