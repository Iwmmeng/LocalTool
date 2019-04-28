.class public Lcom/rockrobo/opengl/util/Geometry$Ray;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/opengl/util/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ray"
.end annotation


# instance fields
.field public final point:Lcom/rockrobo/opengl/util/Geometry$Point;

.field public final vector:Lcom/rockrobo/opengl/util/Geometry$Vector;


# direct methods
.method public constructor <init>(Lcom/rockrobo/opengl/util/Geometry$Point;Lcom/rockrobo/opengl/util/Geometry$Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/opengl/util/Geometry$Ray;->point:Lcom/rockrobo/opengl/util/Geometry$Point;

    iput-object p2, p0, Lcom/rockrobo/opengl/util/Geometry$Ray;->vector:Lcom/rockrobo/opengl/util/Geometry$Vector;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ray{point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockrobo/opengl/util/Geometry$Ray;->point:Lcom/rockrobo/opengl/util/Geometry$Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockrobo/opengl/util/Geometry$Ray;->vector:Lcom/rockrobo/opengl/util/Geometry$Vector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
