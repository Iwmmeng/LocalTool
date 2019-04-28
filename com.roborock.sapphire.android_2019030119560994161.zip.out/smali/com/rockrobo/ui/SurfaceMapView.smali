.class public Lcom/rockrobo/ui/SurfaceMapView;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rockrobo/map/MapViewI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/ui/SurfaceMapView$MapSurfaceHolderCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final drawingThread:Lcom/rockrobo/map/MapDrawingThread;

.field private final surfaceHolder:Landroid/view/SurfaceHolder;

.field private final uiStatus:Lcom/rockrobo/map/MapUIStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/SurfaceMapView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/SurfaceMapView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Lcom/rockrobo/map/MapBuilder;Lcom/rockrobo/map/MapUIStatus;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/ui/SurfaceMapView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iput-object p3, p0, Lcom/rockrobo/ui/SurfaceMapView;->uiStatus:Lcom/rockrobo/map/MapUIStatus;

    new-instance p3, Lcom/rockrobo/map/MapDrawingThread;

    invoke-direct {p3, p1, p2}, Lcom/rockrobo/map/MapDrawingThread;-><init>(Landroid/view/SurfaceView;Lcom/rockrobo/map/MapBuilder;)V

    iput-object p3, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    iget-object p2, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    invoke-virtual {p2}, Lcom/rockrobo/map/MapDrawingThread;->start()V

    iget-object p2, p0, Lcom/rockrobo/ui/SurfaceMapView;->surfaceHolder:Landroid/view/SurfaceHolder;

    new-instance p3, Lcom/rockrobo/ui/SurfaceMapView$MapSurfaceHolderCallback;

    invoke-direct {p3, p0}, Lcom/rockrobo/ui/SurfaceMapView$MapSurfaceHolderCallback;-><init>(Lcom/rockrobo/ui/SurfaceMapView;)V

    invoke-interface {p2, p3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance p2, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Lcom/rockrobo/map/listener/MapGestureListener;

    invoke-direct {v0, p0}, Lcom/rockrobo/map/listener/MapGestureListener;-><init>(Lcom/rockrobo/map/MapViewI;)V

    invoke-direct {p2, p3, v0}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance p3, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/rockrobo/map/listener/MapScaleGestureListener;

    invoke-direct {v1, p0}, Lcom/rockrobo/map/listener/MapScaleGestureListener;-><init>(Lcom/rockrobo/map/MapViewI;)V

    invoke-direct {p3, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    new-instance v0, Lcom/rockrobo/map/listener/MapOnTouchListener;

    invoke-direct {v0, p0, p3, p2}, Lcom/rockrobo/map/listener/MapOnTouchListener;-><init>(Lcom/rockrobo/map/MapViewI;Landroid/view/ScaleGestureDetector;Landroid/support/v4/view/GestureDetectorCompat;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setLongClickable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/ui/SurfaceMapView;)Lcom/rockrobo/map/MapDrawingThread;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rockrobo/ui/SurfaceMapView;)Lcom/rockrobo/map/MapUIStatus;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/ui/SurfaceMapView;->uiStatus:Lcom/rockrobo/map/MapUIStatus;

    return-object p0
.end method


# virtual methods
.method public center(Landroid/view/MotionEvent;)V
    .locals 1

    sget-object p1, Lcom/rockrobo/ui/SurfaceMapView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "center!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    invoke-virtual {p1}, Lcom/rockrobo/map/MapDrawingThread;->center()V

    return-void
.end method

.method public exit()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapDrawingThread;->releaseResources()V

    return-void
.end method

.method public getCleanInfo()Lcom/rockrobo/common/CleanInfo;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapDrawingThread;->getCleanInfo()Lcom/rockrobo/common/CleanInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMapInfo()Lcom/rockrobo/map/MapInfo;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapDrawingThread;->getMapInfo()Lcom/rockrobo/map/MapInfo;

    move-result-object v0

    return-object v0
.end method

.method public getResourceManager()Lcom/rockrobo/map/MapViewBaseResourceManager;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapDrawingThread;->getResourceManager()Lcom/rockrobo/map/MapViewBaseResourceManager;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(FFFF)V
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/SurfaceMapView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll: distanceX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", distanceY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/rockrobo/map/MapDrawingThread;->translate(FFFF)V

    return-void
.end method

.method public scaleMap(FFF)V
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/SurfaceMapView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scaleMap: newScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", focusX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", focuseY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/rockrobo/map/MapDrawingThread;->scaleMap(FFF)V

    return-void
.end method

.method public setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    invoke-virtual {v0, p1}, Lcom/rockrobo/map/MapDrawingThread;->setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V

    return-void
.end method

.method public setMapInfo(Lcom/rockrobo/map/MapInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    invoke-virtual {v0, p1}, Lcom/rockrobo/map/MapDrawingThread;->setMapInfo(Lcom/rockrobo/map/MapInfo;)V

    return-void
.end method

.method public setMapLoadingFailed()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapDrawingThread;->setMapLoadingFailed()V

    return-void
.end method

.method public setRobotStatus(Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/CleanStrategy;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/SurfaceMapView;->drawingThread:Lcom/rockrobo/map/MapDrawingThread;

    invoke-virtual {v0, p1, p2}, Lcom/rockrobo/map/MapDrawingThread;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/CleanStrategy;)V

    return-void
.end method
