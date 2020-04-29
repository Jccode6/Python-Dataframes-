SELECT 
	--lookup_key
	--,document_type
	--,image_comment
	front_filename
	--,add_user
FROM
	image 
WHERE
	front_filename IS NOT NULL
	AND document_type IN ('NoType','No Type','NoTPE')
	AND image_comment LIKE 'BH form%'
	OR image_comment LIKE 'BH AOE%'
	OR image_comment LIKE '%Area of Expertise'
	AND image_date between '2019-08-01' and GETDATE()
	