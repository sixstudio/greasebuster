/*
Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
        
};


CKEDITOR.stylesSet.add( 'my_styles',
[
   // Block-level styles
   { name : 'Title', element : 'h4', styles : { 'color' : '#2290BE' , 'font-family' : 'arial', 'font-weight' : 'normal', 'font-size': '18px'} },
   { name : 'Content' , element : 'p', styles : { 'font-family' : 'Arial', 'margin-bottom' : '25px'} },
 
]);

CKEDITOR.config.stylesSet = 'my_styles';