.class public Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;
    }
.end annotation


# static fields
.field public static final CURRENT_VOICE_ID_NONE:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PRE_LISTEN_DOWNLOAD_ID_NONE:I = -0x1

.field public static final PRE_LISTEN_PLAY_ID_NONE:I = -0x1


# instance fields
.field private final activity:Landroid/app/Activity;

.field private currentInstallVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

.field private currentPreListenDownloadId:I

.field private currentPreListenPlayId:I

.field private currentUsedVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

.field private currentVoiceVersion:I

.field private downloadedPercent:I

.field private final fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

.field private final handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private final presenter:Lcom/rockrobo/presenter/RobotPresenterI;

.field private voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/rockrobo/presenter/RobotPresenterI;Lcom/rockrobo/more/voicepackage/VoicePackageInfo;Landroid/view/LayoutInflater;Lcom/rockrobo/xmplugin/utils/FDSOperator;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentUsedVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentInstallVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    const/4 v0, -0x1

    iput v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenDownloadId:I

    iput v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenPlayId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentVoiceVersion:I

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->presenter:Lcom/rockrobo/presenter/RobotPresenterI;

    iput-object p4, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    iput-object p5, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p6, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->sendPreListenCompleteMsg(Lcom/rockrobo/more/voicepackage/VoiceItem;)V

    return-void
.end method

