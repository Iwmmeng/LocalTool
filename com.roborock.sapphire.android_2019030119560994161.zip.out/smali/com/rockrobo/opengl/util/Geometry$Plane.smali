.class public Lcom/rockrobo/opengl/util/Geometry$Plane;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/opengl/util/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Plane"
.end annotation


# instance fields
.field public final normal:Lcom/rockrobo/opengl/util/Geometry$Vector;

.field public final point:Lcom/rockrobo/opengl/util/Geometry$Point;


# direct methods
.method public constructor <init>(Lcom/rockrobo/opengl/util/Geometry$Point;Lcom/rockrobo/opengl/util/Geometry$Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/opengl/util/Geometry$Plane;->point:Lcom/rockrobo/opengl/util/Geometry$Point;

    iput-object p2, p0, Lcom/rockrobo/opengl/util/Geometry$Plane;->normal:Lcom/rockrobo/opengl/util/Geometry$Vector;

    return-void
.end method
