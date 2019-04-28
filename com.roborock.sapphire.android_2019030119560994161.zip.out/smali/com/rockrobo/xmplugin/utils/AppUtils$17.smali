.class final Lcom/rockrobo/xmplugin/utils/AppUtils$17;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/xmplugin/utils/AppUtils;->localPing(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/smarthome/device/api/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$failedMSG:Ljava/lang/Integer;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$successMSG:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$17;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$17;->val$successMSG:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$17;->val$failedMSG:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$17;->val$handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$17;->val$failedMSG:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/AppUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "local ping fail!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$17;->val$handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$17;->val$failedMSG:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rockrobo/xmplugin/utils/AppUtils$17;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$17;->val$handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$17;->val$successMSG:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/AppUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "local ping success!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$17;->val$handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$17;->val$successMSG:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
