.class public Lcom/rockrobo/more/VoicePackageActivity;
.super Lcom/rockrobo/more/MoreBaseActivity;


# static fields
.field public static final ERROR_DUPLICATE:I = 0xc

.field public static final ERROR_INSTALL_DISK_FULL:I = 0xd

.field public static final ERROR_INSTALL_DOWNLOAD_FAIL:I = 0x2

.field private static final FAIL_RETRY_TIMES:I = 0x3

.field private static final GET_DOWNLOAD_PROGRESS_DELAY:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_GET_PROGRESS:I = 0xa

.field private static final MSG_GET_PROGRESS_FAIL:I = 0x9

.field private static final MSG_GET_PROGRESS_OK:I = 0x8

.field private static final MSG_INFO_DOWNLOAD_FAIL:I = 0x2

.field private static final MSG_INFO_DOWNLOAD_OK:I = 0x1

.field private static final MSG_INFO_RETRIEVE_COMPLETE:I = 0xd

.field public static final MSG_INSTALL_DEFAULT_FAIL:I = 0xc

.field public static final MSG_INSTALL_DEFAULT_OK:I = 0xb

.field public static final MSG_INSTALL_SOUND_FAIL:I = 0x7

.field public static final MSG_INSTALL_SOUND_OK:I = 0x6

.field private static final MSG_POLL_VP_STATUS_FAIL:I = 0x16

.field private static final MSG_POLL_VP_STATUS_OK:I = 0x15

.field public static final MSG_PRE_LISTEN_DOWNLOAD_FAIL:I = 0x11

.field public static final MSG_PRE_LISTEN_DOWNLOAD_OK:I = 0x10

.field public static final MSG_PRE_LISTEN_PLAY_COMPLETED:I = 0x13

.field public static final MSG_PRE_LISTEN_STARTED:I = 0x14

.field public static final MSG_RESOURCE_DOWNLOAD_OK:I = 0x3

.field private static final MSG_ROBOT_VP_ID_FAIL:I = 0x5

.field private static final MSG_ROBOT_VP_ID_OK:I = 0x4

.field public static final MSG_STOP_POLL:I = 0x17

.field public static final MSG_TO_DOWNLOAD_PRE_LISTEN:I = 0x12

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_INSTALLING:I = 0x2

.field public static final STATE_NOT_STARTED:I = 0x0

.field private static final STATE_SUCCESS:I = 0x3

.field public static final VOICE_ID_NONE:I = 0x0

.field public static final VOICE_PKG_KEY_SID_IN_PROGRESS:Ljava/lang/String; = "sid_in_progress"

.field public static final VOICE_PKG_KEY_SID_IN_USE:Ljava/lang/String; = "sid_in_use"

.field public static final VOICE_PKG_KEY_SID_VERSION:Ljava/lang/String; = "sid_version"

.field public static final VP_STATUS_POLL_DELAY:I = 0x7d0


# instance fields
.field private configRetriever:Ljava/lang/Thread;

.field private configUpdated:Z

.field private currentDownloadId:I

.field private currentVoiceId:I

.field private currentVoiceRetry:I

.field private fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

.field private getProgressRetryCnt:I

.field private infoRefreshInProgress:Z

.field private infoRetrieveCnt:I

.field private listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

.field private listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

.field private oldVoicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

.field private preListenDownloader:Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;

.field private refreshFailToasted:Z

.field private resDownloader:Ljava/lang/Thread;

.field private robotLanguage:Ljava/lang/String;

.field private robotLocation:Ljava/lang/String;

.field private stopStatusPoll:Z

.field private voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

.field private voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

.field private voicePkgRootDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/VoicePackageActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->configUpdated:Z

    iput v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentVoiceRetry:I

    iput v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->infoRetrieveCnt:I

    iput-boolean v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->refreshFailToasted:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/rockrobo/more/VoicePackageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->refreshFailToasted:Z

    return p1
