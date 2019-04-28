.class public Lcom/rockrobo/utils/ShareStore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/utils/ShareStore$ShareInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final dateFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/utils/ShareStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/utils/ShareStore;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/rockrobo/utils/ShareStore$1;

    invoke-direct {v0}, Lcom/rockrobo/utils/ShareStore$1;-><init>()V

    sput-object v0, Lcom/rockrobo/utils/ShareStore;->dateFormat:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/rockrobo/utils/ShareStore;->dateFormat:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static uploadShareInfo(Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    new-instance v5, Lcom/rockrobo/utils/ShareStore$ShareInfo;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {v5, p2, p3, v0}, Lcom/rockrobo/utils/ShareStore$ShareInfo;-><init>(Ljava/lang/String;ILjava/util/Date;)V

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/rockrobo/xmplugin/ShareInfoUploader;

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/rockrobo/xmplugin/Device;->isShared()Z

    move-result v4

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/rockrobo/xmplugin/ShareInfoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/rockrobo/utils/ShareStore$ShareInfo;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
