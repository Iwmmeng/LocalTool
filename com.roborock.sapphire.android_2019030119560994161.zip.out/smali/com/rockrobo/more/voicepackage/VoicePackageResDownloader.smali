.class public Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

.field private final handler:Landroid/os/Handler;

.field private final voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

.field private final voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;Lcom/rockrobo/more/voicepackage/VoicePackageInfo;Lcom/rockrobo/xmplugin/utils/FDSOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    iput-object p3, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    iput-object p5, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    invoke-virtual {p3, p4}, Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;->getResourceDir(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result p2

    sget-object p3, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string p5, "create dir "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    sget-object p3, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "delete file "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", result:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result p2

    sget-object p3, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "dir "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exist!"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private downloadItemIcon(Lcom/rockrobo/more/voicepackage/VoiceItem;)Z
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getBackgroundPictureUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rockrobo/xmplugin/utils/FDSOperator;->getObject(Ljava/net/URL;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    invoke-virtual {p1, v2}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setThumbnailSize(I)V

    iget-object v2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    iget-object v3, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v2, v3, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;->getThumbFile(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;Lcom/rockrobo/more/voicepackage/VoiceItem;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    sget-object v4, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException, msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setThumbnail(Landroid/graphics/Bitmap;)V

    move v1, v2

    return v1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setThumbnail(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setThumbnailSize(I)V

    return v1
.end method

.method private downloadPushBitmap()V
    .locals 6

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    iget-object v1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getPushPictureUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rockrobo/xmplugin/utils/FDSOperator;->getObject(Ljava/net/URL;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v2, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->setPushPicture(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    array-length v2, v0

    invoke-virtual {v1, v2}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->setPushPictureSize(I)V

    iget-object v1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    iget-object v2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v1, v2}, Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;->getPushPicFile(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    sget-object v3, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->setPushPicture(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->setPushPictureSize(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getPushPicture()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->downloadPushBitmap()V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getDisplayVoiceItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {v3}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->downloadItemIcon(Lcom/rockrobo/more/voicepackage/VoiceItem;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->setIntegrated(Z)V

    sget-object v0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "All resource downloaded OK!"

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Some resource download failed!"

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
