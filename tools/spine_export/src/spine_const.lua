
BlendMode = {
    Normal = 0,
    Additive = 1,
    Multiply = 2,
    Screen = 3
}

AttachmentType = {
    Region = 0,
    BoundingBox = 1,
    Mesh = 2,
    LinkedMesh = 3,
    Path = 4,
    Point = 5,
    Clipping = 6,
}


TextureFilter = {
    Nearest = 9728, -- WebGLRenderingContext.NEAREST
    Linear = 9729, -- WebGLRenderingContext.LINEAR
    MipMap = 9987, -- WebGLRenderingContext.LINEAR_MIPMAP_LINEAR
    MipMapNearestNearest = 9984, -- WebGLRenderingContext.NEAREST_MIPMAP_NEAREST
    MipMapLinearNearest = 9985, -- WebGLRenderingContext.LINEAR_MIPMAP_NEAREST
    MipMapNearestLinear = 9986, -- WebGLRenderingContext.NEAREST_MIPMAP_LINEAR
    MipMapLinearLinear = 9987 -- WebGLRenderingContext.LINEAR_MIPMAP_LINEAR
}

TextureWrap = {
    MirroredRepeat = 33648, -- WebGLRenderingContext.MIRRORED_REPEAT
    ClampToEdge = 33071, -- WebGLRenderingContext.CLAMP_TO_EDGE
    Repeat = 10497 -- WebGLRenderingContext.REPEAT
}

TextureWrapName = {
    [TextureWrap.MirroredRepeat] = "MirroredRepeat",
    [TextureWrap.ClampToEdge] = "ClampToEdge",
    [TextureWrap.Repeat] = "Repeat",
}

RegionType = {
    Texture,
    TextureAtlas,
}

SlotType = {
    ATTACHMENT = 0,
    COLOR = 1,
    TWO_COLOR = 2
}

BoneType = {
    BONE_ROTATE = 0,
    BONE_TRANSLATE = 1,
    BONE_SCALE = 2,
    BONE_SHEAR = 3,
}

PathType = {
    PATH_POSITION = 0,
    PATH_SPACING = 1,
    PATH_MIX = 2,
}

CurveType = {
    CURVE_LINEAR = 0,
    CURVE_STEPPED = 1,
    CURVE_BEZIER = 2,
}


MixBlend = {
    setup = 0,
    first = 1,
    replace = 2,
    add = 3,
}
		
MixDirection = {
    mixIn = 0,
    mixOut = 0,
}

TimelineType = {
    rotate = 0, 
    translate = 1, 
    scale = 2, 
    shear = 3,
    attachment = 4, 
    color = 5, 
    deform = 6,
    event = 7, 
    drawOrder = 8,
    ikConstraint = 9, 
    transformConstraint = 10,
    pathConstraintPosition = 11, 
    pathConstraintSpacing = 12, 
    pathConstraintMix = 13,
    twoColor = 14,
}



