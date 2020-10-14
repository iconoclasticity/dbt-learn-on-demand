with orders as (

    select * from {{ ref('stg_orders') }}

),

payments as (

    select * from {{ ref('stg_payments') }}

),



final as (

    select
        orders.order_id,
        coalesce(payments.payment_amount, 0) as orderammount

    from orders

    left join payments using (order_id)
)

select * from final