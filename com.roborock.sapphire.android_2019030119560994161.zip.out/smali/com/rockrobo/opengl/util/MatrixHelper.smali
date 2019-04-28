.class public Lcom/rockrobo/opengl/util/MatrixHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static perspectiveM([FFFFF)V
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float p1, v2

    div-float p2, p1, p2

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x0

    const/4 v0, 0x1

    aput p2, p0, v0

    const/4 v0, 0x2

    aput p2, p0, v0

    const/4 v0, 0x3

    aput p2, p0, v0

    const/4 v0, 0x4

    aput p2, p0, v0

    const/4 v0, 0x5

    aput p1, p0, v0

    const/4 p1, 0x6

    aput p2, p0, p1

    const/4 p1, 0x7

    aput p2, p0, p1

    const/16 p1, 0x8

    aput p2, p0, p1

    const/16 p1, 0x9

    aput p2, p0, p1

    add-float p1, p4, p3

    sub-float v0, p4, p3

    div-float/2addr p1, v0

    neg-float p1, p1

    const/16 v1, 0xa

    aput p1, p0, v1

    const/16 p1, 0xb

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, p0, p1

    const/16 p1, 0xc

    aput p2, p0, p1

    const/16 p1, 0xd

    aput p2, p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p4, p4, p1

    mul-float p4, p4, p3

    div-float/2addr p4, v0

    neg-float p1, p4

    const/16 p3, 0xe

    aput p1, p0, p3

    const/16 p1, 0xf

    aput p2, p0, p1

    return-void
.end method
