.class public Lcom/rockrobo/clean/RankList;
.super Ljava/lang/Object;


# static fields
.field public static final IDX_POINT:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final percents:[D

.field private static final squares:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/clean/RankList;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/clean/RankList;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0xe4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/rockrobo/clean/RankList;->squares:[I

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/rockrobo/clean/RankList;->percents:[D

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7c
        0x7d
        0x7e
        0x7f
        0x80
        0x81
        0x82
        0x83
        0x84
        0x85
        0x86
        0x87
        0x88
        0x89
        0x8a
        0x8b
        0x8c
        0x8d
        0x8e
        0x8f
        0x90
        0x91
        0x92
        0x93
        0x94
        0x95
        0x96
        0x97
        0x98
        0x99
        0x9a
        0x9b
        0x9c
        0x9e
        0xa0
        0xa1
        0xa2
        0xa3
        0xa4
        0xa5
        0xa6
        0xa7
        0xa8
        0xa9
        0xaa
        0xab
        0xac
        0xad
        0xae
        0xb0
        0xb1
        0xb2
        0xb3
        0xb4
        0xb5
        0xb6
        0xb7
        0xb8
        0xb9
        0xbb
        0xbc
        0xbe
        0xbf
        0xc2
        0xc3
        0xc4
        0xc6
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0xcf
        0xd0
        0xd3
        0xd4
        0xd5
        0xdc
        0xe0
        0xe1
        0xe3
        0xe4
        0xe5
        0xe8
        0xe9
        0xec
        0xf2
        0xf5
        0xf7
        0xf9
        0xfa
        0xff
        0x100
        0x104
        0x105
        0x10b
        0x10f
        0x123
        0x128
        0x131
        0x143
        0x195
        0x197
        0x1ba
        0x1de
    .end array-data

    :array_1
    .array-data 8
        0x3fd999999999999aL    # 0.4
        0x3fe1eb851eb851ecL    # 0.56
        0x3fe5c28f5c28f5c3L    # 0.68
        0x3fe999999999999aL    # 0.8
        0x3fee147ae147ae14L    # 0.94
        0x3ff2147ae147ae14L    # 1.13
        0x3ff6666666666666L    # 1.4
        0x3ffb5c28f5c28f5cL    # 1.71
        0x400051eb851eb852L    # 2.04
        0x4004000000000000L    # 2.5
        0x4007ae147ae147aeL    # 2.96
        0x400b99999999999aL    # 3.45
        0x400fd70a3d70a3d7L    # 3.98
        0x4011e147ae147ae1L    # 4.47
        0x4014a3d70a3d70a4L    # 5.16
        0x401747ae147ae148L    # 5.82
        0x4019d70a3d70a3d7L    # 6.46
        0x401c851eb851eb85L    # 7.13
        0x401f5c28f5c28f5cL    # 7.84
        0x4021428f5c28f5c3L    # 8.63
        0x4023000000000000L    # 9.5
        0x4024c28f5c28f5c3L    # 10.38
        0x4026851eb851eb85L    # 11.26
        0x40289eb851eb851fL    # 12.31
        0x402aa8f5c28f5c29L    # 13.33
        0x402d428f5c28f5c3L    # 14.63
        0x402fb851eb851eb8L    # 15.86
        0x403119999999999aL    # 17.1
        0x40327851eb851eb8L    # 18.47
        0x4033e8f5c28f5c29L    # 19.91
        0x40355c28f5c28f5cL    # 21.36
        0x4036e3d70a3d70a4L    # 22.89
        0x403870a3d70a3d71L    # 24.44
        0x403a1c28f5c28f5cL    # 26.11
        0x403be8f5c28f5c29L    # 27.91
        0x403dc00000000000L    # 29.75
        0x403f9c28f5c28f5cL    # 31.61
        0x4040b33333333333L    # 33.4
        0x4041ab851eb851ecL    # 35.34
        0x4042a8f5c28f5c29L    # 37.32
        0x4043a8f5c28f5c29L    # 39.32
        0x40449c28f5c28f5cL    # 41.22
        0x40457ae147ae147bL    # 42.96
        0x4046651eb851eb85L    # 44.79
        0x404751eb851eb852L    # 46.64
        0x40484a3d70a3d70aL    # 48.58
        0x404930a3d70a3d71L    # 50.38
        0x404a147ae147ae14L    # 52.16
        0x404afae147ae147bL    # 53.96
        0x404bdae147ae147bL    # 55.71
        0x404cab851eb851ecL    # 57.34
        0x404d7ae147ae147bL    # 58.96
        0x404e547ae147ae14L    # 60.66
        0x404f30a3d70a3d71L    # 62.38
        0x404ff70a3d70a3d7L    # 63.93
        0x405060a3d70a3d71L    # 65.51
        0x4050c00000000000L    # 67.0
        0x40511f5c28f5c28fL    # 68.49
        0x40517a3d70a3d70aL    # 69.91
        0x4051d33333333333L    # 71.3
        0x40522851eb851eb8L    # 72.63
        0x40527f5c28f5c28fL    # 73.99
        0x4052d5c28f5c28f6L    # 75.34
        0x4053251eb851eb85L    # 76.58
        0x405371eb851eb852L    # 77.78
        0x4053c28f5c28f5c3L    # 79.04
        0x4054047ae147ae14L    # 80.07
        0x405447ae147ae148L    # 81.12
        0x4054847ae147ae14L    # 82.07
        0x4054c7ae147ae148L    # 83.12
        0x4055051eb851eb85L    # 84.08
        0x40553f5c28f5c28fL    # 84.99
        0x4055747ae147ae14L    # 85.82
        0x4055a28f5c28f5c3L    # 86.54
        0x4055d147ae147ae1L    # 87.27
        0x4055fb851eb851ecL    # 87.93
        0x40562a3d70a3d70aL    # 88.66
        0x405650a3d70a3d71L    # 89.26
        0x405677ae147ae148L    # 89.87
        0x40569ae147ae147bL    # 90.42
        0x4056bae147ae147bL    # 90.92
        0x4056dccccccccccdL    # 91.45
        0x4056fa3d70a3d70aL    # 91.91
        0x405715c28f5c28f6L    # 92.34
        0x4057300000000000L    # 92.75
        0x40574851eb851eb8L    # 93.13
        0x40576147ae147ae1L    # 93.52
        0x405778f5c28f5c29L    # 93.89
        0x40578d70a3d70a3dL    # 94.21
        0x4057a00000000000L    # 94.5
        0x4057b33333333333L    # 94.8
        0x4057c47ae147ae14L    # 95.07
        0x4057d7ae147ae148L    # 95.37
        0x4057e66666666666L    # 95.6
        0x4057f851eb851eb8L    # 95.88
        0x4058070a3d70a3d7L    # 96.11
        0x4058147ae147ae14L    # 96.32
        0x4058200000000000L    # 96.5
        0x40582b851eb851ecL    # 96.68
        0x40583851eb851eb8L    # 96.88
        0x4058428f5c28f5c3L    # 97.04
        0x40584b851eb851ecL    # 97.18
        0x4058547ae147ae14L    # 97.32
        0x40585f5c28f5c28fL    # 97.49
        0x40586851eb851eb8L    # 97.63
        0x40586f5c28f5c28fL    # 97.74
        0x4058770a3d70a3d7L    # 97.86
        0x40587e147ae147aeL    # 97.97
        0x4058833333333333L    # 98.05
        0x405888f5c28f5c29L    # 98.14
        0x40588e147ae147aeL    # 98.22
        0x4058928f5c28f5c3L    # 98.29
        0x405895c28f5c28f6L    # 98.34
        0x40589b851eb851ecL    # 98.43
        0x4058a0a3d70a3d71L    # 98.51
        0x4058a5c28f5c28f6L    # 98.59
        0x4058a9999999999aL    # 98.65
        0x4058accccccccccdL    # 98.7
        0x4058aeb851eb851fL    # 98.73
        0x4058b1eb851eb852L    # 98.78
        0x4058b51eb851eb85L    # 98.83
        0x4058b70a3d70a3d7L    # 98.86
        0x4058bae147ae147bL    # 98.92
        0x4058be147ae147aeL    # 98.97
        0x4058c0a3d70a3d71L    # 99.01
        0x4058c33333333333L    # 99.05
        0x4058c51eb851eb85L    # 99.08
        0x4058c7ae147ae148L    # 99.12
        0x4058c8f5c28f5c29L    # 99.14
        0x4058cb851eb851ecL    # 99.18
        0x4058cccccccccccdL    # 99.2
        0x4058ceb851eb851fL    # 99.23
        0x4058d00000000000L    # 99.25
        0x4058d147ae147ae1L    # 99.27
        0x4058d28f5c28f5c3L    # 99.29
        0x4058d3d70a3d70a4L    # 99.31
        0x4058d47ae147ae14L    # 99.32
        0x4058d5c28f5c28f6L    # 99.34
        0x4058d7ae147ae148L    # 99.37
        0x4058d851eb851eb8L    # 99.38
        0x4058d9999999999aL    # 99.4
        0x4058dae147ae147bL    # 99.42
        0x4058dc28f5c28f5cL    # 99.44
        0x4058dd70a3d70a3dL    # 99.46
        0x4058deb851eb851fL    # 99.48
        0x4058df5c28f5c28fL    # 99.49
        0x4058e00000000000L    # 99.5
        0x4058e0a3d70a3d71L    # 99.51
        0x4058e147ae147ae1L    # 99.52
        0x4058e28f5c28f5c3L    # 99.54
        0x4058e28f5c28f5c3L    # 99.54
        0x4058e3d70a3d70a4L    # 99.56
        0x4058e47ae147ae14L    # 99.57
        0x4058e51eb851eb85L    # 99.58
        0x4058e66666666666L    # 99.6
        0x4058e7ae147ae148L    # 99.62
        0x4058e7ae147ae148L    # 99.62
        0x4058e851eb851eb8L    # 99.63
        0x4058e9999999999aL    # 99.65
        0x4058e9999999999aL    # 99.65
        0x4058ea3d70a3d70aL    # 99.66
        0x4058eae147ae147bL    # 99.67
        0x4058eb851eb851ecL    # 99.68
        0x4058eb851eb851ecL    # 99.68
        0x4058eccccccccccdL    # 99.7
        0x4058ed70a3d70a3dL    # 99.71
        0x4058eeb851eb851fL    # 99.73
        0x4058eeb851eb851fL    # 99.73
        0x4058ef5c28f5c28fL    # 99.74
        0x4058f00000000000L    # 99.75
        0x4058f0a3d70a3d71L    # 99.76
        0x4058f0a3d70a3d71L    # 99.76
        0x4058f147ae147ae1L    # 99.77
        0x4058f1eb851eb852L    # 99.78
        0x4058f1eb851eb852L    # 99.78
        0x4058f28f5c28f5c3L    # 99.79
        0x4058f28f5c28f5c3L    # 99.79
        0x4058f33333333333L    # 99.8
        0x4058f33333333333L    # 99.8
        0x4058f3d70a3d70a4L    # 99.81
        0x4058f3d70a3d70a4L    # 99.81
        0x4058f47ae147ae14L    # 99.82
        0x4058f47ae147ae14L    # 99.82
        0x4058f51eb851eb85L    # 99.83
        0x4058f51eb851eb85L    # 99.83
        0x4058f5c28f5c28f6L    # 99.84
        0x4058f5c28f5c28f6L    # 99.84
        0x4058f5c28f5c28f6L    # 99.84
        0x4058f70a3d70a3d7L    # 99.86
        0x4058f70a3d70a3d7L    # 99.86
        0x4058f7ae147ae148L    # 99.87
        0x4058f7ae147ae148L    # 99.87
        0x4058f851eb851eb8L    # 99.88
        0x4058f851eb851eb8L    # 99.88
        0x4058f851eb851eb8L    # 99.88
        0x4058f8f5c28f5c29L    # 99.89
        0x4058f8f5c28f5c29L    # 99.89
        0x4058f9999999999aL    # 99.9
        0x4058f9999999999aL    # 99.9
        0x4058f9999999999aL    # 99.9
        0x4058fa3d70a3d70aL    # 99.91
        0x4058fa3d70a3d70aL    # 99.91
        0x4058fae147ae147bL    # 99.92
        0x4058fae147ae147bL    # 99.92
        0x4058fae147ae147bL    # 99.92
        0x4058fb851eb851ecL    # 99.93
        0x4058fb851eb851ecL    # 99.93
        0x4058fb851eb851ecL    # 99.93
        0x4058fc28f5c28f5cL    # 99.94
        0x4058fc28f5c28f5cL    # 99.94
        0x4058fccccccccccdL    # 99.95
        0x4058fccccccccccdL    # 99.95
        0x4058fccccccccccdL    # 99.95
        0x4058fd70a3d70a3dL    # 99.96
        0x4058fd70a3d70a3dL    # 99.96
        0x4058fd70a3d70a3dL    # 99.96
        0x4058fe147ae147aeL    # 99.97
        0x4058fe147ae147aeL    # 99.97
        0x4058fe147ae147aeL    # 99.97
        0x4058fe147ae147aeL    # 99.97
        0x4058feb851eb851fL    # 99.98
        0x4058feb851eb851fL    # 99.98
        0x4058feb851eb851fL    # 99.98
        0x4058ff5c28f5c28fL    # 99.99
        0x4058ff5c28f5c28fL    # 99.99
        0x4058ff5c28f5c28fL    # 99.99
        0x4058ff5c28f5c28fL    # 99.99
        0x4059000000000000L    # 100.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRank(I)D
    .locals 6

    sget-object v0, Lcom/rockrobo/clean/RankList;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "square to be found:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sget-object v0, Lcom/rockrobo/clean/RankList;->squares:[I

    sget-object v1, Lcom/rockrobo/clean/RankList;->squares:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-le p0, v0, :cond_1

    return-wide v1

    :cond_1
    sget-object v0, Lcom/rockrobo/clean/RankList;->squares:[I

    const/4 v3, 0x0

    sget-object v4, Lcom/rockrobo/clean/RankList;->squares:[I

    array-length v4, v4

    invoke-static {v0, v3, v4, p0}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    sget-object v3, Lcom/rockrobo/clean/RankList;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "area:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",binary search idx:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_2

    neg-int p0, v0

    add-int/lit8 v0, p0, -0x1

    :cond_2
    sget-object p0, Lcom/rockrobo/clean/RankList;->percents:[D

    array-length p0, p0

    if-lt v0, p0, :cond_3

    sget-object p0, Lcom/rockrobo/clean/RankList;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percents length:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/rockrobo/clean/RankList;->percents:[D

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_3
    sget-object p0, Lcom/rockrobo/clean/RankList;->percents:[D

    aget-wide v0, p0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getRankIndex(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/rockrobo/clean/RankList;->getRankPercent(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/clean/RankList;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clean area:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", rank:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    if-gez v2, :cond_1

    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    goto :goto_1

    :cond_0
    const/16 v2, 0xa

    :cond_1
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/rockrobo/clean/RankList;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getRankPercent(I)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/rockrobo/clean/RankList;->getRank(I)D

    move-result-wide v0

    sget-object v2, Lcom/rockrobo/clean/RankList;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clean area:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", rank:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

    const-string p0, "0%"

    return-object p0

    :cond_0
    const-wide v2, 0x3fefef9db22d0e56L    # 0.998

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_1

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "99.9%"

    return-object p0
.end method
