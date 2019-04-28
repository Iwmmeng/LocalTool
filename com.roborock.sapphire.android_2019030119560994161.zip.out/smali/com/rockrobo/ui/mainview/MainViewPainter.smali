.class public Lcom/rockrobo/ui/mainview/MainViewPainter;
.super Ljava/lang/Object;


# static fields
.field public static final CLEAN_INFO_UNKNOWN_STRING:Ljava/lang/String; = "--"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/mainview/MainViewPainter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewPainter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/rockrobo/ui/mainview/MainViewResourceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    return-void
.end method


# virtual methods
.method public doDrawCat(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/rockrobo/clean/RobotStatus;J)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0, p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCatRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p2

    const-wide/16 v0, 0x20

    rem-long/2addr p4, v0

    long-to-int p4, p4

    iget-object p5, p0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {p5, p3, p4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCatBitmap(Lcom/rockrobo/clean/RobotStatus;I)Landroid/graphics/Bitmap;

    move-result-object p3

    iget-object p4, p0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {p4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getAntiAliasPaint()Landroid/graphics/Paint;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p1, p3, p5, p2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public doDrawMapButton(Landroid/graphics/Canvas;Lcom/rockrobo/clean/RobotStatus;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 4

    iget-object v0, p0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v0}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonDesc()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v1, p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonDescPaint(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v2, p2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getMapButtonBitmap(Lcom/rockrobo/clean/RobotStatus;)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v2, p0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getAntiAliasPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget p2, p4, Landroid/graphics/PointF;->x:F

    iget p3, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawCleanInfo(Landroid/graphics/Canvas;Lcom/rockrobo/common/CleanInfo;Landroid/graphics/Rect;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoDescTopGap()F

    move-result v4

    iget-object v5, v0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v5}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoNumberPaint()Landroid/graphics/Paint;

    move-result-object v5

    iget-object v6, v0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v6}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoDescPaint()Landroid/graphics/Paint;

    move-result-object v6

    move/from16 v7, p4

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float v8, v7, v8

    add-float/2addr v8, v4

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v8, v4

    iget-object v4, v0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v4}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoSuperscribePaint()Landroid/graphics/Paint;

    move-result-object v4

    iget-object v9, v0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v9}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoSuperscribe2Paint()Landroid/graphics/Paint;

    move-result-object v9

    const-string v10, "m"

    const-string v11, "2"

    iget v12, v3, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40c00000    # 6.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/rockrobo/common/CleanInfo;->getCleanArea()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_0
    const-string v13, "--"

    :goto_0
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    add-float v18, v15, v16

    add-float v18, v18, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v18, v18, v17

    sub-float v14, v12, v18

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v18

    sub-float v2, v7, v18

    invoke-virtual {v1, v13, v14, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v14, v15

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float v2, v7, v2

    invoke-virtual {v1, v10, v14, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float v14, v14, v16

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float v2, v7, v2

    invoke-virtual {v1, v11, v14, v2, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v2}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoAreaDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    div-float v9, v9, v17

    sub-float/2addr v12, v9

    invoke-virtual {v1, v2, v12, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, v3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v2, v9

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/rockrobo/common/CleanInfo;->getBatteryLevel()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    const-string v10, "--"

    :goto_1
    const-string v11, "%"

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    add-float/2addr v13, v12

    div-float v13, v13, v17

    sub-float v13, v2, v13

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v14

    sub-float v14, v7, v14

    invoke-virtual {v1, v10, v13, v14, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v13, v12

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float v10, v7, v10

    invoke-virtual {v1, v11, v13, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v10, v0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v10}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoBatteryDesc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    div-float v11, v11, v17

    sub-float/2addr v2, v11

    invoke-virtual {v1, v10, v2, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, v3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v10, 0x40c00000    # 6.0f

    div-float/2addr v3, v10

    const/high16 v10, 0x40a00000    # 5.0f

    mul-float v3, v3, v10

    add-float/2addr v2, v3

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/rockrobo/common/CleanInfo;->getCleanDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, "--"

    :goto_2
    const-string v9, "\'"

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    add-float/2addr v11, v10

    div-float v11, v11, v17

    sub-float v11, v2, v11

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    sub-float v12, v7, v12

    invoke-virtual {v1, v3, v11, v12, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v11, v10

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v7, v3

    invoke-virtual {v1, v9, v11, v7, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/rockrobo/ui/mainview/MainViewPainter;->resourceManager:Lcom/rockrobo/ui/mainview/MainViewResourceManager;

    invoke-virtual {v3}, Lcom/rockrobo/ui/mainview/MainViewResourceManager;->getCleanInfoCleanDurationDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    div-float v4, v4, v17

    sub-float/2addr v2, v4

    invoke-virtual {v1, v3, v2, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
