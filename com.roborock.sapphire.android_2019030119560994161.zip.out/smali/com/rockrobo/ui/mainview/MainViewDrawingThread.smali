.class public Lcom/rockrobo/ui/mainview/MainViewDrawingThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/ui/mainview/MainViewDrawingThread$RobotDirection;
    }
.end annotation


# static fields
.field public static final BACKGROUND_PERSIST_DRAWING_TIMES:I = 0x2

.field private static final CAT_ANIMATION_DELAY:I = 0x14

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final ROBOT_ANIMATION_DELAY:I = 0xa

.field private static final ROBOT_ANIMATION_DELAY_TIME:F = 40.0f

.field private static final ROBOT_BACK_TO_CHARGE_FREEZE_TIME:I = 0xc8


# instance fields
.field public active:Z

.field private backgroundDrawnCount:I

.field private catAnimationCount:J

.field private chargingOnDock:Z

.field private cleanInfo:Lcom/rockrobo/common/CleanInfo;

.field private cleanInfoUpdated:Z

.field private cleanRobotFrameNo:J

.field private elapsedChargingRobotAnimateTime:J

.field private elapsedCleanRobotAnimateTime:J

.field private elpasedBackToChargeAnimationTime:J

.field public initialized:Z

.field private mainViewPainter:Lcom/rockrobo/ui/mainview/MainViewPainter;

.field private mapButtonDescCenter:Landroid/graphics/PointF;

.field private mapButtonRectF:Landroid/graphics/RectF;

.field private nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

.field private onTouchListener:Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;

.field private preRobotStatus:Lcom/rockrobo/clean/RobotStatus;

.field private prevBackToChargeRobotAnimateTime:J

.field private prevCatAnimateTime:J

.field private prevChargingRobotAnimateTime:J

.field private prevCleaningRobotAnimateTime:J

.field public quit:Z

.field private reachTopSavedCount:I

.field private final resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

.field private final resources:Landroid/content/res/Resources;

.field private robotAnimationPhaseEnd:Z

.field private robotDirection:Lcom/rockrobo/ui/mainview/MainViewDrawingThread$RobotDirection;

.field private robotRect:Landroid/graphics/RectF;

.field private robotStatus:Lcom/rockrobo/clean/RobotStatus;

.field public running:Z

.field private surfaceDirtyRect:Landroid/graphics/Rect;

.field private final surfaceHolder:Landroid/view/SurfaceHolder;

.field private final surfaceView:Landroid/view/SurfaceView;

.field private viewRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Lcom/rockrobo/ui/mainview/MainViewResourceManager;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mapButtonRectF:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mapButtonDescCenter:Landroid/graphics/PointF;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->catAnimationCount:J

    sget-object v3, Lcom/rockrobo/ui/mainview/MainViewDrawingThread$RobotDirection;->LEFT_TO_RIGHT:Lcom/rockrobo/ui/mainview/MainViewDrawingThread$RobotDirection;

    iput-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotDirection:Lcom/rockrobo/ui/mainview/MainViewDrawingThread$RobotDirection;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotAnimationPhaseEnd:Z

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-boolean v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->chargingOnDock:Z

    iput-wide v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevBackToChargeRobotAnimateTime:J

    iput-wide v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevChargingRobotAnimateTime:J

    iput-wide v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevCatAnimateTime:J

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->preRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    const/4 v4, 0x0

    iput v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->backgroundDrawnCount:I

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotRect:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceDirtyRect:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->cleanInfoUpdated:Z

    iput-wide v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedCleanRobotAnimateTime:J

    iput-wide v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->cleanRobotFrameNo:J

    iput-wide v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedChargingRobotAnimateTime:J

    iput-wide v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elpasedBackToChargeAnimationTime:J

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mainViewPainter:Lcom/rockrobo/ui/mainview/MainViewPainter;

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iput-boolean v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->quit:Z

    iput-boolean v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->active:Z

    iput-boolean v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->running:Z

    iput-boolean v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->initialized:Z

    return-void
.end method

