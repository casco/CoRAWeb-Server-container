An extraction templates specifies (via xPath selectors) how to extract items from web-pages. 

    Instance Variables
	itemType:		<String>   the type (ideally from schema.org) for the extrated item. 
	urlPattern:		<String>   a regular expression to identify pages this template can process 
	xPathPropertySelectors:		<Dictionary of String, String>  pairs of property name and xPath selector to obtain the property value from a web page. 
         owner: 	<User>  the person that created the template
	groups:   <Collection of Groups>  the groups that can use  this template 

