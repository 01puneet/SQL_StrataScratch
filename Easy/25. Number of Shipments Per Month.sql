select count(concat(shipment_id, sub_id)), DATE_FORMAT(shipment_date, '%Y-%m')  date_ym
from amazon_shipment
group by date_ym;