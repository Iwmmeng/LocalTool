.class public Lcom/rockrobo/map/listener/MapScaleGestureListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private mapView:Lcom/rockrobo/map/MapViewI;


# direct methods
.method public constructor <init>(Lcom/rockrobo/map/MapViewI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/map/listener/MapScaleGestureListener;->mapView:Lcom/rockrobo/map/MapViewI;

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iget-object v2, p0, Lcom/rockrobo/map/listener/MapScaleGestureListener;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {v2, v0, v1, p1}, Lcom/rockrobo/map/MapViewI;->scaleMap(FFF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
