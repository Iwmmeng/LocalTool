.class Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setupPauseButton(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

.field final synthetic val$voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$1;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iput-object p2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$1;->val$voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$1;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$000(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$1;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$000(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$1;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$000(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$1;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$1;->val$voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-static {p1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$100(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V

    :cond_0
    return-void
.end method
