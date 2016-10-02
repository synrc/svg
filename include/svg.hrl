-ifndef(SVG_HRL).
-define(SVG_HRL, true).

-include_lib("nitro/include/nitro.hrl").

% SVG attribute groups
-define(SVG_ANIMATION_EVENT, onbegin, onend, onload_animation, onrepeat).
-define(SVG_ANIMATION_ATTRIBUT_TARGET, attributeType, attributeName).
-define(SVG_ANIMATION_TIMING, svgbegin, dur, svgend, min, max, restart, repeatCount, repeatDur, fill).
-define(SVG_ANIMATION_VALUE, calcMode, values, keyTimes, keySplines, from, to, by, autoReverse, accelerate, decelerate).
-define(SVG_ANIMATION_ADDITION, additive, accumulate).
-define(SVG_CONDITIONAL_PROCESSING, requiredExtensions, requiredFeatures, systemLanguage).
-define(SVG_CORE, xmlbase, xmllang, xmlspace).
-define(SVG_DOCUMENT_EVENT, onabort, onscroll, onunload_document, onzoom).  %% onerror and onresize, duplicating HTML events, were removed.
-define(SVG_FILTER_PRIMITIVE, height, result, width, x, y).
-define(SVG_GRAPHICAL_EVENT, onactivate, onfocusin, onfocusout, onload_graphical, onmousedown, onmousemove, onmouseout, onmouseup). %% onclick and onmouseover, duplicating HTML events, were removed.
-define(SVG_PRESENTATION, alignment_baseline, baseline_shift, clip, clip_path, clip_rule, color, color_interpolation, color_interpolation_filters, color_profile, color_rendering, cursor,
		direction, display, dominant_baseline, enable_background, fill, fill_opacity, fill_rule, filter, flood_color, flood_opacity, font_family, font_size, font_size_adjust, font_stretch,
		font_style, font_variant, font_weight, glyph_orientation_horizontal, glyph_orientation_vertical, image_rendering, kerning, letter_spacing, lighting_color, marker_end, marker_mid,
		marker_start, mask, opacity, overflow, pointer_events, shape_rendering, stop_color, stop_opacity, stroke, stroke_dasharray, stroke_dashoffset, stroke_linecap, stroke_linejoin,
		stroke_miterlimit, stroke_opacity, stroke_width, text_anchor, text_decoration, text_rendering, unicode_bidi, visibility, word_spacing, writing_mode).
-define(SVG_TRANSFERT_FUNCTION, type, tableValues, slope, intercept, amplitude, exponent, offset).
-define(SVG_XLINK, xlinkhref, xlinktype, xlinkrole, xlinkarcrole, xlinktitle, xlinkshow, xlinkactuate).


