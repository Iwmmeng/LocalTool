.class Lcom/rockrobo/xmplugin/Device$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/xmplugin/Device;->updateProperty([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/rockrobo/xmplugin/Device;

.field final synthetic val$properties:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rockrobo/xmplugin/Device;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/xmplugin/Device$1;->this$0:Lcom/rockrobo/xmplugin/Device;

    iput-object p2, p0, Lcom/rockrobo/xmplugin/Device$1;->val$properties:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/rockrobo/xmplugin/Device$1;->onSuccess(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/rockrobo/xmplugin/Device$1;->val$properties:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/xmplugin/Device$1;->this$0:Lcom/rockrobo/xmplugin/Device;

    iget-object v2, v2, Lcom/rockrobo/xmplugin/Device;->mPropertiesMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/rockrobo/xmplugin/Device$1;->val$properties:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "JSON"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/xmplugin/Device$1;->this$0:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->notifyStateChanged()V

    :cond_2
    return-void
.end method
