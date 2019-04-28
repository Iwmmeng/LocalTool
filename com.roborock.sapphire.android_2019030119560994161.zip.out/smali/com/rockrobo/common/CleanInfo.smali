.class public Lcom/rockrobo/common/CleanInfo;
.super Ljava/lang/Object;


# static fields
.field public static final NUMBER_NONE:I = -0x1


# instance fields
.field private final batteryLevel:I

.field private final cleanArea:I

.field private final cleanDuration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rockrobo/common/CleanInfo;->cleanArea:I

    iput v0, p0, Lcom/rockrobo/common/CleanInfo;->cleanDuration:I

    iput v0, p0, Lcom/rockrobo/common/CleanInfo;->batteryLevel:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rockrobo/common/CleanInfo;->cleanArea:I

    int-to-float p1, p2

    const/high16 p2, 0x42700000    # 60.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/rockrobo/common/CleanInfo;->cleanDuration:I

    iput p3, p0, Lcom/rockrobo/common/CleanInfo;->batteryLevel:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/rockrobo/common/CleanInfo;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/rockrobo/common/CleanInfo;

    iget v1, p1, Lcom/rockrobo/common/CleanInfo;->cleanArea:I

    iget v2, p0, Lcom/rockrobo/common/CleanInfo;->cleanArea:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/rockrobo/common/CleanInfo;->cleanDuration:I

    iget v2, p0, Lcom/rockrobo/common/CleanInfo;->cleanDuration:I

    if-ne v1, v2, :cond_1

    iget p1, p1, Lcom/rockrobo/common/CleanInfo;->batteryLevel:I

    iget v1, p0, Lcom/rockrobo/common/CleanInfo;->batteryLevel:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getBatteryLevel()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/common/CleanInfo;->batteryLevel:I

    return v0
.end method

.method public getCleanArea()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/common/CleanInfo;->cleanArea:I

    return v0
.end method

.method public getCleanDuration()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/common/CleanInfo;->cleanDuration:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/rockrobo/common/CleanInfo;->cleanArea:I

    iget v1, p0, Lcom/rockrobo/common/CleanInfo;->cleanDuration:I

    add-int/lit8 v1, v1, 0x10

    shl-int/2addr v0, v1

    iget v1, p0, Lcom/rockrobo/common/CleanInfo;->batteryLevel:I

    add-int/lit8 v1, v1, 0x8

    shl-int/2addr v0, v1

    return v0
.end method
