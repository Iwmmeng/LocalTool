.class public Lcom/rockrobo/common/ParticleGenerator;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PARTICLE_MOVE_SPEED:F = 1000.0f

.field public static final PARTS_NUMBER:I = 0x3


# instance fields
.field private final limit:I

.field private nextPart:I

.field private particles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/rockrobo/common/Particle;",
            ">;"
        }
    .end annotation
.end field

.field private final rangRectF:Landroid/graphics/RectF;

.field private final target:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/common/ParticleGenerator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/common/ParticleGenerator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lcom/rockrobo/common/ParticleGenerator;->nextPart:I

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/rockrobo/common/ParticleGenerator;->particles:Ljava/util/LinkedList;

    iput v1, v0, Lcom/rockrobo/common/ParticleGenerator;->limit:I

    iput-object v2, v0, Lcom/rockrobo/common/ParticleGenerator;->rangRectF:Landroid/graphics/RectF;

    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/rockrobo/common/ParticleGenerator;->target:Landroid/graphics/PointF;

    sget-object v5, Lcom/rockrobo/common/ParticleGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "range rect:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v12, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, v0, Lcom/rockrobo/common/ParticleGenerator;->rangRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float v13, v5, v6

    iget-object v5, v0, Lcom/rockrobo/common/ParticleGenerator;->rangRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v14, v5, v6

    const/4 v15, 0x0

    :goto_0
    const/4 v11, 0x3

    if-ge v15, v11, :cond_1

    const/4 v10, 0x0

    :goto_1
    div-int/lit8 v5, v1, 0x3

    if-ge v10, v5, :cond_0

    int-to-float v5, v15

    mul-float v6, v5, v13

    add-float/2addr v6, v12

    float-to-double v6, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    move/from16 v16, v12

    float-to-double v11, v13

    mul-double v8, v8, v11

    add-double/2addr v6, v8

    double-to-int v6, v6

    mul-float v5, v5, v14

    add-float/2addr v5, v2

    float-to-double v7, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    float-to-double v3, v14

    mul-double v11, v11, v3

    add-double/2addr v7, v11

    double-to-int v3, v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    new-instance v4, Lcom/rockrobo/common/Particle;

    int-to-float v6, v6

    int-to-float v7, v3

    const/high16 v11, 0x447a0000    # 1000.0f

    move-object v5, v4

    move v3, v10

    move-object/from16 v10, p3

    const/4 v12, 0x3

    invoke-direct/range {v5 .. v11}, Lcom/rockrobo/common/Particle;-><init>(FFJLandroid/graphics/PointF;F)V

    iget-object v5, v0, Lcom/rockrobo/common/ParticleGenerator;->particles:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v10, v3, 0x1

    move-object/from16 v4, p3

    move/from16 v12, v16

    const/4 v3, 0x0

    const/4 v11, 0x3

    goto :goto_1

    :cond_0
    move/from16 v16, v12

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, p3

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/rockrobo/common/ParticleGenerator;->particles:Ljava/util/LinkedList;

    new-instance v2, Lcom/rockrobo/common/Particle$XDecreaseComparator;

    invoke-direct {v2}, Lcom/rockrobo/common/Particle$XDecreaseComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, v0, Lcom/rockrobo/common/ParticleGenerator;->particles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/common/Particle;

    sget-object v3, Lcom/rockrobo/common/ParticleGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flake:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/common/ParticleGenerator;->rangRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method public getParticles()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/rockrobo/common/Particle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rockrobo/common/ParticleGenerator;->particles:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getTop()F
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/common/ParticleGenerator;->rangRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public tick()V
    .locals 11

    iget-object v0, p0, Lcom/rockrobo/common/ParticleGenerator;->particles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/common/Particle;

    invoke-virtual {v1}, Lcom/rockrobo/common/Particle;->tick()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/common/ParticleGenerator;->particles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rockrobo/common/Particle;

    iget-object v4, p0, Lcom/rockrobo/common/ParticleGenerator;->rangRectF:Landroid/graphics/RectF;

    iget v5, v3, Lcom/rockrobo/common/Particle;->x:F

    iget v6, v3, Lcom/rockrobo/common/Particle;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    sget-object v4, Lcom/rockrobo/common/ParticleGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "to remove particle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v2, :cond_4

    iget v0, p0, Lcom/rockrobo/common/ParticleGenerator;->nextPart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rockrobo/common/ParticleGenerator;->nextPart:I

    iget v0, p0, Lcom/rockrobo/common/ParticleGenerator;->nextPart:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_3

    iget v0, p0, Lcom/rockrobo/common/ParticleGenerator;->nextPart:I

    rem-int/2addr v0, v3

    iput v0, p0, Lcom/rockrobo/common/ParticleGenerator;->nextPart:I

    :cond_3
    iget-object v0, p0, Lcom/rockrobo/common/ParticleGenerator;->rangRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/rockrobo/common/ParticleGenerator;->rangRectF:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/rockrobo/common/ParticleGenerator;->rangRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/rockrobo/common/ParticleGenerator;->nextPart:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    float-to-double v8, v0

    mul-double v6, v6, v8

    add-double/2addr v3, v6

    double-to-int v0, v3

    int-to-float v6, v0

    new-instance v0, Lcom/rockrobo/common/Particle;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/rockrobo/common/ParticleGenerator;->target:Landroid/graphics/PointF;

    const/high16 v10, 0x447a0000    # 1000.0f

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/rockrobo/common/Particle;-><init>(FFJLandroid/graphics/PointF;F)V

    iget-object v3, p0, Lcom/rockrobo/common/ParticleGenerator;->particles:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
