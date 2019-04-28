.class public Lcom/rockrobo/ui/ListHeartbeatView;
.super Lcom/rockrobo/ui/HeartBeatView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private buttonResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;",
            ">;"
        }
    .end annotation
.end field

.field private currentButtonResource:Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

.field private currentCleanMode:Lcom/rockrobo/common/CleanMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/ui/ListHeartbeatView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/ui/ListHeartbeatView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/HeartBeatView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/ui/ListHeartbeatView;->buttonResources:Ljava/util/ArrayList;

    sget-object p1, Lcom/rockrobo/common/CleanMode;->STANDARD:Lcom/rockrobo/common/CleanMode;

    iput-object p1, p0, Lcom/rockrobo/ui/ListHeartbeatView;->currentCleanMode:Lcom/rockrobo/common/CleanMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rockrobo/ui/HeartBeatView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/ui/ListHeartbeatView;->buttonResources:Ljava/util/ArrayList;

    sget-object p1, Lcom/rockrobo/common/CleanMode;->STANDARD:Lcom/rockrobo/common/CleanMode;

    iput-object p1, p0, Lcom/rockrobo/ui/ListHeartbeatView;->currentCleanMode:Lcom/rockrobo/common/CleanMode;

    return-void
.end method

.method private cleanModePresent(Lcom/rockrobo/common/CleanMode;)Z
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/ListHeartbeatView;->buttonResources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    invoke-static {v1}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$000(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Lcom/rockrobo/common/CleanMode;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/rockrobo/common/CleanMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getButtonResourceIdx(Lcom/rockrobo/common/CleanMode;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/rockrobo/ui/ListHeartbeatView;->buttonResources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/rockrobo/ui/ListHeartbeatView;->buttonResources:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    invoke-static {v2}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$000(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Lcom/rockrobo/common/CleanMode;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/rockrobo/common/CleanMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getCurrentButtonResource()Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;
    .locals 4

    iget-boolean v0, p0, Lcom/rockrobo/ui/ListHeartbeatView;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/ListHeartbeatView;->currentButtonResource:Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/ListHeartbeatView;->currentButtonResource:Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/ui/ListHeartbeatView;->buttonResources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    invoke-static {v1}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$000(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Lcom/rockrobo/common/CleanMode;

    move-result-object v2

    iget-object v3, p0, Lcom/rockrobo/ui/ListHeartbeatView;->currentCleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v2, v3}, Lcom/rockrobo/common/CleanMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/rockrobo/ui/ListHeartbeatView;->currentButtonResource:Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    iget-object v0, p0, Lcom/rockrobo/ui/ListHeartbeatView;->currentButtonResource:Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    return-object v0

    :cond_2
    sget-object v0, Lcom/rockrobo/common/CleanMode;->STANDARD:Lcom/rockrobo/common/CleanMode;

    iput-object v0, p0, Lcom/rockrobo/ui/ListHeartbeatView;->currentCleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-direct {p0}, Lcom/rockrobo/ui/ListHeartbeatView;->getCurrentButtonResource()Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addChangeImageText(Lcom/rockrobo/common/CleanMode;III)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/ListHeartbeatView;->cleanModePresent(Lcom/rockrobo/common/CleanMode;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/ui/ListHeartbeatView;->buttonResources:Ljava/util/ArrayList;

    new-instance v7, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;-><init>(Lcom/rockrobo/ui/ListHeartbeatView;Lcom/rockrobo/common/CleanMode;III)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public destroyResources()V
    .locals 3

    invoke-super {p0}, Lcom/rockrobo/ui/HeartBeatView;->destroyResources()V

    iget-object v0, p0, Lcom/rockrobo/ui/ListHeartbeatView;->buttonResources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    invoke-static {v1}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$500(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$500(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$500(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 3

    sget-object v0, Lcom/rockrobo/ui/ListHeartbeatView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCurrentBitmap entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/rockrobo/ui/ListHeartbeatView$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    iget-object v1, p0, Lcom/rockrobo/ui/ListHeartbeatView;->robotStatus:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/rockrobo/ui/ListHeartbeatView;->getCurrentButtonResource()Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    move-result-object v0

    invoke-static {v0}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$500(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/ui/ListHeartbeatView;->getCurrentButtonResource()Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/ListHeartbeatView;->resource:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/rockrobo/ui/ListHeartbeatView;->getCurrentButtonResource()Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    move-result-object v2

    invoke-static {v2}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$600(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$502(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/ui/ListHeartbeatView;->getCurrentButtonResource()Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    move-result-object v0

    invoke-static {v0}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$500(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/rockrobo/ui/ListHeartbeatView;->getCurrentButtonResource()Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    move-result-object v0

    invoke-static {v0}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$300(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/rockrobo/ui/ListHeartbeatView;->getCurrentButtonResource()Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/ui/ListHeartbeatView;->resource:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/rockrobo/ui/ListHeartbeatView;->getCurrentButtonResource()Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    move-result-object v2

    invoke-static {v2}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$400(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$302(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_2
    invoke-direct {p0}, Lcom/rockrobo/ui/ListHeartbeatView;->getCurrentButtonResource()Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    move-result-object v0

    invoke-static {v0}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$300(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentText()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/rockrobo/ui/ListHeartbeatView;->getCurrentButtonResource()Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    move-result-object v0

    invoke-static {v0}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$100(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/rockrobo/ui/ListHeartbeatView;->resource:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$200(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$102(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$100(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCleanMode()Lcom/rockrobo/common/CleanMode;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/ui/ListHeartbeatView;->currentCleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-direct {p0, v0}, Lcom/rockrobo/ui/ListHeartbeatView;->getButtonResourceIdx(Lcom/rockrobo/common/CleanMode;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/rockrobo/ui/ListHeartbeatView;->buttonResources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/rockrobo/ui/ListHeartbeatView;->buttonResources:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    invoke-static {v0}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$000(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Lcom/rockrobo/common/CleanMode;

    move-result-object v0

    return-object v0
.end method

.method public insertCleanModeResource(Lcom/rockrobo/common/CleanMode;Lcom/rockrobo/common/CleanMode;III)V
    .locals 7

    invoke-direct {p0, p2}, Lcom/rockrobo/ui/ListHeartbeatView;->getButtonResourceIdx(Lcom/rockrobo/common/CleanMode;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/rockrobo/ui/ListHeartbeatView;->getButtonResourceIdx(Lcom/rockrobo/common/CleanMode;)I

    move-result p1

    new-instance v6, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;-><init>(Lcom/rockrobo/ui/ListHeartbeatView;Lcom/rockrobo/common/CleanMode;III)V

    iget-object p2, p0, Lcom/rockrobo/ui/ListHeartbeatView;->buttonResources:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public removeButtonResource(Lcom/rockrobo/common/CleanMode;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/rockrobo/ui/ListHeartbeatView;->cleanModePresent(Lcom/rockrobo/common/CleanMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/rockrobo/ui/ListHeartbeatView;->buttonResources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;

    invoke-static {v2}, Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;->access$000(Lcom/rockrobo/ui/ListHeartbeatView$ButtonResource;)Lcom/rockrobo/common/CleanMode;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/rockrobo/common/CleanMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/rockrobo/ui/ListHeartbeatView;->buttonResources:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/rockrobo/ui/ListHeartbeatView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setChangedMode(Lcom/rockrobo/common/CleanMode;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/ui/ListHeartbeatView;->currentCleanMode:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {p0}, Lcom/rockrobo/ui/ListHeartbeatView;->invalidate()V

    return-void
.end method
