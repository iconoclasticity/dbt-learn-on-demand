select 
    id as payment_id,
    orderid as order_id,
    status as payment_status,
    amount as payment_amount,
    created as created_date,
    _batched_at as batched_time
    
    
from RAW.stripe.payment