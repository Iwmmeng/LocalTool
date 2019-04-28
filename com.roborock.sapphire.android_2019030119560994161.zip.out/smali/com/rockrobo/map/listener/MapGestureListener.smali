.class public Lcom/rockrobo/map/listener/MapGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mapView:Lcom/rockrobo/map/MapViewI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/map/listener/MapGestureListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/listener/MapGestureListener;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/rockrobo/map/MapViewI;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/map/listener/MapGestureListener;->mapView:Lcom/rockrobo/map/MapViewI;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/listener/MapGestureListener;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapViewI;->center(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/map/listener/MapGestureListener;->mapView:Lcom/rockrobo/map/MapViewI;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-interface {p1, p3, p4, v0, p2}, Lcom/rockrobo/map/MapViewI;->onScroll(FFFF)V

    const/4 p1, 0x1

    return p1
.end method
