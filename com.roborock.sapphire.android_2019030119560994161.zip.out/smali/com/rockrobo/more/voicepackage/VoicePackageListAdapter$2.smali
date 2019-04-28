.class Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->setupPlayButton(Lcom/rockrobo/more/voicepackage/VoiceItem;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iput-object p2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->val$voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$000(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$000(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$000(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$000(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$002(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->val$voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->val$voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getPreListenFile()Ljava/io/File;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$202(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;I)I

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->val$voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$302(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;I)I

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$400(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->val$voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {v1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getPreListenFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$002(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$000(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$000(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/media/MediaPlayer;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2$1;-><init>(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$000(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x14

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$302(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;I)I

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x12

    :goto_0
    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->val$voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {v0}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$500(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
