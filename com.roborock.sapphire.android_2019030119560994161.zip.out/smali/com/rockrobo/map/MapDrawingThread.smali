.class public Lcom/rockrobo/map/MapDrawingThread;
.super Ljava/lang/Thread;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MAP_ANIMATION_DELAY:I = 0x32


# instance fields
.field public active:Z

.field private cleanInfo:Lcom/rockrobo/common/CleanInfo;

.field private cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

.field public initialized:Z

.field private final mapBuilder:Lcom/rockrobo/map/MapBuilder;

.field private mapInfo:Lcom/rockrobo/map/MapInfo;

.field private mapPainter:Lcom/rockrobo/map/MapPainterI;

.field public quit:Z

.field private final resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

.field private final resources:Landroid/content/res/Resources;

.field private robotStatus:Lcom/rockrobo/clean/RobotStatus;

.field public running:Z

.field private final surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/map/MapDrawingThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapDrawingThread;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Lcom/rockrobo/map/MapBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapInfo:Lcom/rockrobo/map/MapInfo;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v1, p0, Lcom/rockrobo/map/MapDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v1, Lcom/rockrobo/clean/CleanStrategy;->UNKNOWN:Lcom/rockrobo/clean/CleanStrategy;

    iput-object v1, p0, Lcom/rockrobo/map/MapDrawingThread;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    iput-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    sget-object v0, Lcom/rockrobo/map/MapDrawingThread;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Constructor entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/map/MapDrawingThread;->resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/rockrobo/map/MapDrawingThread;->mapBuilder:Lcom/rockrobo/map/MapBuilder;

    invoke-virtual {p2}, Lcom/rockrobo/map/MapBuilder;->getResourceManager()Lcom/rockrobo/map/MapViewBaseResourceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/map/MapDrawingThread;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    new-instance p1, Lcom/rockrobo/map/MapPainter;

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-direct {p1, v0, p2}, Lcom/rockrobo/map/MapPainter;-><init>(Lcom/rockrobo/map/MapViewBaseResourceManager;Lcom/rockrobo/map/MapBuilder;)V

    iput-object p1, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rockrobo/map/MapDrawingThread;->quit:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/rockrobo/map/MapDrawingThread;->active:Z

    iput-boolean p1, p0, Lcom/rockrobo/map/MapDrawingThread;->running:Z

    iput-boolean p1, p0, Lcom/rockrobo/map/MapDrawingThread;->initialized:Z

    return-void
.end method

.method private update()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/rockrobo/map/MapDrawingThread;->doUpdate(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/rockrobo/map/MapDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized center()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapPainterI;->mapPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapPainterI;->center()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/map/MapDrawingThread;->running:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doUpdate(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawBackground(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapPainterI;->mapPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawMap(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawDock(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawRobot(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->drawNoMapPrompt(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCleanInfo()Lcom/rockrobo/common/CleanInfo;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    return-object v0
.end method

.method public getMapInfo()Lcom/rockrobo/map/MapInfo;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapInfo:Lcom/rockrobo/map/MapInfo;

    return-object v0
.end method

.method public getResourceManager()Lcom/rockrobo/map/MapViewBaseResourceManager;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    return-object v0
.end method

.method public declared-synchronized releaseResources()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/map/MapViewBaseResourceManager;->releaseResources()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    :goto_0
    monitor-enter p0

    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/rockrobo/map/MapDrawingThread;->initialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/rockrobo/map/MapDrawingThread;->running:Z

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p0, Lcom/rockrobo/map/MapDrawingThread;->active:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/map/MapDrawingThread;->active:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_1
    invoke-direct {p0}, Lcom/rockrobo/map/MapDrawingThread;->update()V

    iget-boolean v0, p0, Lcom/rockrobo/map/MapDrawingThread;->quit:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/rockrobo/map/MapDrawingThread;->active:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    const-wide/16 v0, 0x32

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/rockrobo/map/MapDrawingThread;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit p0

    goto :goto_0

    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/rockrobo/map/MapDrawingThread;->active:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/rockrobo/map/MapDrawingThread;->active:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_4
    iget-boolean v0, p0, Lcom/rockrobo/map/MapDrawingThread;->quit:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/rockrobo/map/MapDrawingThread;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Map drawing thread exited!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_5
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_4
    sget-object v0, Lcom/rockrobo/map/MapDrawingThread;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Map drawing thread interrupted! Ignored\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized scaleMap(FFF)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapPainterI;->mapPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1, p2, p3}, Lcom/rockrobo/map/MapPainterI;->scaleMap(FFF)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rockrobo/map/MapDrawingThread;->running:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    invoke-virtual {p1, v0}, Lcom/rockrobo/common/CleanInfo;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/rockrobo/map/MapDrawingThread;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    iget-object p1, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    invoke-interface {p1, v0}, Lcom/rockrobo/map/MapPainterI;->setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rockrobo/map/MapDrawingThread;->running:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMapInfo(Lcom/rockrobo/map/MapInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapInfo:Lcom/rockrobo/map/MapInfo;

    invoke-virtual {p1, v0}, Lcom/rockrobo/map/MapInfo;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/rockrobo/map/MapDrawingThread;->mapInfo:Lcom/rockrobo/map/MapInfo;

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1}, Lcom/rockrobo/map/MapPainterI;->setMapInfo(Lcom/rockrobo/map/MapInfo;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rockrobo/map/MapDrawingThread;->running:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMapLoadingFailed()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setRobotStatus(Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/CleanStrategy;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {p1, v0}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    invoke-virtual {p2, v0}, Lcom/rockrobo/clean/CleanStrategy;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/rockrobo/map/MapDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object p2, p0, Lcom/rockrobo/map/MapDrawingThread;->cleanStrategy:Lcom/rockrobo/clean/CleanStrategy;

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1, p2}, Lcom/rockrobo/map/MapPainterI;->setRobotStatus(Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/CleanStrategy;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rockrobo/map/MapDrawingThread;->running:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setViewSize(IILcom/rockrobo/map/MapUIStatus;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/rockrobo/map/MapUIStatus;->MAIN:Lcom/rockrobo/map/MapUIStatus;

    invoke-virtual {v1, p3}, Lcom/rockrobo/map/MapUIStatus;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/rockrobo/map/MapDrawingThread;->resources:Landroid/content/res/Resources;

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {p3, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    iget-object v2, p0, Lcom/rockrobo/map/MapDrawingThread;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getTitleBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/rockrobo/map/MapDrawingThread;->resources:Landroid/content/res/Resources;

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr v2, p3

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iget-object p1, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {p1, p3, v0}, Lcom/rockrobo/map/MapPainterI;->setViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized translate(FFFF)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0}, Lcom/rockrobo/map/MapPainterI;->mapPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/map/MapDrawingThread;->mapPainter:Lcom/rockrobo/map/MapPainterI;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/rockrobo/map/MapPainterI;->translate(FFFF)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rockrobo/map/MapDrawingThread;->running:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
