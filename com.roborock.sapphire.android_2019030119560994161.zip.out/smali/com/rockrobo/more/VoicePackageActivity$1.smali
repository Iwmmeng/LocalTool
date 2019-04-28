.class Lcom/rockrobo/more/VoicePackageActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity$1;->this$0:Lcom/rockrobo/more/VoicePackageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/more/VoicePackageActivity$1;->this$0:Lcom/rockrobo/more/VoicePackageActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/VoicePackageActivity;->finish()V

    return-void
.end method