% SVG
-record(svg, {?ELEMENT_BASE(element_svg), version="1.1", baseProfile="full", xmlns="http://www.w3.org/2000/svg", xmlnsxlink="http://www.w3.org/1999/xlink", xmlnsev="http://www.w3.org/2001/xml-events", preserveAspectRatio, contentScriptType, contentStyleType, viewBox, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_DOCUMENT_EVENT, ?SVG_FILTER_PRIMITIVE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION, ?SVG_TRANSFERT_FUNCTION, ?SVG_XLINK}).
-record(altGlyph, {?ELEMENT_BASE(element_altglyph), x, y, dx, dy, rotate, glyphRef, format, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION, ?SVG_XLINK}).
-record(altGlyphDef, {?ELEMENT_BASE(element_altglyphdef), ?SVG_CORE}).
-record(altGlyphItem, {?ELEMENT_BASE(element_altglyphitem), ?SVG_CORE}).
-record(animate, {?ELEMENT_BASE(element_animate), externalResourcesRequired, ?SVG_ANIMATION_EVENT, ?SVG_ANIMATION_ATTRIBUT_TARGET, ?SVG_ANIMATION_TIMING, ?SVG_ANIMATION_VALUE, ?SVG_ANIMATION_ADDITION, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_XLINK}).
-record(animateMotion, {?ELEMENT_BASE(element_animatemotion), path, keyPoints, rotate, origin, externalResourcesRequired, ?SVG_ANIMATION_EVENT, ?SVG_ANIMATION_TIMING, ?SVG_ANIMATION_VALUE, ?SVG_ANIMATION_ADDITION,  ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_XLINK}).
-record(animateTransform, {?ELEMENT_BASE(element_animatetransform), type, externalResourcesRequired, ?SVG_ANIMATION_EVENT, ?SVG_ANIMATION_ATTRIBUT_TARGET, ?SVG_ANIMATION_TIMING, ?SVG_ANIMATION_VALUE, ?SVG_ANIMATION_ADDITION, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_XLINK}).
-record(circle, {?ELEMENT_BASE(element_circle), cx, cy, r, transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(clipPath, {?ELEMENT_BASE(element_clippath), clipPathUnits, transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_PRESENTATION}).
-record(color_profile, {?ELEMENT_BASE(element_colorprofile), local, name, rendering_intent, ?SVG_CORE, ?SVG_XLINK}).
-record(cursor, {?ELEMENT_BASE(element_cursor), x, y, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_XLINK}).
-record(defs, {?ELEMENT_BASE(element_defs), transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(desc, {?ELEMENT_BASE(element_desc), ?SVG_CORE}).
-record(ellipse, {?ELEMENT_BASE(element_ellipse), cx, cy, rx, ry, transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(feBlend, {?ELEMENT_BASE(element_feblend), in, in2, mode, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(feColorMatrix, {?ELEMENT_BASE(element_fecolormatrix), in, type, mode, values, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(feComponentTransfer, {?ELEMENT_BASE(element_fecomponenttransfer), in, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(feComposite, {?ELEMENT_BASE(element_fecomposite), in, in2, operator, k1, k2, k3, k4, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(feConvolveMatrix, {?ELEMENT_BASE(element_feconvolvematrix), in, order, kernelMatrix, divisor, bias, targetX, targetY, edgeMode, kernelUnitLength, preserveAlpha, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(feDiffuseLighting, {?ELEMENT_BASE(element_fediffuselighting), in, surfaceScale, diffuseConstant, kernelUnitLength, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(feDisplacementMap, {?ELEMENT_BASE(element_fedisplacementmap), in, in2, scale, xChannelSelector, yChannelSelector, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(feDistantLight, {?ELEMENT_BASE(element_fedistantlight), azimuth, elevation, ?SVG_CORE}).
-record(feFlood, {?ELEMENT_BASE(element_feflood), ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(feFuncA, {?ELEMENT_BASE(element_fefunca), ?SVG_CORE, ?SVG_TRANSFERT_FUNCTION}).
-record(feFuncB, {?ELEMENT_BASE(element_fefuncb), ?SVG_CORE, ?SVG_TRANSFERT_FUNCTION}).
-record(feFuncG, {?ELEMENT_BASE(element_fefuncg), ?SVG_CORE, ?SVG_TRANSFERT_FUNCTION}).
-record(feFuncR, {?ELEMENT_BASE(element_fefuncr), ?SVG_CORE, ?SVG_TRANSFERT_FUNCTION}).
-record(feGaussianBlur, {?ELEMENT_BASE(element_fegaussianblur), in, stdDeviation, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(feImage, {?ELEMENT_BASE(element_feimage), preserveAspectRatio, externalResourcesRequired, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION, ?SVG_XLINK}).
-record(feMerge, {?ELEMENT_BASE(element_femerge), ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(feMergeNode, {?ELEMENT_BASE(element_femergenode), in, ?SVG_CORE}).
-record(feMorphology, {?ELEMENT_BASE(element_femorphology), in, operator, radius, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(feOffset, {?ELEMENT_BASE(element_feoffset), in, dx, dy, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(fePointLight, {?ELEMENT_BASE(element_fepointlight), x, y, z, ?SVG_CORE}).
-record(feSpecularLighting, {?ELEMENT_BASE(element_fespecularlighting), in, surfaceScale, specularConstant, specularExponent, kernelUnitLength, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(feSpotLight, {?ELEMENT_BASE(element_fespotlight), x, y, z, pointsAtX, pointsAtY, pointsAtZ, specularExponent, limitingConeAngle, ?SVG_CORE}).
-record(feTile, {?ELEMENT_BASE(element_fetile), in, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(feTurbulence, {?ELEMENT_BASE(element_feturbulence), baseFrequency, numOctaves, seed, stitchTiles, type, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_PRESENTATION}).
-record(filter, {?ELEMENT_BASE(element_filter), x, y, width, height, filterRes, filterUnits, primitiveUnits, externalResourcesRequired, ?SVG_CORE, ?SVG_PRESENTATION, ?SVG_XLINK}).
-record(font, {?ELEMENT_BASE(element_font), horiz_origin_x, horiz_origin_y, horiz_adv_x, vert_origin_x, vert_origin_y, vert_adv_y, externalResourcesRequired, ?SVG_CORE, ?SVG_PRESENTATION}).
-record(font_face, {?ELEMENT_BASE(element_fontface), font_family, font_style, font_variant, font_weight, font_stretch, font_size, unicode_range, units_per_em, panose_1, stemv, stemh, slope, cap_height, x_height, accent_height, ascent, descent, widths, bbox, ideographic, alphabetic, mathematical, hanging, v_ideographic, v_alphabetic, v_mathematical, v_hanging, underline_position, underline_thickness, strikethrough_position, strikethrough_thickness, overline_position, overline_thickness, ?SVG_CORE}).
-record(font_face_format, {?ELEMENT_BASE(element_fontfaceformat), string, ?SVG_CORE}).
-record(font_face_name, {?ELEMENT_BASE(element_fontfacename), name, ?SVG_CORE}).
-record(font_face_src, {?ELEMENT_BASE(element_fontfacesrc), ?SVG_CORE}).
-record(font_face_uri, {?ELEMENT_BASE(element_fontfaceuri), ?SVG_CORE, ?SVG_XLINK}).
-record(foreignObject, {?ELEMENT_BASE(element_foreignobject), x, y, width, height, transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(g, {?ELEMENT_BASE(element_g), transform, externalResourcesRequired,  ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(glyph, {?ELEMENT_BASE(element_glyph), d, horiz_adv_x, vert_origin_x, vert_origin_y, vert_adv_y, unicode, glyph_name, orientation, arabic_form, ?SVG_CORE, ?SVG_PRESENTATION}).
-record(glyphRef, {?ELEMENT_BASE(element_glyphref), x, y, dx, dy, glyphRef, format, ?SVG_CORE, ?SVG_PRESENTATION, ?SVG_XLINK}).
-record(hkern, {?ELEMENT_BASE(element_hkern), u1, g1, u2, g2, k, ?SVG_CORE}).
-record(svgimage, {?ELEMENT_BASE(element_svgimage), x, y, width, height, preserveAspectRatio, transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION, ?SVG_XLINK}).
-record(line, {?ELEMENT_BASE(element_line), x1, y1, x2, y2, transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(linearGradient, {?ELEMENT_BASE(element_lineargradient), gradientUnits, gradientTransform, x1, y1, x2, y2, spreadMethod, externalResourcesRequired, ?SVG_CORE, ?SVG_PRESENTATION, ?SVG_XLINK}).
-record(xlink, {?ELEMENT_BASE(element_xlink), target, transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_FILTER_PRIMITIVE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION, ?SVG_TRANSFERT_FUNCTION, ?SVG_XLINK}).
-record(marker, {?ELEMENT_BASE(element_marker), markerUnits, refX, refY, markerWidth, markerHeight, orient, viewBox, preserveAspectRatio, transform, externalResourcesRequired, ?SVG_CORE, ?SVG_PRESENTATION}).
-record(mask, {?ELEMENT_BASE(element_mask), maskUnits, maskContentUnits, x, y, width, height, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_PRESENTATION}).
-record(metadata, {?ELEMENT_BASE(element_metadata), ?SVG_CORE}).
-record(missing_glyph, {?ELEMENT_BASE(element_missingglyph), d, horiz_adv_x, vert_origin_x, vert_origin_y, vert_adv_y, ?SVG_CORE, ?SVG_PRESENTATION}).
-record(mpath, {?ELEMENT_BASE(element_mpath), externalResourcesRequired, ?SVG_CORE, ?SVG_XLINK}).
-record(path, {?ELEMENT_BASE(element_path), d, pathLength, transform, externalResourcesRequired,  ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(pattern, {?ELEMENT_BASE(element_pattern), patternUnits, patternContentUnits, patternTransform, x, y, width, height, preserveAspectRatio, viewBox, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_PRESENTATION, ?SVG_XLINK}).
-record(polygon, {?ELEMENT_BASE(element_polygon), points, transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(polyline, {?ELEMENT_BASE(element_polyline), points, transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(radialGradient, {?ELEMENT_BASE(element_radialgradient), gradientUnits, gradientTransform, cx, cy, r, fx, fy, spreadMethod, externalResourcesRequired, ?SVG_CORE, ?SVG_PRESENTATION, ?SVG_XLINK}).
-record(rect, {?ELEMENT_BASE(element_rect), x, y, width, height, rx, ry, transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(svgscript, {?ELEMENT_BASE(element_svgscript), type, externalResourcesRequired, ?SVG_CORE, ?SVG_XLINK}).
-record(set, {?ELEMENT_BASE(element_set), to, externalResourcesRequired, ?SVG_ANIMATION_EVENT, ?SVG_ANIMATION_ATTRIBUT_TARGET, ?SVG_ANIMATION_TIMING, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_XLINK}).
-record(stop, {?ELEMENT_BASE(element_stop), offset, ?SVG_CORE, ?SVG_PRESENTATION}).
-record(svgstyle, {?ELEMENT_BASE(element_svgstyle), type, media, ?SVG_CORE, ?SVG_XLINK}).
-record(switch, {?ELEMENT_BASE(element_switch), allowReorderm, transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(symbol, {?ELEMENT_BASE(element_symbol), preserveAspectRatio, viewBox, externalResourcesRequired, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(text, {?ELEMENT_BASE(element_text), x, y, dx, dy, rotate, textLength, lengthAdjust, transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(textPath, {?ELEMENT_BASE(element_textpath), startOffset, method, spacing, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION, ?SVG_XLINK}).
-record(svgtitle, {?ELEMENT_BASE(element_svgtitle), ?SVG_CORE}).
-record(tref, {?ELEMENT_BASE(element_tref), externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION, ?SVG_XLINK}).
-record(tspan, {?ELEMENT_BASE(element_tspan), x, y, dx, dy, rotate, textLength, lengthAdjust, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION}).
-record(use, {?ELEMENT_BASE(element_use), x, y, width, height, transform, externalResourcesRequired, ?SVG_CONDITIONAL_PROCESSING, ?SVG_CORE, ?SVG_GRAPHICAL_EVENT, ?SVG_PRESENTATION, ?SVG_XLINK}).
-record(view, {?ELEMENT_BASE(element_view), viewBox, preserveAspectRatio, zoomAndPan, viewTarget, externalResourcesRequired, ?SVG_CORE}).
-record(vkern, {?ELEMENT_BASE(element_vkern), u1, g1, u2, g2, k, ?SVG_CORE}).

-endif.
