.class public Lcom/rockrobo/opengl/util/Geometry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/opengl/util/Geometry$Plane;,
        Lcom/rockrobo/opengl/util/Geometry$Sphere;,
        Lcom/rockrobo/opengl/util/Geometry$Cylinder;,
        Lcom/rockrobo/opengl/util/Geometry$Circle;,
        Lcom/rockrobo/opengl/util/Geometry$Ray;,
        Lcom/rockrobo/opengl/util/Geometry$Vector;,
        Lcom/rockrobo/opengl/util/Geometry$Point;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distanceBetween(Lcom/rockrobo/opengl/util/Geometry$Point;Lcom/rockrobo/opengl/util/Geometry$Ray;)F
    .locals 3

    iget-object v0, p1, Lcom/rockrobo/opengl/util/Geometry$Ray;->point:Lcom/rockrobo/opengl/util/Geometry$Point;

    invoke-static {v0, p0}, Lcom/rockrobo/opengl/util/Geometry;->vectorBetween(Lcom/rockrobo/opengl/util/Geometry$Point;Lcom/rockrobo/opengl/util/Geometry$Point;)Lcom/rockrobo/opengl/util/Geometry$Vector;

    move-result-object v0

    iget-object v1, p1, Lcom/rockrobo/opengl/util/Geometry$Ray;->point:Lcom/rockrobo/opengl/util/Geometry$Point;

    iget-object v2, p1, Lcom/rockrobo/opengl/util/Geometry$Ray;->vector:Lcom/rockrobo/opengl/util/Geometry$Vector;

    invoke-virtual {v1, v2}, Lcom/rockrobo/opengl/util/Geometry$Point;->translate(Lcom/rockrobo/opengl/util/Geometry$Vector;)Lcom/rockrobo/opengl/util/Geometry$Point;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/rockrobo/opengl/util/Geometry;->vectorBetween(Lcom/rockrobo/opengl/util/Geometry$Point;Lcom/rockrobo/opengl/util/Geometry$Point;)Lcom/rockrobo/opengl/util/Geometry$Vector;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/rockrobo/opengl/util/Geometry$Vector;->crossProduct(Lcom/rockrobo/opengl/util/Geometry$Vector;)Lcom/rockrobo/opengl/util/Geometry$Vector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rockrobo/opengl/util/Geometry$Vector;->length()F

    move-result p0

    iget-object p1, p1, Lcom/rockrobo/opengl/util/Geometry$Ray;->vector:Lcom/rockrobo/opengl/util/Geometry$Vector;

    invoke-virtual {p1}, Lcom/rockrobo/opengl/util/Geometry$Vector;->length()F

    move-result p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static intersectionPoint(Lcom/rockrobo/opengl/util/Geometry$Ray;Lcom/rockrobo/opengl/util/Geometry$Plane;)Lcom/rockrobo/opengl/util/Geometry$Point;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/opengl/util/Geometry$Ray;->point:Lcom/rockrobo/opengl/util/Geometry$Point;

    iget-object v1, p1, Lcom/rockrobo/opengl/util/Geometry$Plane;->point:Lcom/rockrobo/opengl/util/Geometry$Point;

    invoke-static {v0, v1}, Lcom/rockrobo/opengl/util/Geometry;->vectorBetween(Lcom/rockrobo/opengl/util/Geometry$Point;Lcom/rockrobo/opengl/util/Geometry$Point;)Lcom/rockrobo/opengl/util/Geometry$Vector;

    move-result-object v0

    iget-object v1, p1, Lcom/rockrobo/opengl/util/Geometry$Plane;->normal:Lcom/rockrobo/opengl/util/Geometry$Vector;

    invoke-virtual {v0, v1}, Lcom/rockrobo/opengl/util/Geometry$Vector;->dotProduct(Lcom/rockrobo/opengl/util/Geometry$Vector;)F

    move-result v0

    iget-object v1, p0, Lcom/rockrobo/opengl/util/Geometry$Ray;->vector:Lcom/rockrobo/opengl/util/Geometry$Vector;

    iget-object p1, p1, Lcom/rockrobo/opengl/util/Geometry$Plane;->normal:Lcom/rockrobo/opengl/util/Geometry$Vector;

    invoke-virtual {v1, p1}, Lcom/rockrobo/opengl/util/Geometry$Vector;->dotProduct(Lcom/rockrobo/opengl/util/Geometry$Vector;)F

    move-result p1

    div-float/2addr v0, p1

    iget-object p1, p0, Lcom/rockrobo/opengl/util/Geometry$Ray;->point:Lcom/rockrobo/opengl/util/Geometry$Point;

    iget-object p0, p0, Lcom/rockrobo/opengl/util/Geometry$Ray;->vector:Lcom/rockrobo/opengl/util/Geometry$Vector;

    invoke-virtual {p0, v0}, Lcom/rockrobo/opengl/util/Geometry$Vector;->scale(F)Lcom/rockrobo/opengl/util/Geometry$Vector;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/rockrobo/opengl/util/Geometry$Point;->translate(Lcom/rockrobo/opengl/util/Geometry$Vector;)Lcom/rockrobo/opengl/util/Geometry$Point;

    move-result-object p0

    return-object p0
.end method

.method public static intersects(Lcom/rockrobo/opengl/util/Geometry$Sphere;Lcom/rockrobo/opengl/util/Geometry$Ray;)Z
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/opengl/util/Geometry$Sphere;->center:Lcom/rockrobo/opengl/util/Geometry$Point;

    invoke-static {v0, p1}, Lcom/rockrobo/opengl/util/Geometry;->distanceBetween(Lcom/rockrobo/opengl/util/Geometry$Point;Lcom/rockrobo/opengl/util/Geometry$Ray;)F

    move-result p1

    iget p0, p0, Lcom/rockrobo/opengl/util/Geometry$Sphere;->radius:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static vectorBetween(Lcom/rockrobo/opengl/util/Geometry$Point;Lcom/rockrobo/opengl/util/Geometry$Point;)Lcom/rockrobo/opengl/util/Geometry$Vector;
    .locals 4

    new-instance v0, Lcom/rockrobo/opengl/util/Geometry$Vector;

    iget v1, p1, Lcom/rockrobo/opengl/util/Geometry$Point;->x:F

    iget v2, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/rockrobo/opengl/util/Geometry$Point;->y:F

    iget v3, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->y:F

    sub-float/2addr v2, v3

    iget p1, p1, Lcom/rockrobo/opengl/util/Geometry$Point;->z:F

    iget p0, p0, Lcom/rockrobo/opengl/util/Geometry$Point;->z:F

    sub-float/2addr p1, p0

    invoke-direct {v0, v1, v2, p1}, Lcom/rockrobo/opengl/util/Geometry$Vector;-><init>(FFF)V

    return-object v0
.end method
