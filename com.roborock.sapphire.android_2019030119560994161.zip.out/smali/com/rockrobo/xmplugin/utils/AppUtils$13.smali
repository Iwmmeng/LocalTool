.class final Lcom/rockrobo/xmplugin/utils/AppUtils$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/xmplugin/utils/AppUtils;->checkDeviceUpdateInfo(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/smarthome/device/api/Callback<",
        "Lcom/xiaomi/smarthome/device/api/DeviceUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$failedMsg:Ljava/lang/Integer;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$successMsg:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$13;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$13;->val$successMsg:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$13;->val$failedMsg:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$13;->val$handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$13;->val$failedMsg:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$13;->val$handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$13;->val$failedMsg:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/xiaomi/smarthome/device/api/DeviceUpdateInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$13;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$13;->val$successMsg:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$13;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$13;->val$successMsg:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/smarthome/device/api/DeviceUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/rockrobo/xmplugin/utils/AppUtils$13;->onSuccess(Lcom/xiaomi/smarthome/device/api/DeviceUpdateInfo;)V

    return-void
.end method
