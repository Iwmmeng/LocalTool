.class Lcom/rockrobo/xmplugin/Device$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/Parser;


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
        "Lcom/xiaomi/smarthome/device/api/Parser<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/xmplugin/Device;


# direct methods
.method constructor <init>(Lcom/rockrobo/xmplugin/Device;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/xmplugin/Device$2;->this$0:Lcom/rockrobo/xmplugin/Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rockrobo/xmplugin/Device$2;->parse(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
