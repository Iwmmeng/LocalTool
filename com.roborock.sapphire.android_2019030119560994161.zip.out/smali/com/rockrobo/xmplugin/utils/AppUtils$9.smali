.class final Lcom/rockrobo/xmplugin/utils/AppUtils$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/xmplugin/utils/AppUtils;->callMethodWithResultTag(Lcom/rockrobo/xmplugin/Device;Landroid/os/Handler;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/smarthome/device/api/Callback<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$failMsg:Ljava/lang/Integer;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$params:Lorg/json/JSONArray;

.field final synthetic val$successMsg:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$method:Ljava/lang/String;

    iput-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$successMsg:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$params:Lorg/json/JSONArray;

    iput-object p5, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$failMsg:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/AppUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "method:%s failed, error code:%d, errorInfo:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$method:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$failMsg:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iget-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$failMsg:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$params:Lorg/json/JSONArray;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->onSuccess(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .locals 3

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/AppUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " success! result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$successMsg:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$successMsg:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/rockrobo/utils/ResultTag;

    iget-object v2, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$params:Lorg/json/JSONArray;

    invoke-direct {v1, p1, v2}, Lcom/rockrobo/utils/ResultTag;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$failMsg:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/AppUtils$9;->val$failMsg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
