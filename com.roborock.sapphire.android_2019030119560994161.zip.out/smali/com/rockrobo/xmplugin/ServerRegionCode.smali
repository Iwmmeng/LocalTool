.class public Lcom/rockrobo/xmplugin/ServerRegionCode;
.super Ljava/lang/Object;


# static fields
.field public static final CA:Ljava/lang/String; = "ca"

.field public static final CN:Ljava/lang/String; = "cn"

.field public static final DE:Ljava/lang/String; = "de"

.field public static final HK:Ljava/lang/String; = "hk"

.field public static final IN:Ljava/lang/String; = "in"

.field public static final KR:Ljava/lang/String; = "kr"

.field public static final OTHERS:Ljava/lang/String; = "tr"

.field public static final RU:Ljava/lang/String; = "ru"

.field public static final SG:Ljava/lang/String; = "sg"

.field public static final TW:Ljava/lang/String; = "tw"

.field public static final US:Ljava/lang/String; = "us_true"

.field public static final US_SG:Ljava/lang/String; = "us"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static regionToServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xd03

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd25

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd67

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe54

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe7e

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe83

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe9e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const-string v0, "tw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "tr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_1

    :cond_3
    const-string v0, "sg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const-string v0, "kr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_1

    :cond_5
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_1

    :cond_6
    const-string v0, "hk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    const-string p0, "sg"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
