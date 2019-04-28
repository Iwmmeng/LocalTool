.class Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2$1;->this$1:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2$1;->this$1:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;

    iget-object p1, p1, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2$1;->this$1:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;

    iget-object v0, v0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$2;->val$voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-static {p1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$100(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V

    return-void
.end method
