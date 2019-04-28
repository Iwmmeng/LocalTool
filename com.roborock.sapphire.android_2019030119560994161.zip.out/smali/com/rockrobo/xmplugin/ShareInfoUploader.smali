.class public Lcom/rockrobo/xmplugin/ShareInfoUploader;
.super Lcom/rockrobo/xmplugin/XmFDSUploader;


# static fields
.field public static final BUCKET_NAME:Ljava/lang/String; = "applog"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final UNKNOWN_SN_NO:Ljava/lang/String; = "0000000000"

.field private static final dateFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accountId:Ljava/lang/String;

.field private final dateTime:Ljava/util/Date;

.field private final deviceId:Ljava/lang/String;

.field private final shareInfo:Lcom/rockrobo/utils/ShareStore$ShareInfo;

.field private final sharedDevice:Z

.field private final sn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/xmplugin/ShareInfoUploader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/rockrobo/xmplugin/ShareInfoUploader$1;

    invoke-direct {v0}, Lcom/rockrobo/xmplugin/ShareInfoUploader$1;-><init>()V

    sput-object v0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->dateFormat:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/rockrobo/utils/ShareStore$ShareInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/xmplugin/XmFDSUploader;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "0000000000"

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->sn:Ljava/lang/String;

    iput-object p2, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->accountId:Ljava/lang/String;

    iput-object p3, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->deviceId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->sharedDevice:Z

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->dateTime:Ljava/util/Date;

    iput-object p5, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->shareInfo:Lcom/rockrobo/utils/ShareStore$ShareInfo;

    return-void
.end method

.method private getSimpleModel()Ljava/lang/String;
    .locals 3

    const-string v0, "roborock.vacuum.e2"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x1c285839

    if-eq v1, v2, :cond_1

    const v2, 0x606e89bd

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "roborock.sweeper.e2v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "roborock.vacuum.e2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "v3"

    return-object v0

    :pswitch_0
    const-string v0, "v2"

    return-object v0

    :pswitch_1
    const-string v0, "v1"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private makeFDSObjectTimePart(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "h"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "m"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected buildBucketName()Ljava/lang/String;
    .locals 1

    const-string v0, "applog"

    return-object v0
.end method

.method protected buildContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->shareInfo:Lcom/rockrobo/utils/ShareStore$ShareInfo;

    invoke-virtual {v0}, Lcom/rockrobo/utils/ShareStore$ShareInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected buildObjectName()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/rockrobo/xmplugin/ShareInfoUploader;->getSimpleModel()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/xmplugin/ShareInfoUploader;->dateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->dateTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->dateTime:Ljava/util/Date;

    invoke-direct {p0, v2}, Lcom/rockrobo/xmplugin/ShareInfoUploader;->makeFDSObjectTimePart(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/rockrobo/xmplugin/ShareInfoUploader;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shared mDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->sharedDevice:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->sn:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->sharedDevice:Z

    if-eqz v0, :cond_0

    const-string v0, "s"

    goto :goto_0

    :cond_0
    const-string v0, "o"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->accountId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/android_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/rockrobo/xmplugin/ShareInfoUploader;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".log"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
