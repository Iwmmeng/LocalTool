.class public Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;
.super Ljava/lang/Thread;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

.field private final fileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

.field private final handler:Landroid/os/Handler;

.field private info:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

.field private final itemDeque:Lcom/rockrobo/common/RRConcurrentDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rockrobo/common/RRConcurrentDeque<",
            "Lcom/rockrobo/more/voicepackage/VoiceItem;",
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

    const-class v1, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;Lcom/rockrobo/more/voicepackage/VoicePackageInfo;Lcom/rockrobo/xmplugin/utils/FDSOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->fileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    iput-object p4, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->info:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    new-instance p1, Lcom/rockrobo/common/RRConcurrentDeque;

    invoke-direct {p1}, Lcom/rockrobo/common/RRConcurrentDeque;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->itemDeque:Lcom/rockrobo/common/RRConcurrentDeque;

    iput-object p5, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    return-void
.end method

.method private downloadPreListen(Lcom/rockrobo/more/voicepackage/VoiceItem;)Z
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getPreListenUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rockrobo/xmplugin/utils/FDSOperator;->getObject(Ljava/net/URL;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setPreListenFile(Ljava/io/File;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->fileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    iget-object v3, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->info:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v2, v3, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;->getPreListenFile(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;Lcom/rockrobo/more/voicepackage/VoiceItem;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    sget-object v4, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->LOG_TAG:Ljava/lang/String;

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

    invoke-virtual {p1, v2}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setPreListenFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method


# virtual methods
.method public addDownloadItem(Lcom/rockrobo/more/voicepackage/VoiceItem;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->itemDeque:Lcom/rockrobo/common/RRConcurrentDeque;

    invoke-virtual {v0, p1}, Lcom/rockrobo/common/RRConcurrentDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->itemDeque:Lcom/rockrobo/common/RRConcurrentDeque;

    invoke-virtual {v0, p1}, Lcom/rockrobo/common/RRConcurrentDeque;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->itemDeque:Lcom/rockrobo/common/RRConcurrentDeque;

    invoke-virtual {v0, p1}, Lcom/rockrobo/common/RRConcurrentDeque;->offerElementAtFirst(Ljava/lang/Object;)V

    sget-object v0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added a item to download queue! id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public run()V
    .locals 4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->itemDeque:Lcom/rockrobo/common/RRConcurrentDeque;

    invoke-virtual {v0}, Lcom/rockrobo/common/RRConcurrentDeque;->pollElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/more/voicepackage/VoiceItem;

    sget-object v1, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To download item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To download pre listen for voice item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->downloadPreListen(Lcom/rockrobo/more/voicepackage/VoiceItem;)Z

    move-result v1

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    iput v1, v2, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const/16 v1, 0x11

    iput v1, v2, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got interrupt exception! msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVoicePkgInfo(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->info:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    return-void
.end method
