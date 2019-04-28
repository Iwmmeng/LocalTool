.class public Lcom/rockrobo/ui/TextImageView$PositionText;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/ui/TextImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionText"
.end annotation


# instance fields
.field private center:Landroid/graphics/PointF;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/ui/TextImageView$PositionText;->center:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/rockrobo/ui/TextImageView$PositionText;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCenter()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/TextImageView$PositionText;->center:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/TextImageView$PositionText;->text:Ljava/lang/String;

    return-object v0
.end method
