<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/antiques">
        <html>
            <head>				
				<title>Цветы</title>
                <style type="text/css">
                    td, th{                       
                        border: 2px solid black;
                        text-align: center;
                        padding: 10px;
                        background: #EBA2B4;
                    }
                </style>

			</head>
            <body>
                <h1> Цветы </h1>
                <table>
                    <tr>
                        <th>ID товара</th>
                        <th>Название</th>
                        <th>Страна</th>  
                        <th>Код поставщика</th>
                        <th>Код товара</th>                        
                        <th>Количество</th>
                        <th>Размер</th> 
                        <th>Наценка</th>
                        <th>Цена</th>
                   </tr>

                    <xsl:for-each select = "flower">
                        <tr>                           
                            <td><xsl:value-of select = "flower-id"/></td>
                            <td><xsl:value-of select = "flower-name"/></td>
                            <td><xsl:value-of select = "country"/></td>
                            <td><xsl:value-of select = "code-supplier"/></td>
                            <td><xsl:value-of select = "code-product"/></td>       
                            <td><xsl:value-of select = "amount"/></td>
                            <td><xsl:value-of select = "size"/></td>
                            <td><xsl:value-of select = "markup"/></td>
                            <td><xsl:value-of select = "price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>   	