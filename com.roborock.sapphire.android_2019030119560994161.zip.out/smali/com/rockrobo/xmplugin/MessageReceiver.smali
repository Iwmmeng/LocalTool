.class public Lcom/rockrobo/xmplugin/MessageReceiver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/device/api/IXmPluginMessageReceiver;


# static fields
.field public static final BACK_TO_DOCK_NEARBY_PUSH_EVENT:Ljava/lang/String; = "back_to_dock_nearby"

.field public static final BACK_TO_ORIGIN_FAIL_PUSH_EVENT:Ljava/lang/String; = "back_to_origin_fail"

.field public static final BACK_TO_ORIGIN_SUCCESS_PUSH_EVENT:Ljava/lang/String; = "back_to_origin_succ"

.field public static final BIN_FULL_PUSH_EVENT:Ljava/lang/String; = "bin_full"

.field public static final CLEAN_COMPLETE_PUSH_EVENT:Ljava/lang/String; = "clean_complete"

.field public static final CONSUME_MATERIAL_NOTIFY_PUSH_EVENT:Ljava/lang/String; = "consume_material_notify"

.field public static final FILTER_WARN_EVENT_CODE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final LOW_POWER_BACK_PUSH_EVENT:Ljava/lang/String; = "low_power_back"

.field public static final MAIN_BRUSH_WARN_EVENT_CODE:I = 0x3

.field public static final SENSORS_WARN_EVENT_CODE:I = 0x5

.field public static final SIDE_BRUSH_WARN_EVENT_CODE:I = 0x4

.field public static final TIMED_START_NOTIFY_PUSH_EVENT:Ljava/lang/String; = "robot_timed_started"

.field private static mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/xmplugin/MessageReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/xmplugin/MessageReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    sget-object v0, Lcom/rockrobo/xmplugin/MessageReceiver;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/rockrobo/xmplugin/MessageReceiver;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public static setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0

    sput-object p0, Lcom/rockrobo/xmplugin/MessageReceiver;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public createWidgetView(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/xiaomi/plugin/core/XmPluginPackage;ILandroid/content/Intent;Lcom/xiaomi/smarthome/device/api/DeviceStat;)Lcom/xiaomi/smarthome/device/api/BaseWidgetView;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public handleMessage(Landroid/content/Context;Lcom/xiaomi/plugin/core/XmPluginPackage;ILandroid/content/Intent;Lcom/xiaomi/smarthome/device/api/DeviceStat;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-nez p4, :cond_0

    return v0

    :cond_0
    const-string v2, "type"

    invoke-virtual {p4, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    const-string v3, "DevicePush"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "data"

    invoke-virtual {p4, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p5}, Lcom/rockrobo/xmplugin/Device;->getDevice(Lcom/xiaomi/smarthome/device/api/DeviceStat;)Lcom/rockrobo/xmplugin/Device;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/rockrobo/xmplugin/Device;->onSubscribeData(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string v3, "ScenePush"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "event"

    invoke-virtual {p4, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x20000000

    invoke-virtual {v6, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "error_code"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "clean_complete"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v4, "bin_full"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v4, "robot_timed_started"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v4, "back_to_origin_succ"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_5
    const-string v4, "back_to_origin_fail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_6
    const-string v4, "back_to_dock_nearby"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "low_power_back"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_8
    const-string v4, "consume_material_notify"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    :goto_0
    packed-switch v3, :pswitch_data_1

    sget-object p1, Lcom/rockrobo/xmplugin/MessageReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown Scene push event!"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_1
    const-string v3, "extra"

    invoke-virtual {p4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sget-object v3, Lcom/rockrobo/xmplugin/MessageReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScenePush :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    sget-object v1, Lcom/rockrobo/xmplugin/MessageReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScenePush content:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    packed-switch p4, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_2
    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v3

    iget-object v7, p5, Lcom/xiaomi/smarthome/device/api/DeviceStat;->did:Ljava/lang/String;

    const-class v8, Lcom/rockrobo/more/ConsumableActivity;

    goto :goto_1

    :pswitch_3
    const-string v3, "extra"

    invoke-virtual {p4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sget-object v3, Lcom/rockrobo/xmplugin/MessageReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScenePush :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    sget-object v1, Lcom/rockrobo/xmplugin/MessageReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScenePush content:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    const-string v1, "error_code"

    invoke-virtual {v6, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :pswitch_4
    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v3

    iget-object v7, p5, Lcom/xiaomi/smarthome/device/api/DeviceStat;->did:Ljava/lang/String;

    const-class v8, Lcom/rockrobo/clean/CleanActivity;

    :goto_1
    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->startActivity(Landroid/content/Context;Lcom/xiaomi/plugin/core/XmPluginPackage;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/rockrobo/xmplugin/MessageReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown message type! "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_5
    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v2

    iget-object v6, p5, Lcom/xiaomi/smarthome/device/api/DeviceStat;->did:Ljava/lang/String;

    const-class v7, Lcom/rockrobo/clean/CleanActivity;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->startActivity(Landroid/content/Context;Lcom/xiaomi/plugin/core/XmPluginPackage;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)V

    return v1

    :goto_2
    sget-object p1, Lcom/rockrobo/xmplugin/MessageReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown type! "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7200c0e2 -> :sswitch_8
        -0x5cecda54 -> :sswitch_7
        -0x1f8a9f61 -> :sswitch_6
        0xde7132b -> :sswitch_5
        0xded464f -> :sswitch_4
        0x10ec8264 -> :sswitch_3
        0x37c16ac7 -> :sswitch_2
        0x4502ae6f -> :sswitch_1
        0x617e99c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public handleMessage(Landroid/content/Context;Lcom/xiaomi/plugin/core/XmPluginPackage;ILandroid/content/Intent;Lcom/xiaomi/smarthome/device/api/DeviceStat;Lcom/xiaomi/smarthome/device/api/MessageCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
