.class Lcom/rockrobo/more/VoicePackageActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/VoicePackageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/VoicePackageActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/VoicePackageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity$2;->this$0:Lcom/rockrobo/more/VoicePackageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startRefresh()V
    .locals 10

    invoke-static {}, Lcom/rockrobo/more/VoicePackageActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "To get voice pkg config and resources from FDS!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity$2;->this$0:Lcom/rockrobo/more/VoicePackageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rockrobo/more/VoicePackageActivity;->access$102(Lcom/rockrobo/more/VoicePackageActivity;Z)Z

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity$2;->this$0:Lcom/rockrobo/more/VoicePackageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/rockrobo/more/VoicePackageActivity;->access$202(Lcom/rockrobo/more/VoicePackageActivity;Z)Z

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity$2;->this$0:Lcom/rockrobo/more/VoicePackageActivity;

    invoke-static {v0}, Lcom/rockrobo/more/VoicePackageActivity;->access$304(Lcom/rockrobo/more/VoicePackageActivity;)I

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity$2;->this$0:Lcom/rockrobo/more/VoicePackageActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/VoicePackageActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageUtils;->buildInfoPath(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity$2;->this$0:Lcom/rockrobo/more/VoicePackageActivity;

    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/rockrobo/xmplugin/XmFDSDownloader;

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity$2;->this$0:Lcom/rockrobo/more/VoicePackageActivity;

    invoke-static {v1}, Lcom/rockrobo/more/VoicePackageActivity;->access$500(Lcom/rockrobo/more/VoicePackageActivity;)Lcom/rockrobo/xmplugin/utils/FDSOperator;

    move-result-object v2

    iget-object v1, p0, Lcom/rockrobo/more/VoicePackageActivity$2;->this$0:Lcom/rockrobo/more/VoicePackageActivity;

    iget-object v3, v1, Lcom/rockrobo/more/VoicePackageActivity;->mHandler:Landroid/os/Handler;

    const-string v4, "sapphire"

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/rockrobo/xmplugin/XmFDSDownloader;-><init>(Lcom/rockrobo/xmplugin/utils/FDSOperator;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v8}, Lcom/rockrobo/more/VoicePackageActivity;->access$402(Lcom/rockrobo/more/VoicePackageActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/rockrobo/more/VoicePackageActivity$2;->this$0:Lcom/rockrobo/more/VoicePackageActivity;

    invoke-static {v0}, Lcom/rockrobo/more/VoicePackageActivity;->access$400(Lcom/rockrobo/more/VoicePackageActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
