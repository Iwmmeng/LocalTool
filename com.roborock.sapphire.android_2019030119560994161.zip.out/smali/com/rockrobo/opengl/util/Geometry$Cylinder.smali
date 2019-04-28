.class public Lcom/rockrobo/opengl/util/Geometry$Cylinder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/opengl/util/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cylinder"
.end annotation


# instance fields
.field public final center:Lcom/rockrobo/opengl/util/Geometry$Point;

.field public final height:F

.field public final radius:F


# direct methods
.method public constructor <init>(Lcom/rockrobo/opengl/util/Geometry$Point;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/opengl/util/Geometry$Cylinder;->center:Lcom/rockrobo/opengl/util/Geometry$Point;

    iput p2, p0, Lcom/rockrobo/opengl/util/Geometry$Cylinder;->radius:F

    iput p3, p0, Lcom/rockrobo/opengl/util/Geometry$Cylinder;->height:F

    return-void
.end method
