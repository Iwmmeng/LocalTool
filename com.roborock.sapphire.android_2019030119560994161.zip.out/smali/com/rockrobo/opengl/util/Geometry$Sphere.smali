.class public Lcom/rockrobo/opengl/util/Geometry$Sphere;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/opengl/util/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sphere"
.end annotation


# instance fields
.field public final center:Lcom/rockrobo/opengl/util/Geometry$Point;

.field public final radius:F


# direct methods
.method public constructor <init>(Lcom/rockrobo/opengl/util/Geometry$Point;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/opengl/util/Geometry$Sphere;->center:Lcom/rockrobo/opengl/util/Geometry$Point;

    iput p2, p0, Lcom/rockrobo/opengl/util/Geometry$Sphere;->radius:F

    return-void
.end method
