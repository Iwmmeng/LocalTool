.class public Lcom/rockrobo/more/voicepackage/VoiceItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LANG_EN:Ljava/lang/String; = "en"

.field public static final VOICE_VERSION_INIT:I = 0x1

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private applicableLocations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundPictureUrl:Ljava/net/URL;

.field private defaultLang:Ljava/lang/String;

.field private transient displayTitle:Ljava/lang/String;

.field private id:I

.field private lang:Ljava/lang/String;

.field private transient preListenFile:Ljava/io/File;

.field private preListenUrl:Ljava/net/URL;

.field private priority:I

.field private subTitle:Ljava/lang/String;

.field private transient thumbnail:Landroid/graphics/Bitmap;

.field private thumbnailSize:I

.field private title:Ljava/lang/String;

.field private version:I

.field private voicePkgMd5:Ljava/lang/String;

.field private voicePkgUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->displayTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->defaultLang:Ljava/lang/String;

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->lang:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->version:I

    return-void
.end method


# virtual methods
.method public addApplicable(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->applicableLocations:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->applicableLocations:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->applicableLocations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getApplicableLocations()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->applicableLocations:Ljava/util/Set;

    return-object v0
.end method

.method public getBackgroundPictureUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->backgroundPictureUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getDefaultLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->defaultLang:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->displayTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->displayTitle:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->id:I

    return v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getPreListenFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->preListenFile:Ljava/io/File;

    return-object v0
.end method

.method public getPreListenUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->preListenUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->priority:I

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getThumbnailSize()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->thumbnailSize:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->version:I

    return v0
.end method

.method public getVoicePkgMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->voicePkgMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicePkgUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->voicePkgUrl:Ljava/net/URL;

    return-object v0
.end method

.method public isApplicable(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->applicableLocations:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->applicableLocations:Ljava/util/Set;

    const-string v1, "all"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->applicableLocations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isDefaultVoicePackage()Z
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->defaultLang:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBackgroundPictureUrl(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->backgroundPictureUrl:Ljava/net/URL;

    return-void
.end method

.method public setDefaultLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->defaultLang:Ljava/lang/String;

    return-void
.end method

.method public setDisplayTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->displayTitle:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->id:I

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->lang:Ljava/lang/String;

    return-void
.end method

.method public setPreListenFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->preListenFile:Ljava/io/File;

    return-void
.end method

.method public setPreListenUrl(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->preListenUrl:Ljava/net/URL;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->priority:I

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->thumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setThumbnailSize(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->thumbnailSize:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->version:I

    return-void
.end method

.method public setVoicePkgMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->voicePkgMd5:Ljava/lang/String;

    return-void
.end method

.method public setVoicePkgUrl(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoiceItem;->voicePkgUrl:Ljava/net/URL;

    return-void
.end method
