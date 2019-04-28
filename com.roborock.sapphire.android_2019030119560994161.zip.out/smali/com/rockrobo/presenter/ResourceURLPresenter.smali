.class public Lcom/rockrobo/presenter/ResourceURLPresenter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rockrobo/presenter/URLPresenterI;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PROTOCOL:Ljava/lang/String; = "https"


# instance fields
.field private final context:Landroid/content/Context;

.field private final regionCode:Ljava/lang/String;

.field private resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/presenter/ResourceURLPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/presenter/ResourceURLPresenter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->regionCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method private buildStringUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->regionCode:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->selectDownloadFDSHost(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Privacy url for region code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->regionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->logDebug(Ljava/lang/String;)V

    return-object p1
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/rockrobo/config/LogConfig;->logResourceURLPresenter:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockrobo/presenter/ResourceURLPresenter;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getImprovePlanUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLicenseUrl()Ljava/net/URL;
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->regionCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x9186d71

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc81

    if-eq v1, v2, :cond_2

    const/16 v2, 0xe43

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe54

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "sg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "us_true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0106

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0107

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0102

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0103

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0100

    goto :goto_2

    :goto_3
    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "License url for region code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->regionCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rockrobo/presenter/ResourceURLPresenter;->logDebug(Ljava/lang/String;)V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPrivacyPolicyUrl()Ljava/net/URL;
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->regionCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x9186d71

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc81

    if-eq v1, v2, :cond_2

    const/16 v2, 0xe43

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe54

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "sg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "us_true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a018b

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a018c

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0187

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0188

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0186

    goto :goto_2

    :goto_3
    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Privacy url for region code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->regionCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rockrobo/presenter/ResourceURLPresenter;->logDebug(Ljava/lang/String;)V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getProductGuideDustBinFilterUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideFunctionUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideInstructionUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideMaintenanceUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideMoppingModuleUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideQuickStartUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideQuickStartUrlTw()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductGuideTroubleShootingUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0194

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideTroubleShootingUrlTw()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductGuideVideoAllUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideVideoDustbinUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideVideoFunctionUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideVideoMaintainUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideVideoMoppingModuleUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideVideoQuickStartUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideVideoScheduleUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideVideoVirtualWallUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideVirtualWallUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/presenter/ResourceURLPresenter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0a0195

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockrobo/presenter/ResourceURLPresenter;->buildStringUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductGuideVirtualWallUrlTw()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
