.class public Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;
.super Landroid/widget/ListView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->mRecycleOnMeasure:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->mRecycleOnMeasure:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->mRecycleOnMeasure:Z

    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method
