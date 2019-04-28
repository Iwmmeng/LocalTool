.class public Lcom/rockrobo/opengl/util/Geometry$Vector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/opengl/util/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vector"
.end annotation


# instance fields
.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->x:F

    iput p2, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->y:F

    iput p3, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->z:F

    return-void
.end method


# virtual methods
.method public crossProduct(Lcom/rockrobo/opengl/util/Geometry$Vector;)Lcom/rockrobo/opengl/util/Geometry$Vector;
    .locals 5

    new-instance v0, Lcom/rockrobo/opengl/util/Geometry$Vector;

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->y:F

    iget v2, p1, Lcom/rockrobo/opengl/util/Geometry$Vector;->z:F

    mul-float v1, v1, v2

    iget v2, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->z:F

    iget v3, p1, Lcom/rockrobo/opengl/util/Geometry$Vector;->y:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->z:F

    iget v3, p1, Lcom/rockrobo/opengl/util/Geometry$Vector;->x:F

    mul-float v2, v2, v3

    iget v3, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->x:F

    iget v4, p1, Lcom/rockrobo/opengl/util/Geometry$Vector;->z:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->x:F

    iget v4, p1, Lcom/rockrobo/opengl/util/Geometry$Vector;->y:F

    mul-float v3, v3, v4

    iget v4, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->y:F

    iget p1, p1, Lcom/rockrobo/opengl/util/Geometry$Vector;->x:F

    mul-float v4, v4, p1

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/rockrobo/opengl/util/Geometry$Vector;-><init>(FFF)V

    return-object v0
.end method

.method public dotProduct(Lcom/rockrobo/opengl/util/Geometry$Vector;)F
    .locals 3

    iget v0, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->x:F

    iget v1, p1, Lcom/rockrobo/opengl/util/Geometry$Vector;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->y:F

    iget v2, p1, Lcom/rockrobo/opengl/util/Geometry$Vector;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->z:F

    iget p1, p1, Lcom/rockrobo/opengl/util/Geometry$Vector;->z:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public length()F
    .locals 3

    iget v0, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->x:F

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->y:F

    iget v2, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->z:F

    iget v2, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->z:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public scale(F)Lcom/rockrobo/opengl/util/Geometry$Vector;
    .locals 4

    new-instance v0, Lcom/rockrobo/opengl/util/Geometry$Vector;

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->x:F

    mul-float v1, v1, p1

    iget v2, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->y:F

    mul-float v2, v2, p1

    iget v3, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->z:F

    mul-float v3, v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/rockrobo/opengl/util/Geometry$Vector;-><init>(FFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vector{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Vector;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
