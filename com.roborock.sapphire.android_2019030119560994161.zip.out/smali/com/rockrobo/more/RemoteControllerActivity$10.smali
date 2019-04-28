.class Lcom/rockrobo/more/RemoteControllerActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/RemoteControllerActivity;->showInitProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/RemoteControllerActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/RemoteControllerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$10;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$10;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/RemoteControllerActivity;->finish()V

    return-void
.end method
