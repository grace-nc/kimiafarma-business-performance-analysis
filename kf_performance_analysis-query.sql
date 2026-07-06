# Query for Kimia Farma Data Analytics Project-based Internship
# By Grace Natalie Catherine

# Create Table with Join
SELECT
    t.transaction_id,
    t.date,
    t.branch_id,
    kc.branch_name,
    kc.kota,
    kc.provinsi,
    kc.rating AS rating_cabang,
    t.customer_name,
    t.product_id,
    p.product_name,
    t.price AS actual_price,
    t.discount_percentage,

    CASE
        WHEN t.price <= 50000 THEN 0.10
        WHEN t.price <= 100000 THEN 0.15
        WHEN t.price <= 300000 THEN 0.20
        WHEN t.price <= 500000 THEN 0.25
        ELSE 0.30
    END AS persentase_gross_laba,

    # nett sales = sales * (1 - %discount)
    t.price * (1 - t.discount_percentage) AS nett_sales,

    # nett profit = nett sales * gross laba percentage
    (t.price * (1 - t.discount_percentage)) *
    CASE
        WHEN t.price <= 50000 THEN 0.10
        WHEN t.price <= 100000 THEN 0.15
        WHEN t.price <= 300000 THEN 0.20
        WHEN t.price <= 500000 THEN 0.25
        ELSE 0.30
    END AS nett_profit,

    t.rating AS rating_transaksi

FROM `data-analyst-project-501602.kf_dataset.final_transaction` t
JOIN `data-analyst-project-501602.kf_dataset.kantor_cabang` kc
    ON t.branch_id = kc.branch_id
JOIN `data-analyst-project-501602.kf_dataset.product` p
    ON t.product_id = p.product_id;