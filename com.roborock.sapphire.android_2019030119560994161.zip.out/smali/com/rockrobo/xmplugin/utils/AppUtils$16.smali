.class final Lcom/rockrobo/xmplugin/utils/AppUtils$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/xmplugin/utils/AppUtils;->updateDevice(Ljava/util/List;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/smarthome/device/api/Callback<",
        "Ljava/util/List<",
        "Lcom/xiaomi/smarthome/device/api/DeviceStat;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$offline:Ljava/lang/Integer;

.field final synthetic val$online:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$16;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$16;->val$offline:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$16;->val$online:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/AppUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "on line status callback failure"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/rockrobo/xmplugin/utils/AppUtils$16;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/smarthome/device/api/DeviceStat;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/smarthome/device/api/DeviceStat;

    iget-boolean p1, p1, Lcom/xiaomi/smarthome/device/api/DeviceStat;->isOnline:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$16;->val$handler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$16;->val$handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$16;->val$offline:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$16;->val$handler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$16;->val$handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$16;->val$online:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method
