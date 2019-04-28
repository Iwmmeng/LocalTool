.class Lcom/rockrobo/map/MapBuilder$Point;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/map/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Point"
.end annotation


# instance fields
.field flag:I

.field final synthetic this$0:Lcom/rockrobo/map/MapBuilder;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/rockrobo/map/MapBuilder;III)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/map/MapBuilder$Point;->this$0:Lcom/rockrobo/map/MapBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/rockrobo/map/MapBuilder$Point;->x:I

    iput p3, p0, Lcom/rockrobo/map/MapBuilder$Point;->y:I

    iput p4, p0, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    return-void
.end method
