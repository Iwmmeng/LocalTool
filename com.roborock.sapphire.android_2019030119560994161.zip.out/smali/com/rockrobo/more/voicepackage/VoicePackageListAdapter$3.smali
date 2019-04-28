.class Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->playPreListen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

.field final synthetic val$item:Lcom/rockrobo/more/voicepackage/VoiceItem;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$3;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iput-object p2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$3;->val$item:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$3;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$3;->val$item:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-static {p1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$100(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V

    return-void
.end method
