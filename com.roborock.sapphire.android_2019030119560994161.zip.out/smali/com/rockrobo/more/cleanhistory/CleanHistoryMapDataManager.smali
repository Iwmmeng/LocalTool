.class public Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field context:Landroid/content/Context;

.field device:Lcom/rockrobo/xmplugin/Device;

.field storageFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->device:Lcom/rockrobo/xmplugin/Device;

    invoke-static {}, Lcom/rockrobo/utils/RRFileUtils;->isExternalStorageWritable()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/io/File;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "rr_map_store"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->storageFile:Ljava/io/File;

    sget-object p1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Storage file exists but is not a directory!"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->createInternalStorage(Landroid/content/Context;)V

    sget-object p1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "External directory couldn\'t be created, try internal storage!"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->createInternalStorage(Landroid/content/Context;)V

    sget-object p1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->createInternalStorage(Landroid/content/Context;)V

    sget-object p1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v0, "storage file:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->storageFile:Ljava/io/File;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private expiredFile(Ljava/io/File;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/cleanhistory/ChildItem;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->device:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/more/cleanhistory/ChildItem;

    invoke-direct {p0, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->makeMapFileName(Lcom/rockrobo/more/cleanhistory/ChildItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private makeMapFileName(Lcom/rockrobo/more/cleanhistory/ChildItem;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->device:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getStartTime()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private notSaved(Lcom/rockrobo/more/cleanhistory/ChildItem;[Ljava/io/File;)Z
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->makeMapFileName(Lcom/rockrobo/more/cleanhistory/ChildItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private saveMapInfo(Lcom/rockrobo/more/cleanhistory/ChildItem;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->makeMapFileName(Lcom/rockrobo/more/cleanhistory/ChildItem;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->storageFile:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "To save map for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getMapInfo()Lcom/rockrobo/map/MapInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createInternalStorage(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "rr_map_store"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->storageFile:Ljava/io/File;

    return-void

    :cond_1
    sget-object p1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Storage file is not a directory!"

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Internal directory couldn\'t be created!"

    goto :goto_0

    return-void
.end method

.method public loadMap(Lcom/rockrobo/more/cleanhistory/ChildItem;)V
    .locals 7

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map info present for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getStartTime()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->makeMapFileName(Lcom/rockrobo/more/cleanhistory/ChildItem;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To load map file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->storageFile:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File not exist:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rockrobo/map/MapInfo;

    sget-object v4, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got map info from file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mapInfo:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3}, Lcom/rockrobo/more/cleanhistory/ChildItem;->setMapInfo(Lcom/rockrobo/map/MapInfo;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public storeMaps(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/cleanhistory/ChildItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->storageFile:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->storageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->storageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->storageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-direct {p0, v3, p1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->expiredFile(Ljava/io/File;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To delete file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/cleanhistory/ChildItem;

    invoke-direct {p0, v1, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->notSaved(Lcom/rockrobo/more/cleanhistory/ChildItem;[Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->saveMapInfo(Lcom/rockrobo/more/cleanhistory/ChildItem;)V

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_2
    sget-object p1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "storageFile not exist or not a directory!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
