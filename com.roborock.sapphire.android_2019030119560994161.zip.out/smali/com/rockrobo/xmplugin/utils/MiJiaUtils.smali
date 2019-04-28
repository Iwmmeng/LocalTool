.class public Lcom/rockrobo/xmplugin/utils/MiJiaUtils;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegionCode()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getApiLevel()I

    move-result v1

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getGlobalSettingServer(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getApiLevel()I

    move-result v1

    const/16 v2, 0x16

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getGlobalSettingServer()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "cn"

    :goto_0
    sget-object v1, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got server region code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static gotoPage(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getApiLevel()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/rockrobo/xmplugin/utils/MiJiaUtils$1;

    invoke-direct {v2}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils$1;-><init>()V

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->gotoPage(Landroid/content/Context;Lcom/xiaomi/plugin/core/XmPluginPackage;Landroid/net/Uri;Lcom/xiaomi/smarthome/device/api/Callback;)V

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/rockrobo/utils/RRUtils;->openHTML(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method public static isCNRobot()Z
    .locals 2

    const-string v0, "prc"

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getRobotLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCNServer()Z
    .locals 2

    const-string v0, "cn"

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->getRegionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEUServer()Z
    .locals 2

    const-string v0, "de"

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->getRegionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isModelV2()Z
    .locals 4

    const-string v0, "roborock.vacuum.e2"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x606e89bd

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "roborock.sweeper.e2v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isModelV3()Z
    .locals 4

    const-string v0, "roborock.vacuum.e2"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x606e89be

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "roborock.sweeper.e2v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isRUServer()Z
    .locals 2

    const-string v0, "ru"

    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->getRegionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static selectDownloadFDSHost(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x9186d71

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc6b

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc81

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd25

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe43

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe54

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe83

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "tw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "sg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x5

    goto :goto_1

    :cond_3
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x3

    goto :goto_1

    :cond_5
    const-string v0, "cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x6

    goto :goto_1

    :cond_6
    const-string v0, "us_true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x4

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    if-eqz p1, :cond_c

    const-string p0, "cdn.cnbj2.fds.api.mi-img.com"

    return-object p0

    :pswitch_0
    if-eqz p1, :cond_8

    const-string p0, "cdn.ksyru0-eco.fds.api.mi-img.com"

    return-object p0

    :cond_8
    const-string p0, "ksyru0-eco.fds.api.xiaomi.com"

    return-object p0

    :pswitch_1
    if-eqz p1, :cond_9

    const-string p0, "cdn.awsusor0.fds.api.mi-img.com"

    return-object p0

    :cond_9
    const-string p0, "awsusor0.fds.api.xiaomi.com"

    return-object p0

    :pswitch_2
    if-eqz p1, :cond_a

    const-string p0, "cdn.awsde0.fds.api.mi-img.com"

    return-object p0

    :cond_a
    const-string p0, "awsde0.fds.api.xiaomi.com"

    return-object p0

    :pswitch_3
    if-eqz p1, :cond_b

    const-string p0, "cdn.awssgp0.fds.api.mi-img.com"

    return-object p0

    :cond_b
    const-string p0, "awssgp0.fds.api.xiaomi.com"

    return-object p0

    :cond_c
    const-string p0, "cnbj2.fds.api.xiaomi.com"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static selectEmailByHost(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x9186d71

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc6b

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc81

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe43

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe54

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe9e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "sg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x4

    goto :goto_1

    :cond_3
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    goto :goto_1

    :cond_4
    const-string v0, "cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x5

    goto :goto_1

    :cond_5
    const-string v0, "us_true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x3

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const v0, 0x7f0a0068

    const v1, 0x7f0a0064

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    return v0

    :pswitch_2
    const p0, 0x7f0a0065

    return p0

    :pswitch_3
    const p0, 0x7f0a0067

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static selectUploadFDSHost(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x9186d71

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc6b

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc81

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd25

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe43

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe54

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe83

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "tw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "sg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x5

    goto :goto_1

    :cond_3
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x3

    goto :goto_1

    :cond_5
    const-string v0, "cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x6

    goto :goto_1

    :cond_6
    const-string v0, "us_true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x4

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    if-eqz p1, :cond_8

    const-string p0, "cdn.cnbj2.fds.api.mi-img.com"

    return-object p0

    :pswitch_0
    const-string p0, "ksyru0-eco.fds.api.xiaomi.com"

    return-object p0

    :pswitch_1
    const-string p0, "awsusor0.fds.api.xiaomi.com"

    return-object p0

    :pswitch_2
    const-string p0, "awsde0.fds.api.xiaomi.com"

    return-object p0

    :pswitch_3
    const-string p0, "awssgp0.fds.api.xiaomi.com"

    return-object p0

    :cond_8
    const-string p0, "cnbj2.fds.api.xiaomi.com"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
