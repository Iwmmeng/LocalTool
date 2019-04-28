.class public Lcom/rockrobo/opengl/util/Geometry$Point;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/opengl/util/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->x:F

    iput p2, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->y:F

    iput p3, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->z:F

    return-void
.end method


# virtual methods
.method public toFloatArray()[F
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->y:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->z:F

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(Lcom/rockrobo/opengl/util/Geometry$Vector;)Lcom/rockrobo/opengl/util/Geometry$Point;
    .locals 4

    new-instance v0, Lcom/rockrobo/opengl/util/Geometry$Point;

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->x:F

    iget v2, p1, Lcom/rockrobo/opengl/util/Geometry$Vector;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->y:F

    iget v3, p1, Lcom/rockrobo/opengl/util/Geometry$Vector;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->z:F

    iget p1, p1, Lcom/rockrobo/opengl/util/Geometry$Vector;->z:F

    add-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/rockrobo/opengl/util/Geometry$Point;-><init>(FFF)V

    return-object v0
.end method

.method public translateY(F)Lcom/rockrobo/opengl/util/Geometry$Point;
    .locals 3

    new-instance v0, Lcom/rockrobo/opengl/util/Geometry$Point;

    iget v1, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->x:F

    iget v2, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->y:F

    add-float/2addr v2, p1

    iget p1, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->z:F

    invoke-direct {v0, v1, v2, p1}, Lcom/rockrobo/opengl/util/Geometry$Point;-><init>(FFF)V

    return-object v0
.end method
