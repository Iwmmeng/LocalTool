.class Lcom/rockrobo/more/RemoteControllerActivity$8;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/RemoteControllerActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$8;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter onReceive!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network available, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/rockrobo/more/RemoteControllerActivity$8;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1200(Lcom/rockrobo/more/RemoteControllerActivity;)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/rockrobo/more/RemoteControllerActivity$8;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1202(Lcom/rockrobo/more/RemoteControllerActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$8;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p1, v0}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1302(Lcom/rockrobo/more/RemoteControllerActivity;Z)Z

    return-void

    :cond_0
    iget-object p2, p0, Lcom/rockrobo/more/RemoteControllerActivity$8;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p2}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1200(Lcom/rockrobo/more/RemoteControllerActivity;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    iget-object p2, p0, Lcom/rockrobo/more/RemoteControllerActivity$8;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1202(Lcom/rockrobo/more/RemoteControllerActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    :goto_0
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$8;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p1, v2}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1302(Lcom/rockrobo/more/RemoteControllerActivity;Z)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$8;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1200(Lcom/rockrobo/more/RemoteControllerActivity;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No network!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$8;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1202(Lcom/rockrobo/more/RemoteControllerActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_3
    return-void
.end method