.method private doDrawBottomPart(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mainViewPainter:Lcom/rockrobo/ui/mainview/MainViewPainter;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-wide v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->catAnimationCount:J

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/rockrobo/ui/mainview/MainViewPainter;->doDrawCat(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/rockrobo/clean/RobotStatus;J)V

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->doDrawRobot(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mapButtonRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonDescPaint(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonSize()F

    move-result v1

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonRightMargin()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v1

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonBottomMargin()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v1

    new-instance v4, Landroid/graphics/RectF;

    add-float v5, v2, v1

    add-float/2addr v1, v3

    invoke-direct {v4, v2, v3, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mapButtonRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mapButtonRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonDescOffset()F

    move-result v2

    add-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    sub-float/2addr v3, v0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mapButtonDescCenter:Landroid/graphics/PointF;

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mainViewPainter:Lcom/rockrobo/ui/mainview/MainViewPainter;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mapButtonRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mapButtonDescCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/rockrobo/ui/mainview/MainViewPainter;->doDrawMapButton(Landroid/graphics/Canvas;Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    :cond_1
    return-void
.end method

.method private doDrawRobot(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0}, Lcom/rockrobo/clean/RobotStatus;->isMoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->drawFreezeRobot(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->drawBackToChargeRobot(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->drawChargingRobot(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->drawCleaningRobot(Landroid/graphics/Canvas;)V

    :cond_1
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private drawAllComponent()V
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getBackgroundBitmap(Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getDitherPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mainViewPainter:Lcom/rockrobo/ui/mainview/MainViewPainter;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoTopMargin()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/rockrobo/ui/mainview/MainViewPainter;->drawCleanInfo(Landroid/graphics/Canvas;Lcom/rockrobo/common/CleanInfo;Landroid/graphics/Rect;I)V

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->doDrawBottomPart(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawBackToChargeRobot(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotStartRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotEndRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-wide v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elpasedBackToChargeAnimationTime:J

    long-to-float v4, v4

    const/high16 v5, 0x42200000    # 40.0f

    div-float/2addr v4, v5

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v7}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotAnimationYDelta()F

    move-result v7

    mul-float v7, v7, v4

    sub-float/2addr v6, v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr v0, v6

    iget v7, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v6, v7

    const/4 v8, 0x0

    if-lez v7, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotAnimationPhaseEnd:Z

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v6, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotBmp()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v8, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    float-to-int p1, v4

    iput p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->reachTopSavedCount:I

    return-void

    :cond_0
    iget v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->reachTopSavedCount:I

    int-to-float v0, v0

    sub-float/2addr v4, v0

    mul-float v4, v4, v5

    float-to-int v0, v4

    sget-object v2, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reach dock! delayTimes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reachTopSavedCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->reachTopSavedCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotBmp()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v4, v0, v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotAlphaPaint(II)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v3, v8, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->setRobotAnimationPhaseEnd()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elpasedBackToChargeAnimationTime:J

    return-void
.end method

.method private drawBottomPart()V
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getBottomPartRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceDirtyRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getBackgroundBitmap(Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getDitherPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-direct {p0, v1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->doDrawBottomPart(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawCat()V
    .locals 9

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCatRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceDirtyRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getBackgroundBitmap(Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceDirtyRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceDirtyRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getDitherPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mainViewPainter:Lcom/rockrobo/ui/mainview/MainViewPainter;

    iget-object v5, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-wide v7, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->catAnimationCount:J

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/rockrobo/ui/mainview/MainViewPainter;->doDrawCat(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/rockrobo/clean/RobotStatus;J)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawChargingRobot(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotStartRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotEndRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iget-boolean v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->chargingOnDock:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-wide v5, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedChargingRobotAnimateTime:J

    long-to-float v5, v5

    const/high16 v6, 0x42200000    # 40.0f

    div-float/2addr v5, v6

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v7}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotAnimationYDelta()F

    move-result v7

    mul-float v5, v5, v7

    sub-float/2addr v6, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr v0, v6

    iget v5, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v6, v5

    const/4 v7, 0x0

    if-gtz v5, :cond_0

    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->setRobotAnimationPhaseEnd()V

    iput-boolean v7, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->chargingOnDock:Z

    goto :goto_0

    :cond_0
    iput-boolean v7, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotAnimationPhaseEnd:Z

    :goto_0
    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v6, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotBmp()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v3, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotBmp()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedChargingRobotAnimateTime:J

    return-void
.end method

.method private drawCleanInfo()V
    .locals 6

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->LOG_TAG:Ljava/lang/String;

    const-string v1, "drawCleanInfo entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoTopMargin()I

    move-result v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoDescTopGap()F

    move-result v1

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoNumberPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoDescPaint()Landroid/graphics/Paint;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v4, v2

    add-float/2addr v4, v1

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v4, v1

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoRect(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceDirtyRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getBackgroundBitmap(Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mainViewPainter:Lcom/rockrobo/ui/mainview/MainViewPainter;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoTopMargin()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/rockrobo/ui/mainview/MainViewPainter;->drawCleanInfo(Landroid/graphics/Canvas;Lcom/rockrobo/common/CleanInfo;Landroid/graphics/Rect;I)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawCleaningRobot(Landroid/graphics/Canvas;)V
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread$1;->$SwitchMap$com$rockrobo$ui$mainview$MainViewDrawingThread$RobotDirection:[I

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotDirection:Lcom/rockrobo/ui/mainview/MainViewDrawingThread$RobotDirection;

    invoke-virtual {v1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread$RobotDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->drawRightToLeftRobot(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->drawLeftToRightRobot(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawFreezeRobot(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->preRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->preRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->drawCleaningRobot(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->drawBackToChargeRobot(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private drawLeftToRightGarbage(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0, p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getLeftGarbageRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotHorizontalPadding()F

    move-result v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    iget v3, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getLeftGarbageBmp()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRightGarbageRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpl-float p2, v2, p2

    if-ltz p2, :cond_1

    iget-object p2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRightGarbageBmp()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawLeftToRightRobot(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotBmpSize()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotHorizontalMovingY(Landroid/graphics/Rect;)F

    move-result v1

    iget-wide v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedCleanRobotAnimateTime:J

    long-to-float v2, v2

    const/high16 v3, 0x42200000    # 40.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "frame no:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", elapsedCleanRobotAnimateTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedCleanRobotAnimateTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotHorizontalMovingXDelta()F

    move-result v3

    mul-float v2, v2, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->setRobotAnimationPhaseEnd()V

    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewDrawingThread$RobotDirection;->RIGHT_TO_LEFT:Lcom/rockrobo/ui/mainview/MainViewDrawingThread$RobotDirection;

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotDirection:Lcom/rockrobo/ui/mainview/MainViewDrawingThread$RobotDirection;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedCleanRobotAnimateTime:J

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr v0, v1

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2, v1, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-wide v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->cleanRobotFrameNo:J

    const-wide/16 v2, 0x12

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->drawLeftToRightGarbage(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2, v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getLeftToRightMovingRobotBmp(Lcom/rockrobo/clean/RobotStatus;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotAnimationPhaseEnd:Z

    return-void
.end method

.method private drawRightToLeftGarbage(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0, p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getLeftGarbageRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotHorizontalPadding()F

    move-result v1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getLeftGarbageBmp()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRightGarbageRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, v1

    cmpg-float p2, v2, p2

    if-gtz p2, :cond_1

    iget-object p2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRightGarbageBmp()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawRightToLeftRobot(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotBmpSize()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotHorizontalMovingY(Landroid/graphics/Rect;)F

    move-result v1

    iget-wide v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedCleanRobotAnimateTime:J

    long-to-float v2, v2

    const/high16 v3, 0x42200000    # 40.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "frame no:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", elapsedCleanRobotAnimateTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedCleanRobotAnimateTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotHorizontalMovingXDelta()F

    move-result v4

    mul-float v2, v2, v4

    sub-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    neg-float v2, v2

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->setRobotAnimationPhaseEnd()V

    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewDrawingThread$RobotDirection;->LEFT_TO_RIGHT:Lcom/rockrobo/ui/mainview/MainViewDrawingThread$RobotDirection;

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotDirection:Lcom/rockrobo/ui/mainview/MainViewDrawingThread$RobotDirection;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedCleanRobotAnimateTime:J

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr v0, v1

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v3, v1, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->drawRightToLeftGarbage(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRightToLeftMovingRobotBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotAnimationPhaseEnd:Z

    return-void
.end method

.method private drawRobot()V
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->preRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1, v2, v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotMovingRect(Landroid/graphics/Rect;Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceDirtyRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getBackgroundBitmap(Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getDitherPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-direct {p0, v1}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->doDrawRobot(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private persistSurfaceViewBuffer()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceDirtyRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceDirtyRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private setRobotAnimationPhaseEnd()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotAnimationPhaseEnd:Z

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    :cond_0
    return-void
.end method

.method private update()V
    .locals 2

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->updateAnimationStatus()V

    iget v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->backgroundDrawnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->backgroundDrawnCount:I

    iget v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->backgroundDrawnCount:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->drawAllComponent()V

    :goto_0
    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->persistSurfaceViewBuffer()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->cleanInfoUpdated:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->drawCleanInfo()V

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->persistSurfaceViewBuffer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->cleanInfoUpdated:Z

    :cond_1
    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->drawBottomPart()V

    goto :goto_0

    return-void
.end method

.method private updateAnimationStatus()V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v2, v3}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x28

    goto :goto_0

    :cond_0
    const/16 v2, 0x14

    :goto_0
    iget-wide v3, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevCatAnimateTime:J

    sub-long v5, v0, v3

    int-to-long v2, v2

    cmp-long v4, v5, v2

    const-wide/16 v2, 0x1

    if-ltz v4, :cond_1

    iget-wide v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->catAnimationCount:J

    add-long v6, v4, v2

    iput-wide v6, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->catAnimationCount:J

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevCatAnimateTime:J

    :cond_1
    sget-object v4, Lcom/rockrobo/ui/mainview/MainViewDrawingThread$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v5, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v5}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    return-void

    :pswitch_0
    iget-wide v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevBackToChargeRobotAnimateTime:J

    sub-long v4, v0, v2

    iget-wide v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elpasedBackToChargeAnimationTime:J

    add-long v6, v2, v4

    iput-wide v6, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elpasedBackToChargeAnimationTime:J

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevBackToChargeRobotAnimateTime:J

    return-void

    :pswitch_1
    iget-boolean v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->chargingOnDock:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevChargingRobotAnimateTime:J

    sub-long v4, v0, v2

    iget-wide v2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedChargingRobotAnimateTime:J

    add-long v6, v2, v4

    iput-wide v6, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedChargingRobotAnimateTime:J

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevChargingRobotAnimateTime:J

    return-void

    :pswitch_2
    iget-wide v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevCleaningRobotAnimateTime:J

    sub-long v6, v0, v4

    iget-wide v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedCleanRobotAnimateTime:J

    add-long v8, v4, v6

    iput-wide v8, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->elapsedCleanRobotAnimateTime:J

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevCleaningRobotAnimateTime:J

    iget-wide v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->cleanRobotFrameNo:J

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->cleanRobotFrameNo:J

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized exit()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->destroyResources()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reStart()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->backgroundDrawnCount:I
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
    iget-boolean v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->initialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->running:Z

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->active:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->active:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_1
    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->update()V

    iget-boolean v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->quit:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->active:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    const-wide/16 v0, 0xa

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->LOG_TAG:Ljava/lang/String;

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
    iget-boolean v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->active:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->active:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_4
    iget-boolean v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->quit:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->LOG_TAG:Ljava/lang/String;

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
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->LOG_TAG:Ljava/lang/String;

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

.method public declared-synchronized setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setCleanInfo entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->cleanInfoUpdated:Z

    iput-boolean p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->running:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnTouchListener(Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->onTouchListener:Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;

    return-void
.end method

.method public declared-synchronized setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->backgroundDrawnCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevCleaningRobotAnimateTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevChargingRobotAnimateTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->prevBackToChargeRobotAnimateTime:J

    invoke-virtual {p1}, Lcom/rockrobo/clean/RobotStatus;->isMoving()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0}, Lcom/rockrobo/clean/RobotStatus;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->preRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0}, Lcom/rockrobo/clean/RobotStatus;->isMoving()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->preRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    :cond_2
    iget-boolean v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotAnimationPhaseEnd:Z

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object p1, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "robot status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->running:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setViewSize(II)V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->viewRect:Landroid/graphics/Rect;

    new-instance p1, Lcom/rockrobo/ui/mainview/MainViewPainter;

    iget-object p2, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-direct {p1, p2}, Lcom/rockrobo/ui/mainview/MainViewPainter;-><init>(Lcom/rockrobo/ui/mainview/MainViewResourceManager;)V

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mainViewPainter:Lcom/rockrobo/ui/mainview/MainViewPainter;

    return-void
.end method

.method public touchDown(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mapButtonRectF:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->mapButtonRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->onTouchListener:Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewDrawingThread;->onTouchListener:Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;

    invoke-interface {p1}, Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;->mapButtonClicked()V

    :cond_0
    return-void
.end method

.method public touchUp(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
