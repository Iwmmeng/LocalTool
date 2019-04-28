.class public Lcom/rockrobo/more/voicepackage/VoicePackageInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/voicepackage/VoicePackageInfo$PriorityComparator;
    }
.end annotation


# static fields
.field public static final KEY_APPLICABLE:Ljava/lang/String; = "applicable"

.field public static final KEY_BG_PIC:Ljava/lang/String; = "bg_pic"

.field public static final KEY_DEFAULT:Ljava/lang/String; = "default"

.field public static final KEY_DEFAULT_NEW:Ljava/lang/String; = "default_new"

.field public static final KEY_LANG:Ljava/lang/String; = "lang"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field public static final KEY_VOICE_ID:Ljava/lang/String; = "voice_id"

.field public static final KEY_VOICE_LIST:Ljava/lang/String; = "voice_list"

.field public static final KEY_VOICE_PKG_MD_5:Ljava/lang/String; = "voice_pkg_md5"

.field public static final KEY_VOICE_PKG_URL:Ljava/lang/String; = "voice_pkg_url"

.field public static final KEY_VOICE_PKG_VERSION:Ljava/lang/String; = "voice_pkg_version"

.field public static final KEY_VOICE_PRE_LISTEN:Ljava/lang/String; = "voice_pre_listen"

.field public static final KEY_VOICE_PRI:Ljava/lang/String; = "voice_pri"

.field public static final KEY_VOICE_PUSH_PIC:Ljava/lang/String; = "voice_push_pic"

.field public static final KEY_VOICE_SUB_TILE:Ljava/lang/String; = "voice_sub_title"

.field public static final KEY_VOICE_TITLE:Ljava/lang/String; = "voice_title"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private allVoiceItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rockrobo/more/voicepackage/VoiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private transient displayVoiceItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rockrobo/more/voicepackage/VoiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private integrated:Z

.field private pushPicSize:I

.field private transient pushPicture:Landroid/graphics/Bitmap;

.field private pushPictureSize:I

.field private pushPictureUrl:Ljava/net/URL;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->allVoiceItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->displayVoiceItems:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->integrated:Z

    return-void
.end method

.method private addVoiceItem(Lcom/rockrobo/more/voicepackage/VoiceItem;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->allVoiceItems:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->allVoiceItems:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->allVoiceItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static parseVoicePackageConfig(Ljava/lang/String;)Lcom/rockrobo/more/voicepackage/VoicePackageInfo;
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-direct {p0}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;-><init>()V

    const-string v1, "voice_pkg_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->setVersion(I)V

    new-instance v1, Ljava/net/URL;

    const-string v2, "voice_push_pic"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->setPushPictureUrl(Ljava/net/URL;)V

    const-string v1, "voice_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-direct {v4}, Lcom/rockrobo/more/voicepackage/VoiceItem;-><init>()V

    const-string v5, "voice_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setId(I)V

    const-string v5, "voice_pri"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setPriority(I)V

    new-instance v5, Ljava/net/URL;

    const-string v6, "bg_pic"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setBackgroundPictureUrl(Ljava/net/URL;)V

    const-string v5, "voice_title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setTitle(Ljava/lang/String;)V

    const-string v5, "voice_sub_title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setSubTitle(Ljava/lang/String;)V

    const-string v5, "voice_pkg_url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/net/URL;

    const-string v6, "voice_pkg_url"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rockrobo/more/voicepackage/VoicePackageUtils;->handleVoicePackageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setVoicePkgUrl(Ljava/net/URL;)V

    const-string v5, "voice_pkg_md5"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setVoicePkgMd5(Ljava/lang/String;)V

    :cond_0
    new-instance v5, Ljava/net/URL;

    const-string v6, "voice_pre_listen"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setPreListenUrl(Ljava/net/URL;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setDefaultLang(Ljava/lang/String;)V

    const-string v5, "default"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "default"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setDefaultLang(Ljava/lang/String;)V

    :cond_1
    const-string v5, "default_new"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "default_new"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setDefaultLang(Ljava/lang/String;)V

    :cond_2
    const-string v5, "lang"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "lang"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setLang(Ljava/lang/String;)V

    :cond_3
    const-string v5, "version"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "version"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setVersion(I)V

    :cond_4
    const-string v5, "applicable"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/rockrobo/more/voicepackage/VoiceItem;->addApplicable(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0, v4}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->addVoiceItem(Lcom/rockrobo/more/voicepackage/VoiceItem;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getAllVoiceItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-direct {p0}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->sortItem()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/rockrobo/more/voicepackage/VoicePackageException;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/voicepackage/VoicePackageException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/rockrobo/more/voicepackage/VoicePackageException;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/voicepackage/VoicePackageException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private sortItem()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->allVoiceItems:Ljava/util/List;

    new-instance v1, Lcom/rockrobo/more/voicepackage/VoicePackageInfo$PriorityComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo$PriorityComparator;-><init>(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;Lcom/rockrobo/more/voicepackage/VoicePackageInfo$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public allIconDownloaded()Z
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->displayVoiceItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public buildDisplayVoiceItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->displayVoiceItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->displayVoiceItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->displayVoiceItems:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->allVoiceItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {v1, p2}, Lcom/rockrobo/more/voicepackage/VoiceItem;->isApplicable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "en"

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "prc"

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getRobotLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->ipFromCN()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getDefaultLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->displayVoiceItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setDisplayTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->displayVoiceItems:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public getAllVoiceItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/voicepackage/VoiceItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->allVoiceItems:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayVoiceItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/voicepackage/VoiceItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->displayVoiceItems:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->displayVoiceItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->displayVoiceItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPushPicture()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->pushPicture:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPushPictureSize()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->pushPictureSize:I

    return v0
.end method

.method public getPushPictureUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->pushPictureUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->version:I

    return v0
.end method

.method public getVoiceItem(I)Lcom/rockrobo/more/voicepackage/VoiceItem;
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->displayVoiceItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isIntegrated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->integrated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->displayVoiceItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->displayVoiceItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setIntegrated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->integrated:Z

    return-void
.end method

.method public setPushPicture(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->pushPicture:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPushPictureSize(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->pushPictureSize:I

    return-void
.end method

.method public setPushPictureUrl(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->pushPictureUrl:Ljava/net/URL;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->version:I

    return-void
.end method
