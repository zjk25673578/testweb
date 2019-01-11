<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<w:document xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas"
            xmlns:cx="http://schemas.microsoft.com/office/drawing/2014/chartex"
            xmlns:cx1="http://schemas.microsoft.com/office/drawing/2015/9/8/chartex"
            xmlns:cx2="http://schemas.microsoft.com/office/drawing/2015/10/21/chartex"
            xmlns:cx3="http://schemas.microsoft.com/office/drawing/2016/5/9/chartex"
            xmlns:cx4="http://schemas.microsoft.com/office/drawing/2016/5/10/chartex"
            xmlns:cx5="http://schemas.microsoft.com/office/drawing/2016/5/11/chartex"
            xmlns:cx6="http://schemas.microsoft.com/office/drawing/2016/5/12/chartex"
            xmlns:cx7="http://schemas.microsoft.com/office/drawing/2016/5/13/chartex"
            xmlns:cx8="http://schemas.microsoft.com/office/drawing/2016/5/14/chartex"
            xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
            xmlns:aink="http://schemas.microsoft.com/office/drawing/2016/ink"
            xmlns:am3d="http://schemas.microsoft.com/office/drawing/2017/model3d"
            xmlns:o="urn:schemas-microsoft-com:office:office"
            xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"
            xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml"
            xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing"
            xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing"
            xmlns:w10="urn:schemas-microsoft-com:office:word"
            xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"
            xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml"
            xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml"
            xmlns:w16cid="http://schemas.microsoft.com/office/word/2016/wordml/cid"
            xmlns:w16se="http://schemas.microsoft.com/office/word/2015/wordml/symex"
            xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup"
            xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk"
            xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml"
            xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape"
            mc:Ignorable="w14 w15 w16se w16cid wp14">
    <w:body>
        <w:p w:rsidR="004562E3" w:rsidRPr="00D57BD0" w:rsidRDefault="002E700A" w:rsidP="004562E3">
            <w:pPr>
                <w:jc w:val="center"/>
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                    <w:sz w:val="44"/>
                    <w:szCs w:val="44"/>
                </w:rPr>
            </w:pPr>
            <w:r>
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                    <w:sz w:val="44"/>
                    <w:szCs w:val="44"/>
                </w:rPr>
                <w:t>${sche}</w:t>
            </w:r>
            <w:r w:rsidR="004562E3" w:rsidRPr="00D57BD0">
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                    <w:sz w:val="44"/>
                    <w:szCs w:val="44"/>
                </w:rPr>
                <w:t>数据库文档</w:t>
            </w:r>
        </w:p>
        <#list tableList as table>
        <w:p w:rsidR="004562E3" w:rsidRPr="00D57BD0" w:rsidRDefault="004562E3" w:rsidP="004562E3">
            <w:pPr>
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                </w:rPr>
            </w:pPr>
            <w:r w:rsidRPr="00D57BD0">
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                </w:rPr>
                <w:t>序号</w:t>
            </w:r>
            <w:r w:rsidR="002E700A">
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                </w:rPr>
                <w:t>: ${table_index + 1}</w:t>
            </w:r>
        </w:p>
        <w:p w:rsidR="004562E3" w:rsidRPr="00D57BD0" w:rsidRDefault="004562E3" w:rsidP="004562E3">
            <w:pPr>
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                </w:rPr>
            </w:pPr>
            <w:r w:rsidRPr="00D57BD0">
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                </w:rPr>
                <w:t>表名</w:t>
            </w:r>
            <w:r w:rsidR="002E700A">
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                </w:rPr>
                <w:t xml:space="preserve">: </w:t>
            </w:r>
            <w:r w:rsidR="003B1ACA">
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                </w:rPr>
                <w:t>${table.tname}</w:t>
            </w:r>
            <w:bookmarkStart w:id="0" w:name="_GoBack"/>
            <w:bookmarkEnd w:id="0"/>
        </w:p>
        <w:p w:rsidR="004562E3" w:rsidRPr="00D57BD0" w:rsidRDefault="004562E3" w:rsidP="004562E3">
            <w:pPr>
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                </w:rPr>
            </w:pPr>
            <w:r w:rsidRPr="00D57BD0">
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                </w:rPr>
                <w:t>描述</w:t>
            </w:r>
            <w:r w:rsidR="002E700A">
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                </w:rPr>
                <w:t xml:space="preserve">: </w:t>
            </w:r>
            <w:r w:rsidR="003B1ACA">
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                </w:rPr>
                <w:t>${table.tcomment!"无描述"}</w:t>
            </w:r>
        </w:p>
        <w:tbl>
            <w:tblPr>
                <w:tblW w:w="11199" w:type="dxa"/>
                <w:tblInd w:w="-1310" w:type="dxa"/>
                <w:tblBorders>
                    <w:top w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                    <w:left w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                    <w:bottom w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                    <w:right w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                    <w:insideH w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                    <w:insideV w:val="single" w:sz="4" w:space="0" w:color="auto"/>
                </w:tblBorders>
                <w:tblLayout w:type="fixed"/>
                <w:tblLook w:val="04A0" w:firstRow="1" w:lastRow="0" w:firstColumn="1" w:lastColumn="0" w:noHBand="0"
                           w:noVBand="1"/>
            </w:tblPr>
            <w:tblGrid>
                <w:gridCol w:w="2100"/>
                <w:gridCol w:w="1303"/>
                <w:gridCol w:w="1134"/>
                <w:gridCol w:w="1417"/>
                <w:gridCol w:w="1985"/>
                <w:gridCol w:w="3260"/>
            </w:tblGrid>
            <w:tr w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidTr="003B1ACA">
                <w:trPr>
                    <w:trHeight w:val="372"/>
                </w:trPr>
                <w:tc>
                    <w:tcPr>
                        <w:tcW w:w="2100" w:type="dxa"/>
                        <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
                    </w:tcPr>
                    <w:p w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidRDefault="003B1ACA" w:rsidP="0083329E">
                        <w:pPr>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                        </w:pPr>
                        <w:r w:rsidRPr="00D57BD0">
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>列名</w:t>
                        </w:r>
                    </w:p>
                </w:tc>
                <w:tc>
                    <w:tcPr>
                        <w:tcW w:w="1303" w:type="dxa"/>
                        <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
                    </w:tcPr>
                    <w:p w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidRDefault="003B1ACA" w:rsidP="0083329E">
                        <w:pPr>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                        </w:pPr>
                        <w:r w:rsidRPr="00D57BD0">
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>数据类型</w:t>
                        </w:r>
                    </w:p>
                </w:tc>
                <w:tc>
                    <w:tcPr>
                        <w:tcW w:w="1134" w:type="dxa"/>
                        <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
                    </w:tcPr>
                    <w:p w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidRDefault="003B1ACA" w:rsidP="0083329E">
                        <w:pPr>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                        </w:pPr>
                        <w:r w:rsidRPr="00D57BD0">
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>长度</w:t>
                        </w:r>
                    </w:p>
                </w:tc>
                <w:tc>
                    <w:tcPr>
                        <w:tcW w:w="1417" w:type="dxa"/>
                        <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
                    </w:tcPr>
                    <w:p w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidRDefault="003B1ACA" w:rsidP="0083329E">
                        <w:pPr>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                        </w:pPr>
                        <w:r w:rsidRPr="00D57BD0">
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>可为null</w:t>
                        </w:r>
                    </w:p>
                </w:tc>
                <w:tc>
                    <w:tcPr>
                        <w:tcW w:w="1985" w:type="dxa"/>
                        <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
                    </w:tcPr>
                    <w:p w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidRDefault="003B1ACA" w:rsidP="0083329E">
                        <w:pPr>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                        </w:pPr>
                        <w:r w:rsidRPr="00D57BD0">
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>关联表或列</w:t>
                        </w:r>
                    </w:p>
                </w:tc>
                <w:tc>
                    <w:tcPr>
                        <w:tcW w:w="3260" w:type="dxa"/>
                        <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
                    </w:tcPr>
                    <w:p w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidRDefault="003B1ACA" w:rsidP="0083329E">
                        <w:pPr>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                        </w:pPr>
                        <w:r w:rsidRPr="00D57BD0">
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>注释</w:t>
                        </w:r>
                    </w:p>
                </w:tc>
            </w:tr>
            <#list table.cols as column>
            <w:tr w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidTr="003B1ACA">
                <w:tc>
                    <w:tcPr>
                        <w:tcW w:w="2100" w:type="dxa"/>
                        <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
                    </w:tcPr>
                    <w:p w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidRDefault="003B1ACA" w:rsidP="0083329E">
                        <w:pPr>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                        </w:pPr>
                        <w:r>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                            <w:t>${column.colname}</w:t>
                        </w:r>
                    </w:p>
                </w:tc>
                <w:tc>
                    <w:tcPr>
                        <w:tcW w:w="1303" w:type="dxa"/>
                        <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
                    </w:tcPr>
                    <w:p w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidRDefault="003B1ACA" w:rsidP="0083329E">
                        <w:pPr>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                            </w:rPr>
                        </w:pPr>
                        <w:r w:rsidRPr="003B1ACA">
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                            <w:t>${column.coltype}</w:t>
                        </w:r>
                    </w:p>
                </w:tc>
                <w:tc>
                    <w:tcPr>
                        <w:tcW w:w="1134" w:type="dxa"/>
                        <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
                    </w:tcPr>
                    <w:p w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidRDefault="003B1ACA" w:rsidP="0083329E">
                        <w:pPr>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                        </w:pPr>
                        <w:r>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                            <w:t>${column.clength!"无"}</w:t>
                        </w:r>
                    </w:p>
                </w:tc>
                <w:tc>
                    <w:tcPr>
                        <w:tcW w:w="1417" w:type="dxa"/>
                        <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
                    </w:tcPr>
                    <w:p w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidRDefault="003B1ACA" w:rsidP="0083329E">
                        <w:pPr>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                        </w:pPr>
                        <w:r>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                            <w:t>${column.isnull}</w:t>
                        </w:r>
                    </w:p>
                </w:tc>
                <w:tc>
                    <w:tcPr>
                        <w:tcW w:w="1985" w:type="dxa"/>
                        <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
                    </w:tcPr>
                    <w:p w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidRDefault="003B1ACA" w:rsidP="0083329E">
                        <w:pPr>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                        </w:pPr>
                        <w:r>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>${column.related!"待添加"}</w:t>
                        </w:r>
                    </w:p>
                </w:tc>
                <w:tc>
                    <w:tcPr>
                        <w:tcW w:w="3260" w:type="dxa"/>
                        <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
                    </w:tcPr>
                    <w:p w:rsidR="003B1ACA" w:rsidRPr="00D57BD0" w:rsidRDefault="003B1ACA" w:rsidP="0083329E">
                        <w:pPr>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                        </w:pPr>
                        <w:r>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                            </w:rPr>
                            <w:t>c</w:t>
                        </w:r>
                        <w:r>
                            <w:rPr>
                                <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑" w:hint="eastAsia"/>
                            </w:rPr>
                            <w:t>${column.ccomment!"No Comment"}</w:t>
                        </w:r>
                    </w:p>
                </w:tc>
            </w:tr>
            </#list>
        </w:tbl>
        </#list>
        <w:p w:rsidR="004562E3" w:rsidRPr="00D57BD0" w:rsidRDefault="004562E3" w:rsidP="004562E3">
            <w:pPr>
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                </w:rPr>
            </w:pPr>
        </w:p>
        <w:p w:rsidR="004562E3" w:rsidRPr="00D57BD0" w:rsidRDefault="004562E3" w:rsidP="004562E3">
            <w:pPr>
                <w:rPr>
                    <w:rFonts w:ascii="微软雅黑" w:eastAsia="微软雅黑" w:hAnsi="微软雅黑"/>
                </w:rPr>
            </w:pPr>
        </w:p>
        <w:p w:rsidR="004562E3" w:rsidRDefault="004562E3" w:rsidP="004562E3"/>
        <w:p w:rsidR="008F7A5A" w:rsidRDefault="008F7A5A"/>
        <w:sectPr w:rsidR="008F7A5A" w:rsidSect="0050386F">
            <w:pgSz w:w="11906" w:h="16838"/>
            <w:pgMar w:top="1440" w:right="1800" w:bottom="1440" w:left="1800" w:header="851" w:footer="992"
                     w:gutter="0"/>
            <w:cols w:space="425"/>
            <w:docGrid w:type="lines" w:linePitch="312"/>
        </w:sectPr>
    </w:body>
</w:document>