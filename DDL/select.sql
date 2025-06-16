SELECT
    *
FROM
    wing_digital.hr_employee he
ORDER BY
    CASE
        WHEN he.create_date IS NULL THEN NULL
        ELSE he.full_name
    END DESC,
    he.id DESC
LIMIT 100;