.end method

.method static synthetic access$202(Lcom/rockrobo/more/VoicePackageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->infoRefreshInProgress:Z

    return p1
.end method

.method static synthetic access$304(Lcom/rockrobo/more/VoicePackageActivity;)I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->infoRetrieveCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->infoRetrieveCnt:I

    return v0
.end method

.method static synthetic access$400(Lcom/rockrobo/more/VoicePackageActivity;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/VoicePackageActivity;->configRetriever:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$402(Lcom/rockrobo/more/VoicePackageActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->configRetriever:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/rockrobo/more/VoicePackageActivity;)Lcom/rockrobo/xmplugin/utils/FDSOperator;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/VoicePackageActivity;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    return-object p0
.end method

.method private downloadResource()V
    .locals 8

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "downloadResource enter!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;

    iget-object v3, p0, Lcom/rockrobo/more/VoicePackageActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    iget-object v5, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    iget-object v6, p0, Lcom/rockrobo/more/VoicePackageActivity;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/rockrobo/more/voicepackage/VoicePackageResDownloader;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;Lcom/rockrobo/more/voicepackage/VoicePackageInfo;Lcom/rockrobo/xmplugin/utils/FDSOperator;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->resDownloader:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->resDownloader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getRobotLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getRobotLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getRobotLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "prc"

    return-object v0
.end method

.method private getRobotLocation()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getRobotLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getRobotLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "prc"

    return-object v0
.end method

.method private handleCurrentVoicePackage(Landroid/os/Message;Z)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "sid_in_use"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current voice id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v4, "poll"

    goto :goto_0

    :cond_0
    const-string v4, "normal"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "sid_in_progress"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "sid_in_progress"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current progress id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string v5, "poll"

    goto :goto_2

    :cond_2
    const-string v5, "normal"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "sid_version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    const-string v3, "sid_version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    sget-object v3, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current voice id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v3}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->getCurrentVoiceVersion()I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v3, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setCurrentVoiceVersion(I)V

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p2, :cond_4

    iget v3, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentVoiceId:I

    if-ne v3, v1, :cond_4

    iget v3, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentDownloadId:I

    if-eq v3, v2, :cond_6

    :cond_4
    iput v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentVoiceId:I

    iput v2, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentDownloadId:I

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iget v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentVoiceId:I

    invoke-virtual {p1, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setCurrentUsedVoiceItem(I)V

    iget p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentDownloadId:I

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iget v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentDownloadId:I

    invoke-virtual {p1, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setCurrentInstallVoiceItem(I)V

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->loadDownloadProgress()V

    :cond_5
    const/4 p1, 0x1

    :cond_6
    if-nez p2, :cond_7

    iput v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentVoiceRetry:I

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    if-lez v2, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setNoCurrentVoiceItem()V

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->notifyDataSetChanged()V

    return v0
.end method

.method private handleInfoDownloadOK(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    const-string v1, "utf-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object p1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "config got!"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->parseVoicePackageConfig(Ljava/lang/String;)Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getVersion()I

    move-result v0

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getVersion()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->allIconDownloaded()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->downloadResource()V

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->configUpdated:Z

    iput-boolean p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->infoRefreshInProgress:Z

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->stopListViewRefreshing()V

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->configUpdated:Z

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    iput-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->oldVoicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    iput-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    sget-object p1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "robotLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->robotLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",robotLanguage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->robotLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->robotLocation:Ljava/lang/String;

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->robotLanguage:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->buildDisplayVoiceItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->downloadResource()V

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->preListenDownloader:Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {p1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->setVoicePkgInfo(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;)V

    return-void
.end method

.method private handleInstall(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a022a

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->sendGetCurrentVoiceIDCmd()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->installVoicePkgFailed()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->loadDownloadProgress()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->installVoicePkgFailed()V

    return-void
.end method

.method private handleInstallProgress(Landroid/os/Message;)V
    .locals 7

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "progress"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    if-eq v1, p1, :cond_1

    const/16 p1, 0xd

    if-eq v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a022e

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a022c

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a022d

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setDownloadFailed()V

    :goto_2
    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->resumeVPStatusPoll()V

    return-void

    :cond_2
    const-wide/16 v5, 0x3e8

    const/16 v1, 0xa

    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->installVoicePkgFailed()V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->getCurrentInstallVoiceItem()Lcom/rockrobo/more/voicepackage/VoiceItem;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v1

    iget v2, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentVoiceId:I

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->activity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_3
    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result p1

    iput p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentVoiceId:I

    iput v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentDownloadId:I

    :cond_4
    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setDownloadCompleted()V

    goto :goto_2

    :pswitch_2
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_5

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->installVoicePkgFailed()V

    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/rockrobo/more/VoicePackageActivity;->sendPollCurrentVoiceIDCmd(J)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setDownloadPercent(I)V

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->mHandler:Landroid/os/Handler;

    :goto_3
    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_3
    if-gtz v3, :cond_6

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {p1, v3}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setCurrentInstallVoiceItem(I)V

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_6
    :pswitch_4
    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->installVoicePkgFailed()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleResourceDownloadOK()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setVoicePkgInfo(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;)V

    iget v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentVoiceId:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iget v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentVoiceId:I

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setCurrentUsedVoiceItem(I)V

    :cond_0
    iget v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentDownloadId:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iget v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentDownloadId:I

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setCurrentInstallVoiceItem(I)V

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->infoRefreshInProgress:Z

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->stopListViewRefreshing()V

    return-void
.end method

.method private installVoicePkgFailed()V
    .locals 3

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a022e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setDownloadFailed()V

    return-void
.end method

.method private installVoicePkgNetFailed()V
    .locals 2

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/rockrobo/utils/RRUtils;->toastNetFail(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setDownloadFailed()V

    return-void
.end method

.method private loadDownloadProgress()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadVoicePackageDownloadStatus(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private makeCurrentVoiceIdPrefKey()Ljava/lang/String;
    .locals 2

    const-string v0, "voice_pkg_current_vp_id_"

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readLocalInfo(Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;)Lcom/rockrobo/more/voicepackage/VoicePackageInfo;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;->getConfigFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice package config file exist!path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->robotLocation:Ljava/lang/String;

    iget-object v2, p0, Lcom/rockrobo/more/VoicePackageActivity;->robotLanguage:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v2}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->buildDisplayVoiceItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, v1

    move-object v1, p1

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v1

    move-object v1, p1

    move-object p1, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto/16 :goto_7

    :catch_2
    move-exception p1

    move-object v5, v1

    move-object v1, v0

    :goto_0
    move-object v0, v5

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v5, v1

    move-object v1, v0

    :goto_1
    move-object v0, v5

    goto/16 :goto_6

    :cond_0
    :try_start_3
    sget-object p1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "voice package config file not exist!"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object p1, v0

    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    move-object v1, p1

    return-object v1

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_5
    move-exception p1

    move-object v1, v0

    :goto_4
    :try_start_5
    sget-object v2, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassNotFoundException, msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    return-object v1

    :catch_6
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_7
    move-exception p1

    move-object v1, v0

    :goto_6
    :try_start_7
    sget-object v2, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException, msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_2

    :try_start_8
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    return-object v1

    :catch_8
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :cond_2
    return-object v1

    :goto_7
    if-eqz v0, :cond_3

    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_8

    :catch_9
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_8
    throw p1
.end method

.method private readLocalPicture(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to read thumbnail bytes, length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sub-int v3, p2, v2

    if-lez v3, :cond_0

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    array-length p2, p1

    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private readLocalResource()V
    .locals 7

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;->getPushPicFile(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getPushPictureSize()I

    move-result v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/rockrobo/more/VoicePackageActivity;->readLocalPicture(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->setPushPicture(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException, msg:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0, v3}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->setPushPicture(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getDisplayVoiceItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/voicepackage/VoiceItem;

    sget-object v2, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "To read voice item, id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    iget-object v4, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v2, v4, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;->getPreListenFile(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;Lcom/rockrobo/more/voicepackage/VoiceItem;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v2}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setPreListenFile(Ljava/io/File;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v3}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setPreListenFile(Ljava/io/File;)V

    :goto_2
    iget-object v2, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    iget-object v4, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v2, v4, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;->getThumbFile(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;Lcom/rockrobo/more/voicepackage/VoiceItem;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getThumbnailSize()I

    move-result v4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    if-lez v4, :cond_2

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/rockrobo/more/VoicePackageActivity;->readLocalPicture(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setThumbnail(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v4, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException, msg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    sget-object v2, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thumb nail pic not found! id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v1, v3}, Lcom/rockrobo/more/voicepackage/VoiceItem;->setThumbnail(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method private resumeVPStatusPoll()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->stopStatusPoll:Z

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/rockrobo/more/VoicePackageActivity;->sendPollCurrentVoiceIDCmd(J)V

    :cond_0
    return-void
.end method

.method private saveLocalInfo()Z
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;->getConfigFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    sget-object v2, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private sendGetCurrentVoiceIDCmd()V
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/rockrobo/presenter/RobotPresenterI;->loadCurrentVoicePackageID(Ljava/lang/Integer;Ljava/lang/Integer;J)V

    return-void
.end method

.method private sendPollCurrentVoiceIDCmd(J)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadCurrentVoicePackageID(Ljava/lang/Integer;Ljava/lang/Integer;J)V

    return-void
.end method

.method private stopListViewRefreshing()V
    .locals 1

    iget-boolean v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->infoRefreshInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->postRefresh()V

    :cond_0
    return-void
.end method

.method private stopVPStatusPoll()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->stopStatusPoll:Z

    return-void
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a0227

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f080018

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->handleMessage(Landroid/os/Message;)V

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to handle msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_1
    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->stopVPStatusPoll()V

    return-void

    :pswitch_2
    iget-boolean p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->stopStatusPoll:Z

    if-nez p1, :cond_7

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/rockrobo/more/VoicePackageActivity;->sendPollCurrentVoiceIDCmd(J)V

    return-void

    :pswitch_3
    iget-boolean v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->stopStatusPoll:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, v4}, Lcom/rockrobo/more/VoicePackageActivity;->handleCurrentVoicePackage(Landroid/os/Message;Z)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/rockrobo/more/VoicePackageActivity;->sendPollCurrentVoiceIDCmd(J)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->stopListViewRefreshing()V

    return-void

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre listen play started for item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setPreListenPlayStarted(I)V

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    :goto_2
    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->notifyDataSetChanged()V

    return-void

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre listen play completed for item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setPreListenPlayCompleted(I)V

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    goto :goto_2

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got request to download pre listener for item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getVoiceItem(I)Lcom/rockrobo/more/voicepackage/VoiceItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->preListenDownloader:Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;

    invoke-virtual {v1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->addDownloadItem(Lcom/rockrobo/more/voicepackage/VoiceItem;)V

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setPreListenDownloadInProgress(I)V

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find voice item for id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setPreListenDownloadNull(I)V

    :goto_3
    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    goto :goto_2

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre listen download failed for item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setPreListenDownloadFail(I)V

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/rockrobo/utils/RRUtils;->toastNetFail(Landroid/app/Activity;I)V

    return-void

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre listen download OK for item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->playPreListen(I)V

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    goto/16 :goto_2

    :pswitch_9
    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setDownloadCompleted()V

    return-void

    :pswitch_a
    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->loadDownloadProgress()V

    return-void

    :pswitch_b
    iget p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->getProgressRetryCnt:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_3

    iget p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->getProgressRetryCnt:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->getProgressRetryCnt:I

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->installVoicePkgNetFailed()V

    iput v3, p0, Lcom/rockrobo/more/VoicePackageActivity;->getProgressRetryCnt:I

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->resumeVPStatusPoll()V

    return-void

    :pswitch_c
    invoke-direct {p0, p1}, Lcom/rockrobo/more/VoicePackageActivity;->handleInstallProgress(Landroid/os/Message;)V

    iput v3, p0, Lcom/rockrobo/more/VoicePackageActivity;->getProgressRetryCnt:I

    return-void

    :pswitch_d
    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->installVoicePkgNetFailed()V

    goto/16 :goto_0

    :pswitch_e
    invoke-direct {p0, p1}, Lcom/rockrobo/more/VoicePackageActivity;->handleInstall(Landroid/os/Message;)V

    return-void

    :pswitch_f
    iget p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentVoiceRetry:I

    const/4 v0, 0x7

    if-ge p1, v0, :cond_4

    iget p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentVoiceRetry:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->currentVoiceRetry:I

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->sendGetCurrentVoiceIDCmd()V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/rockrobo/utils/RRUtils;->toastNetFail(Landroid/app/Activity;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-direct {p0, p1, v3}, Lcom/rockrobo/more/VoicePackageActivity;->handleCurrentVoicePackage(Landroid/os/Message;Z)Z

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->handleResourceDownloadOK()V

    return-void

    :pswitch_12
    sget-object p1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Voice package retrieve failed!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->infoRetrieveCnt:I

    if-le p1, v4, :cond_5

    iput-boolean v4, p0, Lcom/rockrobo/more/VoicePackageActivity;->refreshFailToasted:Z

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/rockrobo/utils/RRUtils;->toastNetFail(Landroid/app/Activity;I)V

    :cond_5
    iput-boolean v3, p0, Lcom/rockrobo/more/VoicePackageActivity;->infoRefreshInProgress:Z

    iget-boolean p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->refreshFailToasted:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/rockrobo/utils/RRUtils;->toastNetFail(Landroid/app/Activity;I)V

    iput-boolean v4, p0, Lcom/rockrobo/more/VoicePackageActivity;->refreshFailToasted:Z

    return-void

    :cond_6
    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->postRefresh()V

    return-void

    :pswitch_13
    invoke-direct {p0, p1}, Lcom/rockrobo/more/VoicePackageActivity;->handleInfoDownloadOK(Landroid/os/Message;)V

    return-void

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/rockrobo/more/voicepackage/VoicePackageException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoicePackageException, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->postRefresh()V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_e
        :pswitch_d
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0600e1

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/VoicePackageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/VoicePackageActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/VoicePackageActivity$1;-><init>(Lcom/rockrobo/more/VoicePackageActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/rockrobo/more/voicepackage/VoicePackageUtils;->makeRootDirName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/rockrobo/more/VoicePackageActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgRootDir:Ljava/io/File;

    sget-object p1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice package storage path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgRootDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgRootDir:Ljava/io/File;

    invoke-direct {p1, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->getRobotLocation()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->robotLocation:Ljava/lang/String;

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->getRobotLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->robotLanguage:Ljava/lang/String;

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgRootDir:Ljava/io/File;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    invoke-direct {p0, p1}, Lcom/rockrobo/more/VoicePackageActivity;->readLocalInfo(Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;)Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->isIntegrated()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "To read resources!"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->readLocalResource()V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    sget-object p1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Bad info file! delete it!"

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Out of date info file! delete it!"

    :goto_0
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;->removeConfigFile()V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->getRegionCode()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/rockrobo/xmplugin/utils/MiJiaUtils;->selectDownloadFDSHost(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/rockrobo/xmplugin/utils/FDSOperator;

    const-string v3, "https"

    invoke-direct {v2, v3, p1}, Lcom/rockrobo/xmplugin/utils/FDSOperator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/rockrobo/more/VoicePackageActivity;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    new-instance p1, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;

    iget-object v6, p0, Lcom/rockrobo/more/VoicePackageActivity;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    iget-object v8, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    iget-object v9, p0, Lcom/rockrobo/more/VoicePackageActivity;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;Lcom/rockrobo/more/voicepackage/VoicePackageInfo;Lcom/rockrobo/xmplugin/utils/FDSOperator;)V

    iput-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->preListenDownloader:Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->preListenDownloader:Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->start()V

    const p1, 0x7f06010b

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/VoicePackageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    iput-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setDividerHeight(I)V

    new-instance p1, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->activity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/rockrobo/more/VoicePackageActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/rockrobo/more/VoicePackageActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    iget-object v6, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iget-object v8, p0, Lcom/rockrobo/more/VoicePackageActivity;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/rockrobo/presenter/RobotPresenterI;Lcom/rockrobo/more/voicepackage/VoicePackageInfo;Landroid/view/LayoutInflater;Lcom/rockrobo/xmplugin/utils/FDSOperator;)V

    iput-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->makeCurrentVoiceIdPrefKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->hasPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->makeCurrentVoiceIdPrefKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {p0, v2, v3}, Lcom/rockrobo/utils/PreferenceUtils;->getIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setCurrentUsedVoiceItem(I)V

    const-string p1, "voice_pkg_cur_voice_version_"

    iget-object v2, p0, Lcom/rockrobo/more/VoicePackageActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {p1, v2}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->hasPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, p1, v1}, Lcom/rockrobo/utils/PreferenceUtils;->getIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v1, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setCurrentVoiceVersion(I)V

    :cond_3
    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {p1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-boolean v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->infoRefreshInProgress:Z

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    new-instance v0, Lcom/rockrobo/more/VoicePackageActivity$2;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/VoicePackageActivity$2;-><init>(Lcom/rockrobo/more/VoicePackageActivity;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setRefreshListener(Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->doRefresh()V

    return-void
.end method

.method public onPause()V
    .locals 3

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause entry! is finishing?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->stopPreListen()V

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->getProgressRetryCnt:I

    iput-boolean v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->stopStatusPoll:Z

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global message version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getMessageVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->infoRetrieveCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->infoRetrieveCnt:I

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/rockrobo/more/VoicePackageActivity;->sendPollCurrentVoiceIDCmd(J)V

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 4

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on stop enter! is finishing?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rockrobo/more/VoicePackageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->configRetriever:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->configRetriever:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->configRetriever:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->resDownloader:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->resDownloader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->resDownloader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->preListenDownloader:Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->preListenDownloader:Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->preListenDownloader:Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackagePreListenDownloader;->interrupt()V

    :cond_2
    iget-boolean v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->configUpdated:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->oldVoicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgFileManager:Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->oldVoicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageFileManager;->getResourceDir(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To clean old resource!path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/rockrobo/utils/RRFileUtils;->deleteTree(Ljava/io/File;)Z

    move-result v0

    sget-object v1, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old resource dir removed! result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->configUpdated:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->isIntegrated()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "To save voice package config!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->saveLocalInfo()Z

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/rockrobo/more/VoicePackageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No need to save voice package config file!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->getCurrentUsedVoiceItem()Lcom/rockrobo/more/voicepackage/VoiceItem;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/rockrobo/more/VoicePackageActivity;->makeCurrentVoiceIdPrefKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->getCurrentUsedVoiceItem()Lcom/rockrobo/more/voicepackage/VoiceItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    const-string v0, "voice_pkg_cur_voice_version_"

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-static {v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity;->listAdapter:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->getCurrentVoiceVersion()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/rockrobo/utils/PreferenceUtils;->saveIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_6
    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onStop()V

    return-void
.end method
