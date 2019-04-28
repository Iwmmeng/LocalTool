.class public Lcom/rockrobo/map/listener/MapOnTouchListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mapView:Lcom/rockrobo/map/MapViewI;

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private translateGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;


# direct methods
.method public constructor <init>(Lcom/rockrobo/map/MapViewI;Landroid/view/ScaleGestureDetector;Landroid/support/v4/view/GestureDetectorCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/map/listener/MapOnTouchListener;->mapView:Lcom/rockrobo/map/MapViewI;

    iput-object p2, p0, Lcom/rockrobo/map/listener/MapOnTouchListener;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object p3, p0, Lcom/rockrobo/map/listener/MapOnTouchListener;->translateGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/map/listener/MapOnTouchListener;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iget-object v0, p0, Lcom/rockrobo/map/listener/MapOnTouchListener;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/rockrobo/map/listener/MapOnTouchListener;->translateGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :cond_0
    return p1
.end method
