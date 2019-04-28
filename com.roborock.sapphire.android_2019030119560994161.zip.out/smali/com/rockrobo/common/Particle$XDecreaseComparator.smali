.class public Lcom/rockrobo/common/Particle$XDecreaseComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/common/Particle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XDecreaseComparator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/rockrobo/common/Particle;

    check-cast p2, Lcom/rockrobo/common/Particle;

    iget v0, p1, Lcom/rockrobo/common/Particle;->x:F

    iget v1, p2, Lcom/rockrobo/common/Particle;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget p1, p1, Lcom/rockrobo/common/Particle;->x:F

    iget p2, p2, Lcom/rockrobo/common/Particle;->x:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
