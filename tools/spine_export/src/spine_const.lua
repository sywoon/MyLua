
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


