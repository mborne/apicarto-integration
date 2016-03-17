<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor
    version="1.0.0"
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
    xmlns="http://www.opengis.net/sld"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:ogc="http://www.opengis.net/ogc">
    <NamedLayer>
        <Name>troncon_route</Name>
        <UserStyle>
            <Name>troncon_route</Name>

            <FeatureTypeStyle>
                <Rule>
                    <Name>Sans objet</Name>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>class_adm</ogc:PropertyName>
                                <ogc:Literal>Sans objet</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                            <ogc:PropertyIsNull>
                                <ogc:PropertyName>class_adm</ogc:PropertyName>
                            </ogc:PropertyIsNull>
                        </ogc:Or>
                    </ogc:Filter>
                    <MaxScaleDenominator>1000000</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#555555</CssParameter>
                            <CssParameter name="stroke-width">2.3</CssParameter>
                            <CssParameter name="stroke-linejoin">bevel</CssParameter>
                            <CssParameter name="stroke-linecap">round</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
            </FeatureTypeStyle>
            <FeatureTypeStyle>
                <Rule>
                    <Name>Sans objet (centre)</Name>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>class_adm</ogc:PropertyName>
                                <ogc:Literal>Sans objet</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                            <ogc:PropertyIsNull>
                                <ogc:PropertyName>class_adm</ogc:PropertyName>
                            </ogc:PropertyIsNull>
                        </ogc:Or>
                    </ogc:Filter>
                    <MaxScaleDenominator>1000000</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#ffffff</CssParameter>
                            <CssParameter name="stroke-width">1.5</CssParameter>
                            <CssParameter name="stroke-linejoin">bevel</CssParameter>
                            <CssParameter name="stroke-linecap">round</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
            </FeatureTypeStyle>

            <FeatureTypeStyle>
                <Rule>
                    <Name>Départementale</Name>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>class_adm</ogc:PropertyName>
                            <ogc:Literal>Départementale</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#ff7f00</CssParameter>
                            <CssParameter name="stroke-width">2.3</CssParameter>
                            <CssParameter name="stroke-linejoin">bevel</CssParameter>
                            <CssParameter name="stroke-linecap">round</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
            </FeatureTypeStyle>
            <FeatureTypeStyle>
                <Rule>
                    <Name>Départementale (centre)</Name>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>class_adm</ogc:PropertyName>
                            <ogc:Literal>Départementale</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <MinScaleDenominator>200000</MinScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#ffffff</CssParameter>
                            <CssParameter name="stroke-width">0.8</CssParameter>
                            <CssParameter name="stroke-linejoin">bevel</CssParameter>
                            <CssParameter name="stroke-linecap">round</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
            </FeatureTypeStyle>

            <FeatureTypeStyle>
                <Rule>
                    <Name>Nationale</Name>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>class_adm</ogc:PropertyName>
                            <ogc:Literal>Nationale</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#e31a1c</CssParameter>
                            <CssParameter name="stroke-width">2.3</CssParameter>
                            <CssParameter name="stroke-linejoin">bevel</CssParameter>
                            <CssParameter name="stroke-linecap">round</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
            </FeatureTypeStyle>
            <FeatureTypeStyle>
                <Rule>
                    <Name>Nationale (centre)</Name>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>class_adm</ogc:PropertyName>
                            <ogc:Literal>Nationale</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <MinScaleDenominator>200000</MinScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#ffffff</CssParameter>
                            <CssParameter name="stroke-width">0.8</CssParameter>
                            <CssParameter name="stroke-linejoin">bevel</CssParameter>
                            <CssParameter name="stroke-linecap">round</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
            </FeatureTypeStyle>

            <FeatureTypeStyle>
                <Rule>
                    <Name>Autoroute</Name>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>class_adm</ogc:PropertyName>
                            <ogc:Literal>Autoroute</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#1f78b4</CssParameter>
                            <CssParameter name="stroke-width">6.0</CssParameter>
                            <CssParameter name="stroke-linejoin">bevel</CssParameter>
                            <CssParameter name="stroke-linecap">round</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
            </FeatureTypeStyle>
            <FeatureTypeStyle>
                <Rule>
                    <Name>Autoroute (centre)</Name>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>class_adm</ogc:PropertyName>
                                <ogc:Literal>Autoroute</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#ffffff</CssParameter>
                            <CssParameter name="stroke-width">2.0</CssParameter>
                            <CssParameter name="stroke-linejoin">bevel</CssParameter>
                            <CssParameter name="stroke-linecap">round</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
            </FeatureTypeStyle>

            <FeatureTypeStyle>
                <Rule>
                    <Name>Sens de circulation</Name>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>sens</ogc:PropertyName>
                            <ogc:Literal>Sens unique</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <MaxScaleDenominator>50000</MaxScaleDenominator>
                    <TextSymbolizer>
                        <Label>
                            <ogc:Literal>&gt;</ogc:Literal>
                        </Label>
                        <Font>
                            <CssParameter name="font-size">14</CssParameter>
                        </Font>
                        <LabelPlacement>
                          <LinePlacement>
                              <PerpendicularOffset>-1</PerpendicularOffset>
                              <!-- position of "arrow" -->
                          </LinePlacement>
                      </LabelPlacement>
                        <Fill>
                            <CssParameter name="fill">#000000</CssParameter>
                        </Fill>
                        <VendorOption name="followLine">true</VendorOption>
                        <VendorOption name="repeat">150</VendorOption>
                        <VendorOption name="forceLeftToRight">false</VendorOption>
                    </TextSymbolizer>
                </Rule>
            </FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>
</StyledLayerDescriptor>