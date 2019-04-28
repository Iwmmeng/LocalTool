.class public Lcom/rockrobo/map/MapBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/map/MapBuilder$Point;
    }
.end annotation


# static fields
.field private static final ADD_FLAG:I = 0x3

.field private static final CLEANED_FLAG:I = 0x1

.field private static final IS_OLD:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final OBSTACLE_DISTANCE:I = 0x4

.field private static final OBSTACLE_FLAG:I = 0x0

.field private static final TEMP:I = 0x5

.field private static final UNKNOWN_FLAG:I = 0x2

.field private static final WALK_DISTANCE:I = 0x1


# instance fields
.field private addAllPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rockrobo/map/MapBuilder$Point;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

.field private robotStatus:Lcom/rockrobo/clean/RobotStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/map/MapBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/map/MapBuilder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/rockrobo/map/MapViewBaseResourceManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    iput-object v0, p0, Lcom/rockrobo/map/MapBuilder;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/map/MapBuilder;->addAllPoints:Ljava/util/List;

    iput-object p1, p0, Lcom/rockrobo/map/MapBuilder;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    return-void
.end method

.method private add2Obstacle()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/map/MapBuilder;->addAllPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/map/MapBuilder$Point;

    const/4 v2, 0x0

    iput v2, v1, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/map/MapBuilder;->addAllPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private addCleanedEdgePoint(Landroid/graphics/Bitmap;[[Lcom/rockrobo/map/MapBuilder$Point;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "[[",
            "Lcom/rockrobo/map/MapBuilder$Point;",
            "Ljava/util/List<",
            "Lcom/rockrobo/map/MapBuilder$Point;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_14

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_13

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    const/4 v3, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x2

    if-lez v2, :cond_5

    aget-object v7, p2, v1

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v6, :cond_5

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v7, v9, :cond_2

    aget-object v9, p2, v7

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v9, v6, :cond_0

    aget-object v7, p2, v7

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_2

    :cond_0
    move v7, v1

    :goto_2
    if-le v7, v5, :cond_1

    aget-object v9, p2, v7

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v4, :cond_1

    aget-object v9, p2, v7

    aget-object v9, v9, v8

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v6, :cond_1

    aget-object v9, p2, v7

    aget-object v9, v9, v2

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_1
    invoke-direct {p0, p3, v3}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    :cond_2
    if-lez v1, :cond_12

    add-int/lit8 v5, v1, -0x1

    aget-object v7, p2, v5

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v7, v6, :cond_3

    aget-object v5, p2, v5

    aget-object v5, v5, v2

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v5, :cond_12

    :cond_3
    move v5, v1

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v5, v7, :cond_4

    aget-object v7, p2, v5

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_4

    aget-object v7, p2, v5

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v6, :cond_4

    aget-object v7, p2, v5

    aget-object v7, v7, v2

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    invoke-direct {p0, p3, v3}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    goto/16 :goto_a

    :cond_5
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_a

    aget-object v8, p2, v1

    aget-object v8, v8, v7

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v6, :cond_a

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_8

    aget-object v9, p2, v8

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v9, v6, :cond_6

    aget-object v8, p2, v8

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v8, :cond_8

    :cond_6
    move v8, v1

    :goto_4
    if-le v8, v5, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ge v7, v9, :cond_7

    aget-object v9, p2, v8

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v6, :cond_7

    aget-object v9, p2, v8

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v6, :cond_7

    aget-object v9, p2, v8

    aget-object v9, v9, v2

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_7
    invoke-direct {p0, p3, v3}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    :cond_8
    if-lez v1, :cond_12

    add-int/lit8 v5, v1, -0x1

    aget-object v8, p2, v5

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v8, v6, :cond_9

    aget-object v5, p2, v5

    aget-object v5, v5, v2

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v5, :cond_12

    :cond_9
    move v5, v1

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-le v5, v8, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_4

    aget-object v8, p2, v5

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_4

    aget-object v8, p2, v5

    aget-object v8, v8, v7

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v6, :cond_4

    aget-object v8, p2, v5

    aget-object v8, v8, v2

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    if-lez v1, :cond_e

    add-int/lit8 v8, v1, -0x1

    aget-object v9, p2, v8

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v6, :cond_e

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v4

    if-ge v2, v9, :cond_c

    aget-object v9, p2, v1

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v9, v6, :cond_b

    aget-object v9, p2, v1

    aget-object v7, v9, v7

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_c

    :cond_b
    move v7, v2

    :goto_6
    if-le v7, v5, :cond_4

    aget-object v9, p2, v1

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v4, :cond_4

    aget-object v9, p2, v8

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v6, :cond_4

    aget-object v9, p2, v1

    aget-object v9, v9, v7

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    :cond_c
    if-lez v2, :cond_12

    aget-object v5, p2, v1

    add-int/lit8 v7, v2, -0x1

    aget-object v5, v5, v7

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v5, v6, :cond_d

    aget-object v5, p2, v1

    aget-object v5, v5, v7

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v5, :cond_12

    :cond_d
    move v5, v2

    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_4

    aget-object v7, p2, v1

    aget-object v7, v7, v5

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_4

    aget-object v7, p2, v8

    aget-object v7, v7, v5

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v6, :cond_4

    aget-object v7, p2, v1

    aget-object v7, v7, v5

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_12

    aget-object v9, p2, v8

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v6, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v4

    if-ge v2, v9, :cond_10

    aget-object v9, p2, v1

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v9, :cond_f

    aget-object v9, p2, v1

    aget-object v7, v9, v7

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v6, :cond_10

    :cond_f
    move v7, v2

    :goto_8
    if-le v7, v5, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_4

    aget-object v9, p2, v1

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v4, :cond_4

    aget-object v9, p2, v8

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v6, :cond_4

    aget-object v9, p2, v1

    aget-object v9, v9, v7

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_8

    :cond_10
    if-lez v2, :cond_12

    aget-object v5, p2, v1

    add-int/lit8 v7, v2, -0x1

    aget-object v5, v5, v7

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v5, :cond_11

    aget-object v5, p2, v1

    aget-object v5, v5, v7

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v5, v6, :cond_12

    :cond_11
    move v5, v2

    :goto_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v8, v7, :cond_4

    aget-object v7, p2, v1

    aget-object v7, v7, v5

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_4

    aget-object v7, p2, v8

    aget-object v7, v7, v5

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v6, :cond_4

    aget-object v7, p2, v1

    aget-object v7, v7, v5

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_12
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method private addObstacle(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rockrobo/map/MapBuilder$Point;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/map/MapBuilder$Point;

    iput p2, v1, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/rockrobo/map/MapBuilder;->addAllPoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private addUnknownEdgePoint(Landroid/graphics/Bitmap;[[Lcom/rockrobo/map/MapBuilder$Point;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "[[",
            "Lcom/rockrobo/map/MapBuilder$Point;",
            "Ljava/util/List<",
            "Lcom/rockrobo/map/MapBuilder$Point;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_24

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_23

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_22

    const/4 v3, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-lez v2, :cond_9

    aget-object v7, p2, v1

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_9

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v7, v9, :cond_4

    aget-object v9, p2, v7

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v9, v4, :cond_4

    move v9, v2

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ge v7, v10, :cond_1

    aget-object v10, p2, v1

    aget-object v10, v10, v9

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v10, v4, :cond_1

    aget-object v10, p2, v7

    aget-object v10, v10, v9

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v10, :cond_0

    aget-object v10, p2, v7

    aget-object v10, v10, v9

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v10, v6, :cond_1

    :cond_0
    aget-object v10, p2, v1

    aget-object v10, v10, v9

    invoke-interface {p3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    invoke-direct {p0, p3, v5}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    move v7, v1

    :goto_3
    if-le v7, v3, :cond_3

    aget-object v9, p2, v7

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v4, :cond_3

    aget-object v9, p2, v7

    aget-object v9, v9, v8

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v9, :cond_2

    aget-object v9, p2, v7

    aget-object v9, v9, v8

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v6, :cond_3

    :cond_2
    aget-object v9, p2, v7

    aget-object v9, v9, v2

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_3
    invoke-direct {p0, p3, v5}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    :cond_4
    if-lez v1, :cond_22

    add-int/lit8 v3, v1, -0x1

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v7, v4, :cond_22

    move v7, v2

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ge v7, v9, :cond_6

    aget-object v9, p2, v1

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v4, :cond_6

    aget-object v9, p2, v3

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v9, :cond_5

    aget-object v9, p2, v3

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v6, :cond_6

    :cond_5
    aget-object v9, p2, v1

    aget-object v9, v9, v7

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    invoke-direct {p0, p3, v5}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    move v3, v1

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v3, v7, :cond_8

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_8

    aget-object v7, p2, v3

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v7, :cond_7

    aget-object v7, p2, v3

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v6, :cond_8

    :cond_7
    aget-object v7, p2, v3

    aget-object v7, v7, v2

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    invoke-direct {p0, p3, v5}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    goto/16 :goto_12

    :cond_9
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_12

    aget-object v8, p2, v1

    aget-object v8, v8, v7

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v8, :cond_12

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_e

    aget-object v9, p2, v8

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v9, v4, :cond_e

    move v9, v2

    :goto_6
    if-le v9, v3, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ge v8, v10, :cond_b

    aget-object v10, p2, v1

    aget-object v10, v10, v9

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v10, v4, :cond_b

    aget-object v10, p2, v8

    aget-object v10, v10, v9

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v10, :cond_a

    aget-object v10, p2, v8

    aget-object v10, v10, v9

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v10, v6, :cond_b

    :cond_a
    aget-object v10, p2, v1

    aget-object v10, v10, v9

    invoke-interface {p3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    :cond_b
    invoke-direct {p0, p3, v5}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    move v8, v1

    :goto_7
    if-le v8, v3, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ge v7, v9, :cond_d

    aget-object v9, p2, v8

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v4, :cond_d

    aget-object v9, p2, v8

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v9, :cond_c

    aget-object v9, p2, v8

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v6, :cond_d

    :cond_c
    aget-object v9, p2, v8

    aget-object v9, v9, v2

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_d
    invoke-direct {p0, p3, v5}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    :cond_e
    if-lez v1, :cond_22

    add-int/lit8 v8, v1, -0x1

    aget-object v9, p2, v8

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v9, v4, :cond_22

    move v9, v2

    :goto_8
    if-le v9, v3, :cond_10

    aget-object v10, p2, v1

    aget-object v10, v10, v9

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v10, v4, :cond_10

    aget-object v10, p2, v8

    aget-object v10, v10, v9

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v10, :cond_f

    aget-object v10, p2, v8

    aget-object v10, v10, v9

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v10, v6, :cond_10

    :cond_f
    aget-object v10, p2, v1

    aget-object v10, v10, v9

    invoke-interface {p3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    :cond_10
    invoke-direct {p0, p3, v5}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    move v3, v1

    :goto_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ge v3, v8, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_8

    aget-object v8, p2, v3

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_8

    aget-object v8, p2, v3

    aget-object v8, v8, v7

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v8, :cond_11

    aget-object v8, p2, v3

    aget-object v8, v8, v7

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v6, :cond_8

    :cond_11
    aget-object v8, p2, v3

    aget-object v8, v8, v2

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_12
    if-lez v1, :cond_1a

    add-int/lit8 v8, v1, -0x1

    aget-object v9, p2, v8

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v9, :cond_1a

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v6

    if-ge v2, v9, :cond_16

    aget-object v9, p2, v1

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v9, v4, :cond_16

    move v9, v1

    :goto_a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ge v7, v10, :cond_14

    aget-object v10, p2, v9

    aget-object v10, v10, v2

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v10, v4, :cond_14

    aget-object v10, p2, v9

    aget-object v10, v10, v7

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v10, :cond_13

    aget-object v10, p2, v9

    aget-object v10, v10, v7

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v10, v6, :cond_14

    :cond_13
    aget-object v10, p2, v9

    aget-object v10, v10, v2

    invoke-interface {p3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_14
    invoke-direct {p0, p3, v5}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    move v7, v2

    :goto_b
    if-le v7, v3, :cond_8

    aget-object v9, p2, v1

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v4, :cond_8

    aget-object v9, p2, v8

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v9, :cond_15

    aget-object v9, p2, v8

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v6, :cond_8

    :cond_15
    aget-object v9, p2, v1

    aget-object v9, v9, v7

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_b

    :cond_16
    if-lez v2, :cond_22

    aget-object v3, p2, v1

    add-int/lit8 v7, v2, -0x1

    aget-object v3, v3, v7

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v3, v4, :cond_22

    move v3, v1

    :goto_c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v3, v9, :cond_18

    aget-object v9, p2, v3

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v4, :cond_18

    aget-object v9, p2, v3

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v9, :cond_17

    aget-object v9, p2, v3

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v6, :cond_18

    :cond_17
    aget-object v9, p2, v3

    aget-object v9, v9, v2

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_18
    invoke-direct {p0, p3, v5}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    move v3, v2

    :goto_d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v3, v7, :cond_8

    aget-object v7, p2, v1

    aget-object v7, v7, v3

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_8

    aget-object v7, p2, v8

    aget-object v7, v7, v3

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v7, :cond_19

    aget-object v7, p2, v8

    aget-object v7, v7, v3

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v6, :cond_8

    :cond_19
    aget-object v7, p2, v1

    aget-object v7, v7, v3

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1a
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_22

    aget-object v9, p2, v8

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v9, :cond_22

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v6

    if-ge v2, v9, :cond_1e

    aget-object v9, p2, v1

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v9, v4, :cond_1e

    move v9, v1

    :goto_e
    if-le v9, v3, :cond_1c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ge v7, v10, :cond_1c

    aget-object v10, p2, v9

    aget-object v10, v10, v2

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v10, v4, :cond_1c

    aget-object v10, p2, v9

    aget-object v10, v10, v7

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v10, :cond_1b

    aget-object v10, p2, v9

    aget-object v10, v10, v7

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v10, v6, :cond_1c

    :cond_1b
    aget-object v10, p2, v9

    aget-object v10, v10, v2

    invoke-interface {p3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, -0x1

    goto :goto_e

    :cond_1c
    invoke-direct {p0, p3, v5}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    move v7, v2

    :goto_f
    if-le v7, v3, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_8

    aget-object v9, p2, v1

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v4, :cond_8

    aget-object v9, p2, v8

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v9, :cond_1d

    aget-object v9, p2, v8

    aget-object v9, v9, v7

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v6, :cond_8

    :cond_1d
    aget-object v9, p2, v1

    aget-object v9, v9, v7

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_f

    :cond_1e
    if-lez v2, :cond_22

    aget-object v7, p2, v1

    add-int/lit8 v9, v2, -0x1

    aget-object v7, v7, v9

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v7, v4, :cond_22

    move v7, v1

    :goto_10
    if-le v7, v3, :cond_20

    aget-object v10, p2, v7

    aget-object v10, v10, v2

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v10, v4, :cond_20

    aget-object v10, p2, v7

    aget-object v10, v10, v9

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v10, :cond_1f

    aget-object v10, p2, v7

    aget-object v10, v10, v9

    iget v10, v10, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v10, v6, :cond_20

    :cond_1f
    aget-object v10, p2, v7

    aget-object v10, v10, v2

    invoke-interface {p3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_10

    :cond_20
    invoke-direct {p0, p3, v5}, Lcom/rockrobo/map/MapBuilder;->addObstacle(Ljava/util/List;I)V

    move v3, v2

    :goto_11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v3, v7, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v8, v7, :cond_8

    aget-object v7, p2, v1

    aget-object v7, v7, v3

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_8

    aget-object v7, p2, v8

    aget-object v7, v7, v3

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v7, :cond_21

    aget-object v7, p2, v8

    aget-object v7, v7, v3

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v6, :cond_8

    :cond_21
    aget-object v7, p2, v1

    aget-object v7, v7, v3

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_22
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_24
    return-void
.end method

.method public static calcMapArea([B)I
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-byte v4, p0, v0

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x1

    add-long v6, v1, v4

    move-wide v1, v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    long-to-double v0, v1

    const-wide v2, 0x40c3880000000000L    # 10000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double v0, v0, v2

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method private connectObstacle(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rockrobo/map/MapBuilder$Point;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/map/MapBuilder$Point;

    const/4 v2, 0x0

    iput v2, v1, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private delObstacle(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rockrobo/map/MapBuilder$Point;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/map/MapBuilder$Point;

    iput v1, v2, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private getQiangNum(IIII[[Lcom/rockrobo/map/MapBuilder$Point;)I
    .locals 3

    const/4 v0, 0x1

    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    aget-object v2, p5, v1

    aget-object v2, v2, p2

    if-eqz v2, :cond_0

    aget-object v1, p5, v1

    aget-object v1, v1, p2

    iget v1, v1, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge p1, p3, :cond_1

    add-int/lit8 p3, p1, 0x1

    aget-object v2, p5, p3

    aget-object v2, v2, p2

    if-eqz v2, :cond_1

    aget-object p3, p5, p3

    aget-object p3, p3, p2

    iget p3, p3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez p3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-lez p2, :cond_2

    aget-object p3, p5, p1

    add-int/lit8 v2, p2, -0x1

    aget-object p3, p3, v2

    if-eqz p3, :cond_2

    aget-object p3, p5, p1

    aget-object p3, p3, v2

    iget p3, p3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez p3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    if-ge p2, p4, :cond_3

    aget-object p3, p5, p1

    add-int/2addr p2, v0

    aget-object p3, p3, p2

    if-eqz p3, :cond_3

    aget-object p1, p5, p1

    aget-object p1, p1, p2

    iget p1, p1, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez p1, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    return v1
.end method

.method private handleFinally(Landroid/graphics/Bitmap;[[Lcom/rockrobo/map/MapBuilder$Point;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_18

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_17

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_8

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    aget-object v3, p2, v3

    aget-object v3, v3, v2

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    aget-object v3, p2, v1

    add-int/lit8 v6, v2, -0x1

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    aget-object v3, v3, v2

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_0

    aget-object v3, p2, v1

    add-int/lit8 v6, v2, 0x1

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eqz v3, :cond_0

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v5, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_1

    if-lez v2, :cond_1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_1

    add-int/lit8 v7, v1, -0x1

    aget-object v8, p2, v7

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v5, :cond_1

    aget-object v8, p2, v7

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v5, :cond_1

    aget-object v8, p2, v1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v5, :cond_1

    aget-object v8, p2, v3

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v8, :cond_1

    aget-object v8, p2, v3

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v8, :cond_1

    aget-object v7, p2, v7

    aget-object v7, v7, v6

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_1

    aget-object v7, p2, v1

    aget-object v7, v7, v6

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_1

    aget-object v7, p2, v3

    aget-object v7, v7, v6

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_1

    aget-object v3, p2, v3

    aget-object v3, v3, v6

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v5, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_1
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_2

    if-lez v2, :cond_2

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_2

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v5, :cond_2

    aget-object v7, p2, v3

    aget-object v7, v7, v6

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v5, :cond_2

    aget-object v7, p2, v1

    aget-object v7, v7, v6

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v5, :cond_2

    aget-object v7, p2, v1

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_2

    aget-object v3, p2, v3

    aget-object v3, v3, v8

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_2

    add-int/lit8 v3, v1, -0x1

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_2

    aget-object v7, p2, v3

    aget-object v6, v7, v6

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v6, :cond_2

    aget-object v6, p2, v3

    aget-object v6, v6, v8

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v6, v4, :cond_2

    aget-object v3, p2, v3

    aget-object v3, v3, v8

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v5, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_2
    if-lez v1, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_3

    if-lez v2, :cond_3

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_3

    add-int/lit8 v7, v1, -0x1

    aget-object v8, p2, v7

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v5, :cond_3

    aget-object v8, p2, v7

    aget-object v8, v8, v6

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v5, :cond_3

    aget-object v8, p2, v1

    aget-object v8, v8, v6

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v5, :cond_3

    aget-object v7, p2, v7

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_3

    aget-object v7, p2, v1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_3

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_3

    aget-object v7, p2, v3

    aget-object v6, v7, v6

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v6, :cond_3

    aget-object v6, p2, v3

    aget-object v6, v6, v8

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v6, v4, :cond_3

    aget-object v3, p2, v3

    aget-object v3, v3, v8

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v5, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_3
    if-lez v1, :cond_4

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_4

    if-lez v2, :cond_4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_4

    aget-object v7, p2, v1

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v5, :cond_4

    aget-object v7, p2, v3

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v5, :cond_4

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v5, :cond_4

    add-int/lit8 v7, v1, -0x1

    aget-object v9, p2, v7

    aget-object v8, v9, v8

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v8, :cond_4

    aget-object v8, p2, v7

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v8, :cond_4

    aget-object v8, p2, v1

    aget-object v8, v8, v6

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v8, :cond_4

    aget-object v3, p2, v3

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_4

    aget-object v3, p2, v7

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v4, :cond_4

    aget-object v3, p2, v7

    aget-object v3, v3, v6

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v5, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_4
    if-lez v1, :cond_5

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_5

    if-lez v2, :cond_5

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_5

    aget-object v6, p2, v3

    aget-object v6, v6, v2

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v6, v4, :cond_5

    aget-object v6, p2, v3

    aget-object v6, v6, v5

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v6, v4, :cond_5

    aget-object v6, p2, v1

    aget-object v6, v6, v5

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v6, v4, :cond_5

    aget-object v3, p2, v3

    add-int/lit8 v6, v2, -0x1

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_5

    aget-object v3, p2, v1

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_5

    add-int/lit8 v3, v1, -0x1

    aget-object v7, p2, v3

    aget-object v7, v7, v6

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_5

    aget-object v7, p2, v3

    aget-object v6, v7, v6

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v6, :cond_5

    aget-object v3, p2, v3

    aget-object v3, v3, v5

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_5

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v4, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_5
    if-lez v1, :cond_6

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_6

    if-lez v2, :cond_6

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_6

    add-int/lit8 v6, v1, -0x1

    aget-object v7, p2, v6

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_6

    aget-object v7, p2, v1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_6

    aget-object v7, p2, v6

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_6

    aget-object v7, p2, v3

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_6

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_6

    aget-object v3, p2, v3

    aget-object v3, v3, v5

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_6

    aget-object v3, p2, v1

    aget-object v3, v3, v5

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_6

    aget-object v3, p2, v6

    aget-object v3, v3, v5

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_6

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v4, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_6
    if-lez v1, :cond_7

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_7

    if-lez v2, :cond_7

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_7

    aget-object v6, p2, v1

    add-int/lit8 v7, v2, -0x1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v6, v4, :cond_7

    aget-object v6, p2, v3

    aget-object v6, v6, v7

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v6, v4, :cond_7

    aget-object v6, p2, v1

    aget-object v6, v6, v5

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v6, v4, :cond_7

    add-int/lit8 v6, v1, -0x1

    aget-object v8, p2, v6

    aget-object v7, v8, v7

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_7

    aget-object v7, p2, v6

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_7

    aget-object v6, p2, v6

    aget-object v6, v6, v5

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v6, :cond_7

    aget-object v6, p2, v1

    aget-object v6, v6, v5

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v6, :cond_7

    aget-object v3, p2, v3

    aget-object v3, v3, v5

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_7

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v4, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_7
    if-lez v1, :cond_16

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_16

    if-lez v2, :cond_16

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_16

    add-int/lit8 v6, v1, -0x1

    aget-object v7, p2, v6

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_16

    aget-object v7, p2, v6

    aget-object v7, v7, v5

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_16

    aget-object v7, p2, v1

    aget-object v7, v7, v5

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_16

    aget-object v6, p2, v6

    add-int/lit8 v7, v2, -0x1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v6, :cond_16

    aget-object v6, p2, v1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v6, :cond_16

    aget-object v6, p2, v3

    aget-object v6, v6, v7

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v6, :cond_16

    aget-object v6, p2, v3

    aget-object v6, v6, v2

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v6, :cond_16

    aget-object v3, p2, v3

    aget-object v3, v3, v5

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_16

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v4, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    goto/16 :goto_2

    :cond_8
    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v4, :cond_16

    if-lez v1, :cond_9

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_9

    if-lez v2, :cond_9

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_9

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_9

    aget-object v7, p2, v3

    aget-object v7, v7, v6

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_9

    aget-object v7, p2, v1

    aget-object v7, v7, v6

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_9

    add-int/lit8 v7, v1, -0x1

    aget-object v8, p2, v7

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_9

    aget-object v8, p2, v1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_9

    aget-object v8, p2, v3

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_9

    aget-object v8, p2, v7

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_9

    aget-object v7, p2, v7

    aget-object v7, v7, v6

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_9

    aget-object v3, p2, v3

    aget-object v3, v3, v6

    iput v5, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_9
    if-lez v1, :cond_a

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_a

    if-lez v2, :cond_a

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_a

    add-int/lit8 v7, v1, -0x1

    aget-object v8, p2, v7

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v8, :cond_a

    aget-object v8, p2, v7

    aget-object v8, v8, v6

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v8, :cond_a

    aget-object v8, p2, v1

    aget-object v8, v8, v6

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v8, :cond_a

    aget-object v8, p2, v7

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_a

    aget-object v8, p2, v1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_a

    aget-object v8, p2, v3

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_a

    aget-object v8, p2, v3

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_a

    aget-object v3, p2, v3

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v4, :cond_a

    aget-object v3, p2, v7

    aget-object v3, v3, v6

    iput v5, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_a
    if-lez v1, :cond_b

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_b

    if-lez v2, :cond_b

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_b

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_b

    aget-object v7, p2, v1

    aget-object v7, v7, v6

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_b

    add-int/lit8 v7, v1, -0x1

    aget-object v8, p2, v7

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_b

    aget-object v8, p2, v1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_b

    aget-object v8, p2, v3

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_b

    aget-object v8, p2, v7

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_b

    aget-object v7, p2, v7

    aget-object v7, v7, v6

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_b

    aget-object v3, p2, v3

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v5, :cond_b

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_b
    if-lez v1, :cond_c

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_c

    if-lez v2, :cond_c

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_c

    add-int/lit8 v7, v1, -0x1

    aget-object v8, p2, v7

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v8, :cond_c

    aget-object v8, p2, v1

    aget-object v8, v8, v6

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v8, :cond_c

    aget-object v8, p2, v7

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_c

    aget-object v8, p2, v1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_c

    aget-object v8, p2, v3

    aget-object v8, v8, v9

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_c

    aget-object v8, p2, v3

    aget-object v8, v8, v2

    iget v8, v8, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v8, v4, :cond_c

    aget-object v3, p2, v3

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v4, :cond_c

    aget-object v3, p2, v7

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v5, :cond_c

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_c
    if-lez v1, :cond_d

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_d

    if-lez v2, :cond_d

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_d

    aget-object v7, p2, v1

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_d

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_d

    add-int/lit8 v7, v1, -0x1

    aget-object v9, p2, v7

    aget-object v9, v9, v8

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v4, :cond_d

    aget-object v7, p2, v7

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_d

    aget-object v7, p2, v3

    aget-object v7, v7, v6

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_d

    aget-object v7, p2, v1

    aget-object v7, v7, v6

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v4, :cond_d

    aget-object v7, p2, v3

    aget-object v6, v7, v6

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v6, v4, :cond_d

    aget-object v3, p2, v3

    aget-object v3, v3, v8

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v5, :cond_d

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_d
    if-lez v1, :cond_e

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_e

    if-lez v2, :cond_e

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_e

    aget-object v7, p2, v1

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_e

    add-int/lit8 v7, v1, -0x1

    aget-object v9, p2, v7

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v9, :cond_e

    aget-object v9, p2, v3

    aget-object v9, v9, v8

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v4, :cond_e

    aget-object v9, p2, v3

    aget-object v9, v9, v2

    iget v9, v9, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v9, v4, :cond_e

    aget-object v3, p2, v3

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v4, :cond_e

    aget-object v3, p2, v1

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v4, :cond_e

    aget-object v3, p2, v7

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v4, :cond_e

    aget-object v3, p2, v7

    aget-object v3, v3, v8

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v5, :cond_e

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_e
    if-nez v1, :cond_10

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v4, :cond_10

    if-lez v2, :cond_f

    aget-object v3, p2, v1

    add-int/lit8 v6, v2, -0x1

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_f

    add-int/lit8 v3, v1, 0x1

    aget-object v7, p2, v3

    aget-object v6, v7, v6

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v6, v5, :cond_f

    aget-object v3, p2, v3

    aget-object v3, v3, v2

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_f

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_f
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v3, v6, :cond_10

    add-int/lit8 v6, v1, 0x1

    aget-object v7, p2, v6

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_10

    aget-object v7, p2, v1

    aget-object v7, v7, v3

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v7, v5, :cond_10

    aget-object v6, p2, v6

    aget-object v3, v6, v3

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_10

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v5

    if-ne v1, v3, :cond_12

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v4, :cond_12

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v3, v6, :cond_11

    add-int/lit8 v6, v1, -0x1

    aget-object v7, p2, v6

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_11

    aget-object v7, p2, v1

    aget-object v7, v7, v3

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_11

    aget-object v6, p2, v6

    aget-object v3, v6, v3

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v5, :cond_11

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_11
    if-lez v2, :cond_12

    aget-object v3, p2, v1

    add-int/lit8 v6, v2, -0x1

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_12

    add-int/lit8 v3, v1, -0x1

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_12

    aget-object v3, p2, v3

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v5, :cond_12

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_12
    if-nez v2, :cond_14

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v4, :cond_14

    if-lez v1, :cond_13

    add-int/lit8 v3, v1, -0x1

    aget-object v6, p2, v3

    aget-object v6, v6, v2

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v6, :cond_13

    aget-object v3, p2, v3

    add-int/lit8 v6, v2, 0x1

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v5, :cond_13

    aget-object v3, p2, v1

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_13

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_13
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_14

    aget-object v6, p2, v3

    aget-object v6, v6, v2

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v6, :cond_14

    aget-object v3, p2, v3

    add-int/lit8 v6, v2, 0x1

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v5, :cond_14

    aget-object v3, p2, v1

    aget-object v3, v3, v6

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_14

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v5

    if-ne v2, v3, :cond_16

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v4, :cond_16

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_15

    aget-object v4, p2, v1

    add-int/lit8 v6, v2, -0x1

    aget-object v4, v4, v6

    iget v4, v4, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v4, :cond_15

    aget-object v4, p2, v3

    aget-object v4, v4, v6

    iget v4, v4, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v4, v5, :cond_15

    aget-object v3, p2, v3

    aget-object v3, v3, v2

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_15

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_15
    if-lez v1, :cond_16

    add-int/lit8 v3, v1, -0x1

    aget-object v4, p2, v3

    aget-object v4, v4, v2

    iget v4, v4, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v4, :cond_16

    aget-object v3, p2, v3

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v3, v5, :cond_16

    aget-object v3, p2, v1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_16

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iput v0, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    :cond_16
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_18
    return-void
.end method

.method private reduceWalk(Landroid/graphics/Bitmap;[[Lcom/rockrobo/map/MapBuilder$Point;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "[[",
            "Lcom/rockrobo/map/MapBuilder$Point;",
            "Ljava/util/List<",
            "Lcom/rockrobo/map/MapBuilder$Point;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_13

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_12

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_11

    const/4 v3, 0x2

    if-lez v2, :cond_0

    aget-object v4, p2, v1

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v4, v3, :cond_1

    :cond_0
    if-nez v2, :cond_3

    :cond_1
    if-lez v1, :cond_3

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p2, v4

    aget-object v4, v4, v2

    iget v4, v4, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_3

    aget-object v4, p2, v4

    aget-object v4, v4, v2

    iget v4, v4, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    aget-object v5, p2, v1

    aget-object v5, v5, v4

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v5, :cond_2

    aget-object v5, p2, v1

    aget-object v5, v5, v4

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0, p3}, Lcom/rockrobo/map/MapBuilder;->delObstacle(Ljava/util/List;)V

    :cond_3
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, -0x1

    if-ge v4, v5, :cond_4

    aget-object v5, p2, v1

    aget-object v5, v5, v4

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v5, v3, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_7

    :cond_5
    if-lez v1, :cond_7

    add-int/lit8 v5, v1, -0x1

    aget-object v5, p2, v5

    aget-object v5, v5, v2

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v5, :cond_7

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v5, v7, :cond_7

    aget-object v5, p2, v5

    aget-object v5, v5, v2

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v5, :cond_7

    add-int/lit8 v5, v2, -0x1

    :goto_3
    if-le v5, v6, :cond_6

    aget-object v7, p2, v1

    aget-object v7, v7, v5

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_6

    aget-object v7, p2, v1

    aget-object v7, v7, v5

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_6
    invoke-direct {p0, p3}, Lcom/rockrobo/map/MapBuilder;->delObstacle(Ljava/util/List;)V

    :cond_7
    if-lez v1, :cond_8

    add-int/lit8 v5, v1, -0x1

    aget-object v5, p2, v5

    aget-object v5, v5, v2

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v5, v3, :cond_9

    :cond_8
    if-nez v1, :cond_b

    :cond_9
    if-lez v2, :cond_b

    aget-object v5, p2, v1

    add-int/lit8 v7, v2, -0x1

    aget-object v5, v5, v7

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v5, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_b

    aget-object v5, p2, v1

    aget-object v5, v5, v4

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v5, :cond_b

    add-int/lit8 v5, v1, 0x1

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_a

    aget-object v7, p2, v5

    aget-object v7, v7, v2

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v7, :cond_a

    aget-object v7, p2, v5

    aget-object v7, v7, v2

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    invoke-direct {p0, p3}, Lcom/rockrobo/map/MapBuilder;->delObstacle(Ljava/util/List;)V

    :cond_b
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v5, v7, :cond_c

    aget-object v5, p2, v5

    aget-object v5, v5, v2

    iget v5, v5, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-eq v5, v3, :cond_d

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_f

    :cond_d
    if-lez v2, :cond_f

    aget-object v3, p2, v1

    add-int/lit8 v5, v2, -0x1

    aget-object v3, v3, v5

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_f

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v4, v3, :cond_f

    aget-object v3, p2, v1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v3, :cond_f

    add-int/lit8 v3, v1, -0x1

    :goto_5
    if-le v3, v6, :cond_e

    aget-object v4, p2, v3

    aget-object v4, v4, v2

    iget v4, v4, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v4, :cond_e

    aget-object v4, p2, v3

    aget-object v4, v4, v2

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_e
    invoke-direct {p0, p3}, Lcom/rockrobo/map/MapBuilder;->delObstacle(Ljava/util/List;)V

    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_11

    add-int/lit8 v3, v1, -0x1

    :goto_6
    if-le v3, v6, :cond_10

    aget-object v4, p2, v3

    aget-object v4, v4, v2

    iget v4, v4, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v4, :cond_10

    aget-object v4, p2, v3

    aget-object v4, v4, v2

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_10
    invoke-direct {p0, p3}, Lcom/rockrobo/map/MapBuilder;->delObstacle(Ljava/util/List;)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method


# virtual methods
.method public createMap(Lcom/rockrobo/map/MapInfo;)Landroid/graphics/Bitmap;
    .locals 11

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getWidth()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getHeight()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/rockrobo/map/MapBuilder$Point;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/rockrobo/map/MapBuilder$Point;

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p1, Lcom/rockrobo/map/MapInfo;->top:I

    :goto_0
    iget v3, p1, Lcom/rockrobo/map/MapInfo;->bottom:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_4

    iget v3, p1, Lcom/rockrobo/map/MapInfo;->left:I

    :goto_1
    iget v6, p1, Lcom/rockrobo/map/MapInfo;->right:I

    if-ge v3, v6, :cond_3

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getMapData()[B

    move-result-object v6

    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getRowStride()I

    move-result v7

    mul-int v7, v7, v2

    add-int/2addr v7, v3

    aget-byte v6, v6, v7

    iget v7, p1, Lcom/rockrobo/map/MapInfo;->right:I

    sub-int/2addr v7, v3

    sub-int/2addr v7, v5

    iget v8, p1, Lcom/rockrobo/map/MapInfo;->bottom:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v5

    const/4 v9, 0x2

    if-nez v6, :cond_1

    aget-object v6, v0, v7

    new-instance v10, Lcom/rockrobo/map/MapBuilder$Point;

    invoke-direct {v10, p0, v7, v8, v9}, Lcom/rockrobo/map/MapBuilder$Point;-><init>(Lcom/rockrobo/map/MapBuilder;III)V

    aput-object v10, v6, v8

    goto :goto_2

    :cond_1
    if-ne v6, v9, :cond_2

    aget-object v6, v0, v7

    new-instance v9, Lcom/rockrobo/map/MapBuilder$Point;

    invoke-direct {v9, p0, v7, v8, v4}, Lcom/rockrobo/map/MapBuilder$Point;-><init>(Lcom/rockrobo/map/MapBuilder;III)V

    aput-object v9, v6, v8

    goto :goto_2

    :cond_2
    aget-object v6, v0, v7

    new-instance v9, Lcom/rockrobo/map/MapBuilder$Point;

    invoke-direct {v9, p0, v7, v8, v5}, Lcom/rockrobo/map/MapBuilder$Point;-><init>(Lcom/rockrobo/map/MapBuilder;III)V

    aput-object v9, v6, v8

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-direct {p0, v1, v0, v2}, Lcom/rockrobo/map/MapBuilder;->addUnknownEdgePoint(Landroid/graphics/Bitmap;[[Lcom/rockrobo/map/MapBuilder$Point;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/rockrobo/map/MapBuilder;->add2Obstacle()V

    invoke-direct {p0, v1, v0, v2}, Lcom/rockrobo/map/MapBuilder;->addCleanedEdgePoint(Landroid/graphics/Bitmap;[[Lcom/rockrobo/map/MapBuilder$Point;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/rockrobo/map/MapBuilder;->add2Obstacle()V

    invoke-direct {p0, v1, v0, v2}, Lcom/rockrobo/map/MapBuilder;->reduceWalk(Landroid/graphics/Bitmap;[[Lcom/rockrobo/map/MapBuilder$Point;Ljava/util/List;)V

    invoke-direct {p0, v1, v0}, Lcom/rockrobo/map/MapBuilder;->handleFinally(Landroid/graphics/Bitmap;[[Lcom/rockrobo/map/MapBuilder$Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v3

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v7}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/rockrobo/map/MapBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "map error \uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-direct {p0}, Lcom/rockrobo/map/MapBuilder;->add2Obstacle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    sget-object v3, Lcom/rockrobo/map/MapBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v6, "map exception error \uff1a add2Obstacle "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    :try_start_2
    invoke-direct {p0, v1, v0, v2}, Lcom/rockrobo/map/MapBuilder;->reduceWalk(Landroid/graphics/Bitmap;[[Lcom/rockrobo/map/MapBuilder$Point;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    sget-object v2, Lcom/rockrobo/map/MapBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v3, "map exception error \uff1a reduceWalk "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    :try_start_3
    invoke-direct {p0, v1, v0}, Lcom/rockrobo/map/MapBuilder;->handleFinally(Landroid/graphics/Bitmap;[[Lcom/rockrobo/map/MapBuilder$Point;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    sget-object v2, Lcom/rockrobo/map/MapBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v3, "map exception error \uff1a handleFinally "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_a

    const/4 v3, 0x0

    :goto_8
    invoke-virtual {p1}, Lcom/rockrobo/map/MapInfo;->getHeight()I

    move-result v6

    if-ge v3, v6, :cond_9

    aget-object v6, v0, v2

    aget-object v6, v6, v3

    if-eqz v6, :cond_8

    aget-object v6, v0, v2

    aget-object v6, v6, v3

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-nez v6, :cond_6

    aget-object v6, v0, v2

    aget-object v6, v6, v3

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->x:I

    aget-object v7, v0, v2

    aget-object v7, v7, v3

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->y:I

    iget-object v8, p0, Lcom/rockrobo/map/MapBuilder;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v9, p0, Lcom/rockrobo/map/MapBuilder;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v8, v9}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getObstacleColor(Lcom/rockrobo/clean/RobotStatus;)I

    move-result v8

    :goto_9
    invoke-virtual {v1, v6, v7, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto :goto_a

    :cond_6
    aget-object v6, v0, v2

    aget-object v6, v6, v3

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    aget-object v6, v0, v2

    aget-object v6, v6, v3

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->x:I

    aget-object v7, v0, v2

    aget-object v7, v7, v3

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->y:I

    const v8, -0x777778

    goto :goto_9

    :cond_7
    aget-object v6, v0, v2

    aget-object v6, v6, v3

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->flag:I

    if-ne v6, v5, :cond_8

    aget-object v6, v0, v2

    aget-object v6, v6, v3

    iget v6, v6, Lcom/rockrobo/map/MapBuilder$Point;->x:I

    aget-object v7, v0, v2

    aget-object v7, v7, v3

    iget v7, v7, Lcom/rockrobo/map/MapBuilder$Point;->y:I

    iget-object v8, p0, Lcom/rockrobo/map/MapBuilder;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    iget-object v9, p0, Lcom/rockrobo/map/MapBuilder;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v8, v9}, Lcom/rockrobo/map/MapViewBaseResourceManager;->getCleanAreaColor(Lcom/rockrobo/clean/RobotStatus;)I

    move-result v8

    goto :goto_9

    :cond_8
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    return-object v1

    :cond_b
    :goto_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResourceManager()Lcom/rockrobo/map/MapViewBaseResourceManager;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapBuilder;->resourceManager:Lcom/rockrobo/map/MapViewBaseResourceManager;

    return-object v0
.end method

.method public getRobotStatus()Lcom/rockrobo/clean/RobotStatus;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/map/MapBuilder;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    return-object v0
.end method

.method public setRobotStatus(Lcom/rockrobo/clean/RobotStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/map/MapBuilder;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    return-void
.end method
