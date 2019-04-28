.class final Lcom/rockrobo/xmplugin/utils/AppUtils$18;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodNoReturn(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/smarthome/device/api/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$failMsg:Ljava/lang/Integer;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$successMsg:Ljava/lang/Integer;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$methodName:Ljava/lang/String;

    iput-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$successMsg:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$tag:Ljava/lang/Object;

    iput-object p5, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$failMsg:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/AppUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$methodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed, error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "errorInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$failMsg:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$handler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iget-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$failMsg:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$tag:Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$tag:Ljava/lang/Object;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 2

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/AppUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$successMsg:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$handler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$successMsg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$tag:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$tag:Ljava/lang/Object;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/rockrobo/xmplugin/utils/AppUtils$18;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
