.class public Lcom/rockrobo/ui/mainview/GLMainViewRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;
    }
.end annotation


# static fields
.field private static final ACTIVE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAP_BUTTON_BOTTOM:I = 0x0

.field private static final MAP_BUTTON_UP:I = 0x1

.field private static final SLEEP:I = 0x1


# instance fields
.field private background:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

.field private backgroundTexture:I

.field private backgroundTextures:[I

.field private cat:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

.field private catAnimFrameNo:I

.field private catTexture:I

.field private chargingRobot:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

.field private chargingRobotTexture:I

.field private cleanInfo:Lcom/rockrobo/common/CleanInfo;

.field private cleanInfoObject:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

.field private cleanInfoTexture:I

.field private cleanRobot:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

.field private final context:Landroid/content/Context;

.field private elapsedBackToChargeAnimationTime:I

.field private elapsedChargingRobotAnimateTime:I

.field private elapsedCleanRobotAnimateTime:I

.field private leftGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

.field private leftGarbageTexture:I

.field private mainViewPainter:Lcom/rockrobo/ui/mainview/MainViewPainter;

.field private mapButton:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

.field private mapButtonClickListener:Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;

.field private mapButtonRectF:Landroid/graphics/RectF;

.field private mapButtonRectFs:[Landroid/graphics/RectF;

.field private mapButtonTextures:[I

.field private mapButtons:[Lcom/rockrobo/opengl/objects/Rectangle2DObject;

.field private nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

.field private prevBackToDockAnimateTime:J

.field private prevCatAnimFrameNo:I

.field private prevChargingRobotAnimateTime:J

.field private prevCleaningRobotAnimateTime:J

.field private prevRobotStatus:Lcom/rockrobo/clean/RobotStatus;

.field private final resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

.field private rightGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

.field private rightGarbageTexture:I

.field private robotAnimationPhaseEnd:Z

.field private robotDirection:Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;

.field private robotFadingStartTime:J

.field private robotLeftToRightTexture:I

.field private robotRightToLeftTexture:I

.field private robotStatus:Lcom/rockrobo/clean/RobotStatus;

.field private startTime:J

.field private tempRectF:Landroid/graphics/RectF;

.field private texture2DProgram:Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;

.field private textureStatus:Lcom/rockrobo/clean/RobotStatus;

.field private viewRect:Landroid/graphics/Rect;

.field private viewWidthHeightRate:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/rockrobo/clean/RobotStatus;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->backgroundTextures:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    const/4 v2, 0x0

    iput v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->catTexture:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevCatAnimFrameNo:I

    sget-object v3, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;->LEFT_TO_RIGHT:Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;

    iput-object v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotDirection:Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;

    sget-object v3, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v3, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotAnimationPhaseEnd:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevCleaningRobotAnimateTime:J

    iput v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotLeftToRightTexture:I

    iput v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotRightToLeftTexture:I

    iput v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->catAnimFrameNo:I

    iput v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedCleanRobotAnimateTime:I

    sget-object v6, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v6, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->textureStatus:Lcom/rockrobo/clean/RobotStatus;

    iput v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedChargingRobotAnimateTime:I

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->tempRectF:Landroid/graphics/RectF;

    iput v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->chargingRobotTexture:I

    iput-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->leftGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iput v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->leftGarbageTexture:I

    iput v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rightGarbageTexture:I

    iput-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rightGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iput v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedBackToChargeAnimationTime:I

    iput-wide v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotFadingStartTime:J

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonTextures:[I

    new-array v1, v0, [Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iput-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtons:[Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonRectFs:[Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    new-instance p2, Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-direct {p2, p1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->backgroundTextures:[I

    aput v2, p1, v2

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->backgroundTextures:[I

    aput v2, p1, v3

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonTextures:[I

    aput v2, p1, v2

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonTextures:[I

    aput v2, p1, v3

    return-void
.end method

.method private buildBackgroundTexture()V
    .locals 6

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->textureStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->backgroundTextures:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->backgroundTextures:[I

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->textureStatus:Lcom/rockrobo/clean/RobotStatus;

    iget-object v5, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getBackgroundBitmap(Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/rockrobo/opengl/util/TextureHelper;->generateTexture(Landroid/graphics/Bitmap;Z)I

    move-result v1

    aput v1, v0, v2

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->backgroundTextures:[I

    aget v0, v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->backgroundTextures:[I

    aget v0, v0, v1

    :goto_0
    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->backgroundTexture:I

    return-void
.end method

.method private buildCatObject()Lcom/rockrobo/opengl/objects/Rectangle2DObject;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCatRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object v0

    return-object v0
.end method

.method private buildCatTexture()V
    .locals 3

    iget v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevCatAnimFrameNo:I

    iget v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->catAnimFrameNo:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->catAnimFrameNo:I

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevCatAnimFrameNo:I

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->textureStatus:Lcom/rockrobo/clean/RobotStatus;

    iget v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->catAnimFrameNo:I

    invoke-virtual {v0, v1, v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCatBitmap(Lcom/rockrobo/clean/RobotStatus;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->catTexture:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/rockrobo/opengl/util/TextureHelper;->generateTexture(Landroid/graphics/Bitmap;Z)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->catTexture:I

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/rockrobo/opengl/util/TextureHelper;->deleteTexture(I)V

    :cond_1
    return-void
.end method

.method private buildCleanInfoBmp()Landroid/graphics/Bitmap;
    .locals 6

    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "buildCleanInfoBmp entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoBmpHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mainViewPainter:Lcom/rockrobo/ui/mainview/MainViewPainter;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/rockrobo/ui/mainview/MainViewPainter;->drawCleanInfo(Landroid/graphics/Canvas;Lcom/rockrobo/common/CleanInfo;Landroid/graphics/Rect;I)V

    return-object v2
.end method

.method private buildCleanInfoObject()Lcom/rockrobo/opengl/objects/Rectangle2DObject;
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoTopMargin()I

    move-result v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoBmpHeight()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    int-to-float v0, v0

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v2}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object v0

    return-object v0
.end method

.method private buildLeftToRightRobotTexture(I)V
    .locals 3

    iget v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotLeftToRightTexture:I

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->textureStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2, p1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getLeftToRightMovingRobotBmp(Lcom/rockrobo/clean/RobotStatus;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/rockrobo/opengl/util/TextureHelper;->generateTexture(Landroid/graphics/Bitmap;Z)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotLeftToRightTexture:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/rockrobo/opengl/util/TextureHelper;->deleteTexture(I)V

    :cond_0
    return-void
.end method

.method private buildMapButtonObjects()V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonSize()F

    move-result v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonRightMargin()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonBottomMargin()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonRectFs:[Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    add-float v5, v1, v0

    add-float v6, v2, v0

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtons:[Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonRectFs:[Landroid/graphics/RectF;

    aget-object v4, v4, v2

    invoke-direct {p0, v4}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonBottomMarginUp()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonRectFs:[Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v0, v3

    invoke-direct {v6, v1, v3, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x1

    aput-object v6, v4, v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtons:[Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonRectFs:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object v3

    aput-object v3, v1, v0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtons:[Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButton:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonRectFs:[Landroid/graphics/RectF;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private buildMapButtonTextures()V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonSize()F

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->CLEAN:Lcom/rockrobo/clean/RobotStatus;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v2, v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonDescPaint(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonDescOffset()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v4, v2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mainViewPainter:Lcom/rockrobo/ui/mainview/MainViewPainter;

    invoke-virtual {v5, v4, v0, v1, v2}, Lcom/rockrobo/ui/mainview/MainViewPainter;->doDrawMapButton(Landroid/graphics/Canvas;Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonTextures:[I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/rockrobo/opengl/util/TextureHelper;->generateTexture(Landroid/graphics/Bitmap;Z)I

    move-result v3

    const/4 v5, 0x0

    aput v3, v0, v5

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mainViewPainter:Lcom/rockrobo/ui/mainview/MainViewPainter;

    invoke-virtual {v6, v5, v0, v1, v2}, Lcom/rockrobo/ui/mainview/MainViewPainter;->doDrawMapButton(Landroid/graphics/Canvas;Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonTextures:[I

    invoke-static {v3, v4}, Lcom/rockrobo/opengl/util/TextureHelper;->generateTexture(Landroid/graphics/Bitmap;Z)I

    move-result v1

    aput v1, v0, v4

    return-void
.end method

.method private buildRightToLeftTexture()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->textureStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRightToLeftMovingRobotBmp(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rockrobo/opengl/util/TextureHelper;->generateTexture(Landroid/graphics/Bitmap;Z)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotRightToLeftTexture:I

    return-void
.end method

.method private drawBackToChargeRobot()V
    .locals 10

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotStartRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotEndRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedBackToChargeAnimationTime:I

    int-to-float v4, v4

    const/high16 v5, 0x44fa0000    # 2000.0f

    div-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    mul-float v4, v4, v5

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr v0, v5

    iget v4, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-lez v4, :cond_0

    iput-boolean v7, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotAnimationPhaseEnd:Z

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->tempRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v5, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->tempRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object v0

    iget v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->chargingRobotTexture:I

    invoke-direct {p0, v0, v1, v6}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotFadingStartTime:J

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotFadingStartTime:J

    sub-long v8, v2, v4

    long-to-int v0, v8

    int-to-float v0, v0

    const/high16 v2, 0x43c80000    # 400.0f

    cmpg-float v3, v0, v2

    if-gez v3, :cond_1

    div-float/2addr v0, v2

    sub-float/2addr v6, v0

    invoke-direct {p0, v1}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object v0

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->chargingRobotTexture:I

    invoke-direct {p0, v0, v1, v6}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V

    const/4 v0, 0x1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->setRobotAnimationPhaseEnd()V

    iput v7, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedBackToChargeAnimationTime:I

    return-void
.end method

.method private drawChargingRobot()V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotStartRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotEndRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedChargingRobotAnimateTime:I

    int-to-float v4, v4

    const/high16 v5, 0x44fa0000    # 2000.0f

    div-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    mul-float v4, v4, v5

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v4

    iget v4, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_0

    iget v5, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->setRobotAnimationPhaseEnd()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotAnimationPhaseEnd:Z

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr v0, v5

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->tempRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v5, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->tempRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->chargingRobot:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->chargingRobot:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->chargingRobotTexture:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V

    return-void
.end method

.method private drawCleaningRobot()V
    .locals 2

    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$ui$mainview$GLMainViewRenderer$RobotDirection:[I

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotDirection:Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;

    invoke-virtual {v1}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawRightToLeftRobot()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawLeftToRightRobot()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawLeftToRightGarbage(Landroid/graphics/RectF;)V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0, p1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getLeftGarbageRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotHorizontalPadding()F

    move-result v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    iget v3, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->leftGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->leftGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->leftGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->leftGarbageTexture:I

    invoke-direct {p0, v0, v2, v3}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRightGarbageRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float p1, v2, p1

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rightGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rightGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    :cond_2
    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rightGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rightGarbageTexture:I

    invoke-direct {p0, p1, v0, v3}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V

    :cond_3
    return-void
.end method

.method private drawLeftToRightRobot()V
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotBmpSize()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotHorizontalMovingY(Landroid/graphics/Rect;)F

    move-result v2

    iget v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedCleanRobotAnimateTime:I

    int-to-float v3, v3

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    new-instance v4, Landroid/graphics/RectF;

    add-float/2addr v1, v3

    add-float/2addr v0, v2

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->setRobotAnimationPhaseEnd()V

    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;->RIGHT_TO_LEFT:Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotDirection:Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedCleanRobotAnimateTime:I

    return-void

    :cond_0
    invoke-direct {p0, v4}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawLeftToRightGarbage(Landroid/graphics/RectF;)V

    invoke-direct {p0, v4}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cleanRobot:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedCleanRobotAnimateTime:I

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0x12

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->buildLeftToRightRobotTexture(I)V

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cleanRobot:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotLeftToRightTexture:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V

    return-void
.end method

.method private drawMapButton()V
    .locals 4

    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButton:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonTextures:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    :goto_0
    invoke-direct {p0, v0, v2, v1}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButton:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonTextures:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    goto :goto_0

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawRightToLeftGarbage(Landroid/graphics/RectF;)V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0, p1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getLeftGarbageRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotHorizontalPadding()F

    move-result v1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    cmpg-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->leftGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->leftGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->leftGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->leftGarbageTexture:I

    invoke-direct {p0, v0, v2, v3}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRightGarbageRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_3

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rightGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rightGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    :cond_2
    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rightGarbage:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rightGarbageTexture:I

    invoke-direct {p0, p1, v0, v3}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V

    :cond_3
    return-void
.end method

.method private drawRightToLeftRobot()V
    .locals 6

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotBmpSize()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRobotHorizontalMovingY(Landroid/graphics/Rect;)F

    move-result v2

    iget-object v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedCleanRobotAnimateTime:I

    int-to-float v4, v4

    const/high16 v5, 0x44fa0000    # 2000.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v3, v3

    add-float v5, v3, v1

    add-float/2addr v0, v2

    invoke-direct {v4, v3, v2, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    neg-float v0, v1

    cmpg-float v0, v3, v0

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->setRobotAnimationPhaseEnd()V

    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;->LEFT_TO_RIGHT:Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotDirection:Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedCleanRobotAnimateTime:I

    return-void

    :cond_0
    invoke-direct {p0, v4}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawRightToLeftGarbage(Landroid/graphics/RectF;)V

    invoke-direct {p0, v4}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cleanRobot:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotRightToLeftTexture:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->buildRightToLeftTexture()V

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cleanRobot:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotRightToLeftTexture:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V

    return-void
.end method

.method private drawRobot(Lcom/rockrobo/clean/RobotStatus;)V
    .locals 1

    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    invoke-virtual {p1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotIsMoving(Lcom/rockrobo/clean/RobotStatus;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawRobot(Lcom/rockrobo/clean/RobotStatus;)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawBackToChargeRobot()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawChargingRobot()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawCleaningRobot()V

    :cond_0
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->texture2DProgram:Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;

    invoke-virtual {v0, p2, p3}, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->setUniforms(IF)V

    iget-object p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->texture2DProgram:Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;

    invoke-virtual {p1, p2}, Lcom/rockrobo/opengl/objects/Rectangle2DObject;->bindData(Lcom/rockrobo/opengl/programs/ShaderProgram;)V

    invoke-virtual {p1}, Lcom/rockrobo/opengl/objects/Rectangle2DObject;->draw()V

    return-void
.end method

.method private reInitRobotAnimElapsedTime()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedBackToChargeAnimationTime:I

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedChargingRobotAnimateTime:I

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedCleanRobotAnimateTime:I

    return-void
.end method

.method private reInitRobotAnimTime()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevCleaningRobotAnimateTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevChargingRobotAnimateTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevBackToDockAnimateTime:J

    return-void
.end method

.method private rectf2GLRectObject(Landroid/graphics/RectF;)Lcom/rockrobo/opengl/objects/Rectangle2DObject;
    .locals 6

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    const/high16 v2, -0x40800000    # -1.0f

    add-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v3, v3, v1

    add-float/2addr v3, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    mul-float v2, v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, v2

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p1, v5

    mul-float p1, p1, v1

    sub-float/2addr v4, p1

    new-instance p1, Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    invoke-direct {p1, v0, v3, v2, v4}, Lcom/rockrobo/opengl/objects/Rectangle2DObject;-><init>(FFFF)V

    return-object p1
.end method

.method private robotIsMoving(Lcom/rockrobo/clean/RobotStatus;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/rockrobo/clean/RobotStatus;->isMoving()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->FULL_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private setRobotAnimationPhaseEnd()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotAnimationPhaseEnd:Z

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotIsMoving(Lcom/rockrobo/clean/RobotStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotIsMoving(Lcom/rockrobo/clean/RobotStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRobotAnimationPhaseEnd, running -> running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->reInitRobotAnimElapsedTime()V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->reInitRobotAnimTime()V

    :cond_1
    return-void
.end method

.method private updateAnimTimes()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->startTime:J

    sub-long v4, v0, v2

    long-to-int v0, v4

    div-int/lit8 v0, v0, 0x64

    rem-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->catAnimFrameNo:I

    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedBackToChargeAnimationTime:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevBackToDockAnimateTime:J

    sub-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedBackToChargeAnimationTime:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevBackToDockAnimateTime:J

    return-void

    :pswitch_1
    iget v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedChargingRobotAnimateTime:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevChargingRobotAnimateTime:J

    sub-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedChargingRobotAnimateTime:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevChargingRobotAnimateTime:J

    return-void

    :pswitch_2
    iget v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedCleanRobotAnimateTime:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevCleaningRobotAnimateTime:J

    sub-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->elapsedCleanRobotAnimateTime:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevCleaningRobotAnimateTime:J

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public mapButtonDown()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtons:[Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButton:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonRectFs:[Landroid/graphics/RectF;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public mapButtonUp()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtons:[Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButton:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonRectFs:[Landroid/graphics/RectF;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->updateAnimTimes()V

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->texture2DProgram:Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;

    invoke-virtual {p1}, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->useProgram()V

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->buildBackgroundTexture()V

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->background:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->backgroundTexture:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cleanInfoObject:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cleanInfoTexture:I

    invoke-direct {p0, p1, v0, v1}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->buildCatTexture()V

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cat:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->catTexture:I

    invoke-direct {p0, p1, v0, v1}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawTexture2DObject(Lcom/rockrobo/opengl/objects/Rectangle2DObject;IF)V

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawRobot(Lcom/rockrobo/clean/RobotStatus;)V

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->drawMapButton()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewWidthHeightRate:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->backgroundTextures:[I

    iget-object p3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0, v1}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getBackgroundBitmap(Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/rockrobo/opengl/util/TextureHelper;->generateTexture(Landroid/graphics/Bitmap;Z)I

    move-result p3

    aput p3, p2, p1

    new-instance p2, Lcom/rockrobo/ui/mainview/MainViewPainter;

    iget-object p3, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-direct {p2, p3}, Lcom/rockrobo/ui/mainview/MainViewPainter;-><init>(Lcom/rockrobo/ui/mainview/MainViewResourceManager;)V

    iput-object p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mainViewPainter:Lcom/rockrobo/ui/mainview/MainViewPainter;

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->buildCleanInfoObject()Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object p2

    iput-object p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cleanInfoObject:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->buildCleanInfoBmp()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/rockrobo/opengl/util/TextureHelper;->generateTexture(Landroid/graphics/Bitmap;Z)I

    move-result p2

    iput p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cleanInfoTexture:I

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->buildCatObject()Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    move-result-object p2

    iput-object p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cat:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    iget-object p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getChargingRobotBmp()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/rockrobo/opengl/util/TextureHelper;->generateTexture(Landroid/graphics/Bitmap;Z)I

    move-result p2

    iput p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->chargingRobotTexture:I

    iget-object p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getLeftGarbageBmp()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/rockrobo/opengl/util/TextureHelper;->generateTexture(Landroid/graphics/Bitmap;Z)I

    move-result p2

    iput p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->leftGarbageTexture:I

    iget-object p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getRightGarbageBmp()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/rockrobo/opengl/util/TextureHelper;->generateTexture(Landroid/graphics/Bitmap;Z)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->rightGarbageTexture:I

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->buildMapButtonObjects()V

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->buildMapButtonTextures()V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    sget-object p1, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onSurfaceCreated entry!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p1, v0, p2, v0, p2}, Lcom/rockrobo/opengl/objects/Rectangle2DObject;-><init>(FFFF)V

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->background:Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    const/16 p1, 0xbe2

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 p1, 0x1

    const/16 p2, 0x303

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->startTime:J

    new-instance p1, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;

    iget-object p2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->texture2DProgram:Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;

    return-void
.end method

.method public setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cleanInfo:Lcom/rockrobo/common/CleanInfo;

    iget p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cleanInfoTexture:I

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->buildCleanInfoBmp()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/rockrobo/opengl/util/TextureHelper;->generateTexture(Landroid/graphics/Bitmap;Z)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->cleanInfoTexture:I

    invoke-static {p1}, Lcom/rockrobo/opengl/util/TextureHelper;->deleteTexture(I)V

    return-void
.end method

.method public setMapButtonClickListener(Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonClickListener:Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;

    return-void
.end method

.method public setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V
    .locals 3

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, v1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->textureStatus:Lcom/rockrobo/clean/RobotStatus;

    :cond_2
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotIsMoving(Lcom/rockrobo/clean/RobotStatus;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotIsMoving(Lcom/rockrobo/clean/RobotStatus;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running -> static: prev status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",robot status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    :goto_0
    iput-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    return-void

    :cond_3
    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "static -> static: prev status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",robot status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    return-void

    :cond_4
    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotIsMoving(Lcom/rockrobo/clean/RobotStatus;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotIsMoving(Lcom/rockrobo/clean/RobotStatus;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running -> static -> running: prev status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",robot status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    :goto_1
    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->reInitRobotAnimTime()V

    return-void

    :cond_5
    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start -> running: prev status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",robot status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotAnimationPhaseEnd:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running -> running (phased end): prev status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",robot status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->reInitRobotAnimTime()V

    invoke-direct {p0}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->reInitRobotAnimElapsedTime()V

    return-void

    :cond_7
    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running -> running (phased not end): prev status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->prevRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",robot status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->nextRobotStatus:Lcom/rockrobo/clean/RobotStatus;

    return-void
.end method

.method public touchDown(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonRectF:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonClickListener:Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer;->mapButtonClickListener:Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;

    invoke-interface {p1}, Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;->mapButtonClicked()V

    :cond_0
    return-void
.end method

.method public touchUp(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
