.class public Lcom/rockrobo/xmplugin/UserCountryInfoUploader;
.super Lcom/rockrobo/xmplugin/XmFDSUploader;


# static fields
.field private static final BUCKET_NAME:Ljava/lang/String; = "applog"

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

.field private final deviceId:Ljava/lang/String;

.field private final loginCountry:Ljava/lang/String;

.field private final selectCountry:Ljava/lang/String;

.field private final shareDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rockrobo/xmplugin/UserCountryInfoUploader$1;

    invoke-direct {v0}, Lcom/rockrobo/xmplugin/UserCountryInfoUploader$1;-><init>()V

    sput-object v0, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;->dateFormat:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/xmplugin/XmFDSUploader;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;->accountId:Ljava/lang/String;

    iput-object p2, p0, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;->deviceId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;->shareDevice:Z

    iput-object p4, p0, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;->loginCountry:Ljava/lang/String;

    iput-object p5, p0, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;->selectCountry:Ljava/lang/String;

    return-void
.end method

.method private buildFileName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;->dateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_android_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;->shareDevice:Z

    if-eqz v1, :cond_0

    const-string v1, "s"

    goto :goto_0

    :cond_0
    const-string v1, "o"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected buildBucketName()Ljava/lang/String;
    .locals 1

    const-string v0, "applog"

    return-object v0
.end method

.method protected buildContent()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "loginCountry"

    iget-object v2, p0, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;->loginCountry:Ljava/lang/String;

    invoke-static {v2}, Lcom/rockrobo/xmplugin/ServerRegionCode;->regionToServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "selectCountry"

    iget-object v2, p0, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;->selectCountry:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected buildObjectName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "privacylog/sapphire/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/rockrobo/xmplugin/UserCountryInfoUploader;->buildFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
