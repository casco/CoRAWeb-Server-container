rendering
renderBookmarkletAnchorOn: html
	html
		paragraph: [ html anchor
				url:
					'javascript:(function(){open(''http://' , CWAdminComponent location
						, ':8000/harvest?url=''+encodeURIComponent(location.href),''targetname'',''height=300,width=700'');})()';
				with: 'harvest' ]