.class public Lcom/rockrobo/common/Particle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/common/Particle$XDecreaseComparator;,
        Lcom/rockrobo/common/Particle$YIncreaseComparator;
    }
.end annotation


# static fields
.field private static ALPHAS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static RADIUS:[I


# instance fields
.field public final alpha:I

.field private final directionX:F

.field private final directionY:F

.field public final radius:I

.field public startTimeMillis:J

.field private final startX:F

.field private final startY:F

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/common/Particle;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/common/Particle;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/rockrobo/common/Particle;->RADIUS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/rockrobo/common/Particle;->ALPHAS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0xa
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x66
        0xaa
        0xcc
    .end array-data
.end method

.method public constructor <init>(FFJLandroid/graphics/PointF;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rockrobo/common/Particle;->x:F

    iput p1, p0, Lcom/rockrobo/common/Particle;->startX:F

    iput p2, p0, Lcom/rockrobo/common/Particle;->y:F

    iput p2, p0, Lcom/rockrobo/common/Particle;->startY:F

    iput-wide p3, p0, Lcom/rockrobo/common/Particle;->startTimeMillis:J

    iget p3, p5, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, p1

    div-float/2addr p3, p6

    iput p3, p0, Lcom/rockrobo/common/Particle;->directionX:F

    iget p1, p5, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    div-float/2addr p1, p6

    iput p1, p0, Lcom/rockrobo/common/Particle;->directionY:F

    sget-object p1, Lcom/rockrobo/common/Particle;->RADIUS:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    sget-object p4, Lcom/rockrobo/common/Particle;->RADIUS:[I

    array-length p4, p4

    int-to-double p4, p4

    mul-double p2, p2, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    aget p1, p1, p2

    iput p1, p0, Lcom/rockrobo/common/Particle;->radius:I

    sget-object p1, Lcom/rockrobo/common/Particle;->ALPHAS:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    sget-object p4, Lcom/rockrobo/common/Particle;->ALPHAS:[I

    array-length p4, p4

    int-to-double p4, p4

    mul-double p2, p2, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    aget p1, p1, p2

    iput p1, p0, Lcom/rockrobo/common/Particle;->alpha:I

    return-void
.end method


# virtual methods
.method public tick()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rockrobo/common/Particle;->startTimeMillis:J

    sub-long v4, v0, v2

    long-to-float v0, v4

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/rockrobo/common/Particle;->startX:F

    iget v2, p0, Lcom/rockrobo/common/Particle;->directionX:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/rockrobo/common/Particle;->x:F

    iget v1, p0, Lcom/rockrobo/common/Particle;->startY:F

    iget v2, p0, Lcom/rockrobo/common/Particle;->directionY:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/rockrobo/common/Particle;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Particle{startX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/common/Particle;->startX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/common/Particle;->startY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/rockrobo/common/Particle;->startTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/common/Particle;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/common/Particle;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/common/Particle;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