.method static synthetic access$202(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenDownloadId:I

    return p1
.end method

.method static synthetic access$302(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenPlayId:I

    return p1
.end method

.method static synthetic access$400(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Lcom/rockrobo/more/voicepackage/VoiceItem;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentInstallVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    return-object p0
.end method

.method static synthetic access$702(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)Lcom/rockrobo/more/voicepackage/VoiceItem;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentInstallVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    return-object p1
.end method

.method static synthetic access$802(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->downloadedPercent:I

    return p1
.end method

.method static synthetic access$900(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->sendInstallVoicePkgCmd(Lcom/rockrobo/more/voicepackage/VoiceItem;)V

    return-void
.end method

.method private buildViewFromInfo(I)Landroid/view/View;
    .locals 6

    const v0, 0x7f060051

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v2}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getItemCount()I

    move-result v2

    if-gt p1, v2, :cond_2

    iget-object v2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v2}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getDisplayVoiceItems()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/more/voicepackage/VoiceItem;

    iget-object v3, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f08002c

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setupImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    const v0, 0x7f0600dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getDisplayTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0600ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getItemCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v0, "To set sep line margin!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f06010c

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v3, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "layout param string:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setupPreListenBtn(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/view/View;)V

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentInstallVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentInstallVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result p1

    invoke-virtual {v2}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->showProgressBar(Landroid/view/View;)V

    return-object v1

    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->displayUseButton(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/view/View;)V

    return-object v1

    :cond_2
    sget-object v0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Position out of range! position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", item count:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getItemCount()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f08002d

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getPushPicture()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setupImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private displayUseButton(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->hideProgressBar(Landroid/view/View;)V

    const v0, 0x7f06010e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    const v1, 0x7f06010a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentUsedVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentUsedVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0, p2}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setupCurrentUseButton(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/widget/CheckedTextView;Landroid/widget/TextView;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setupUseButton(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/widget/CheckedTextView;)V

    return-void
.end method

.method private hideProgressBar(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f06010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x7f06010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    return-void
.end method

.method private sendInstallVoicePkgCmd(Lcom/rockrobo/more/voicepackage/VoiceItem;)V
    .locals 5

    const/4 v0, 0x7

    :try_start_0
    iget-object v1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->handler:Landroid/os/Handler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->presenter:Lcom/rockrobo/presenter/RobotPresenterI;

    iget-object v2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->fdsOperator:Lcom/rockrobo/xmplugin/utils/FDSOperator;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getVoicePkgUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rockrobo/xmplugin/utils/FDSOperator;->getHostUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/rockrobo/presenter/RobotPresenterI;->installSound(Lcom/rockrobo/more/voicepackage/VoiceItem;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/rockrobo/presenter/PresenterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v1, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/presenter/PresenterException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private sendPreListenCompleteMsg(Lcom/rockrobo/more/voicepackage/VoiceItem;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setupCurrentUseButton(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/widget/CheckedTextView;Landroid/widget/TextView;)V
    .locals 3

    sget-object v0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Info voice item version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",current voice version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentVoiceVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getVersion()I

    move-result v0

    iget v1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentVoiceVersion:I

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->isDefaultVoicePackage()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f05024b

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    const v0, 0x7f0a0228

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setText(I)V

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    new-instance v0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;

    invoke-direct {v0, p0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;-><init>(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const p1, 0x7f050249

    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    const p1, 0x7f0a0229

    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setText(I)V

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0300f6

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    return-void
.end method

.method private setupImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private setupPauseButton(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/view/View;)V
    .locals 3

    const v0, 0x7f06008e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f06008d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f06008f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p2, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$1;-><init>(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupPlayButton(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/view/View;)V
    .locals 3

    const v0, 0x7f06008e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f06008d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f06008f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p2, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;

    invoke-direct {p2, p0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;-><init>(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupPreListenBtn(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenDownloadId:I

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenPlayId:I

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setupPlayButton(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/view/View;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setupPauseButton(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/view/View;)V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setupProgressBar(Landroid/view/View;)V

    return-void
.end method

.method private setupProgressBar(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f06008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f06008d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f06008f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setupUseButton(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/widget/CheckedTextView;)V
    .locals 2

    const v0, 0x7f05024b

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    const v0, 0x7f0a0230

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setText(I)V

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    new-instance v0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;

    invoke-direct {v0, p0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;-><init>(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showProgressBar(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f06010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v2, 0x7f06010e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    iget p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->downloadedPercent:I

    if-gez p1, :cond_0

    :goto_0
    iput v1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->downloadedPercent:I

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->downloadedPercent:I

    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p1, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download percent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->downloadedPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->downloadedPercent:I

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurrentInstallVoiceItem()Lcom/rockrobo/more/voicepackage/VoiceItem;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentInstallVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    return-object v0
.end method

.method public getCurrentUsedVoiceItem()Lcom/rockrobo/more/voicepackage/VoiceItem;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentUsedVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    return-object v0
.end method

.method public getCurrentVoiceVersion()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentVoiceVersion:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->buildViewFromInfo(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public playPreListen(I)V
    .locals 3

    iget v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenDownloadId:I

    if-ne v0, p1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenDownloadId:I

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenPlayId:I

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getVoiceItem(I)Lcom/rockrobo/more/voicepackage/VoiceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getPreListenFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getPreListenFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$3;

    invoke-direct {v1, p0, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$3;-><init>(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void

    :cond_0
    sget-object v0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error, item is null or pre listen file is null for item id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setCurrentInstallVoiceItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getVoiceItem(I)Lcom/rockrobo/more/voicepackage/VoiceItem;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentInstallVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    :cond_0
    return-void
.end method

.method public setCurrentUsedVoiceItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {v0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo;->getVoiceItem(I)Lcom/rockrobo/more/voicepackage/VoiceItem;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentUsedVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    :cond_0
    return-void
.end method

.method public setCurrentVoiceVersion(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentVoiceVersion:I

    return-void
.end method

.method public setDownloadCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentInstallVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentInstallVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentUsedVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentInstallVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->downloadedPercent:I

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentUsedVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentVoiceVersion:I

    invoke-virtual {p0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setDownloadFailed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentInstallVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->downloadedPercent:I

    invoke-virtual {p0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDownloadPercent(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->downloadedPercent:I

    invoke-virtual {p0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setNoCurrentVoiceItem()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentUsedVoiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    return-void
.end method

.method public setPreListenDownloadFail(I)V
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenDownloadId:I

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenDownloadId:I

    :cond_0
    return-void
.end method

.method public setPreListenDownloadInProgress(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenDownloadId:I

    return-void
.end method

.method public setPreListenDownloadNull(I)V
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenDownloadId:I

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenDownloadId:I

    :cond_0
    return-void
.end method

.method public setPreListenPlayCompleted(I)V
    .locals 1

    iget v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenPlayId:I

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenPlayId:I

    :cond_0
    return-void
.end method

.method public setPreListenPlayStarted(I)V
    .locals 0

    iput p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenPlayId:I

    return-void
.end method

.method public setVoicePkgInfo(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->voicePkgInfo:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-virtual {p0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public stopPreListen()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "to stop media player!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenPlayId:I

    iput v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->currentPreListenDownloadId:I

    invoke-virtual {p0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->notifyDataSetChanged()V

    return-void
.end method
