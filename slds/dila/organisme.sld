<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor
    version="1.0.0"
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
    xmlns="http://www.opengis.net/sld"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <NamedLayer>
        <Name>organisme</Name>
        <UserStyle>
            <FeatureTypeStyle>
                <Rule>
                    <MaxScaleDenominator>150000</MaxScaleDenominator>
                    <PointSymbolizer>
                        <Graphic>
                            <Mark>
                                <WellKnownName>circle</WellKnownName>
                                <Fill>
                                    <CssParameter name="fill">#a6cee3</CssParameter>
                                </Fill>
                                <Stroke>
                                    <CssParameter name="stroke">#000000</CssParameter>
                                </Stroke>
                            </Mark>
                            <Size>5</Size>
                        </Graphic>
                    </PointSymbolizer>
                    <TextSymbolizer>
                        <Label>
                            <ogc:PropertyName>type</ogc:PropertyName>
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
                                        <ogc:Literal>1.2</ogc:Literal>
                                    </AnchorPointX>
                                    <AnchorPointY>
                                        <ogc:Literal>-0.5</ogc:Literal>
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
                        <VendorOption name="conflictResolution">true</VendorOption>
                        <VendorOption name="goodnessOfFit">0</VendorOption>
                        <VendorOption name="autoWrap">60</VendorOption>
                    </TextSymbolizer>
                </Rule>
            </FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>
</StyledLayerDescriptor>
