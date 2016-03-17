<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor
    version="1.0.0"
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
    xmlns="http://www.opengis.net/sld"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <NamedLayer>
        <Name>departement</Name>
        <UserStyle>
            <Title>Département</Title>
            <Abstract>Les départements français issus de GEOFLA</Abstract>
            <FeatureTypeStyle>
                <Rule>
                  <!--<MinScaleDenominator>200000</MinScaleDenominator>--> 
                    <MaxScaleDenominator>20000000</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#dddddd</CssParameter>
                            <CssParameter name="stroke-width">0.8</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>

                <Rule>
                    <MinScaleDenominator>200000</MinScaleDenominator> 
                    <MaxScaleDenominator>2000000</MaxScaleDenominator>
                    <TextSymbolizer>
                        <Geometry>
                            <ogc:Function name="centroid">
                                <ogc:PropertyName>geometry</ogc:PropertyName>
                            </ogc:Function>
                        </Geometry>
                        <Label>
                            <ogc:PropertyName>nom_dept</ogc:PropertyName>
                        </Label>
                        <Font>
                            <CssParameter name="font-family">Arial</CssParameter>
                            <CssParameter name="font-size">12</CssParameter>
                            <CssParameter name="font-style">normal</CssParameter>
                            <CssParameter name="font-weight">bold</CssParameter>
                        </Font>
                        <LabelPlacement>
                            <PointPlacement>
                                <AnchorPoint>
                                    <AnchorPointX>
                                        <ogc:Literal>0.5</ogc:Literal>
                                    </AnchorPointX>
                                    <AnchorPointY>
                                        <ogc:Literal>0.5</ogc:Literal>
                                    </AnchorPointY>
                                </AnchorPoint>
                                <Rotation>
                                    <ogc:Literal>0</ogc:Literal>
                                </Rotation>
                            </PointPlacement>
                        </LabelPlacement>
                        <Fill>
                           <CssParameter name="fill">#000000</CssParameter>
                         </Fill>
                        <Halo>
                          <Radius>1</Radius>  
                          <Fill>
                            <CssParameter name="fill">#ffff00</CssParameter>
                          </Fill>
                        </Halo>
                        <VendorOption name="conflictResolution">true</VendorOption>
                        <VendorOption name="goodnessOfFit">0</VendorOption>
                        <VendorOption name="autoWrap">60</VendorOption>
                    </TextSymbolizer>
                </Rule>
            </FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>
</StyledLayerDescriptor>
