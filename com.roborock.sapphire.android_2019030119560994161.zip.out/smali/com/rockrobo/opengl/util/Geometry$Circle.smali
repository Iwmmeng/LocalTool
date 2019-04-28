.class public Lcom/rockrobo/opengl/util/Geometry$Circle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/opengl/util/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Circle"
.end annotation


# instance fields
.field public final center:Lcom/rockrobo/opengl/util/Geometry$Point;

.field public final radius:F


# direct methods
.method public constructor <init>(Lcom/rockrobo/opengl/util/Geometry$Point;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/opengl/util/Geometry$Circle;->center:Lcom/rockrobo/opengl/util/Geometry$Point;

    iput p2, p0, Lcom/rockrobo/opengl/util/Geometry$Circle;->radius:F

    return-void
.end method


# virtual methods
.method public scale(F)Lcom/rockrobo/opengl/util/Geometry$Circle;
    .locals 3

    new-instance v0, Lcom/rockrobo/opengl/util/Geometry$Circle;

    iget-object v1, p0, Lcom/rockrobo/opengl/util/Geometry$Circle;->center:Lcom/rockrobo/opengl/util/Geometry$Point;

    iget v2, p0, Lcom/rockrobo/opengl/util/Geometry$Circle;->radius:F

    mul-float v2, v2, p1

    invoke-direct {v0, v1, v2}, Lcom/rockrobo/opengl/util/Geometry$Circle;-><init>(Lcom/rockrobo/opengl/util/Geometry$Point;F)V

    return-object v0
.end method
