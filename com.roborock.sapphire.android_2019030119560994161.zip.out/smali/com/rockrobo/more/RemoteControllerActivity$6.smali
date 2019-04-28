.class Lcom/rockrobo/more/RemoteControllerActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$6;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$6;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RemoteControllerActivity;->access$700(Lcom/rockrobo/more/RemoteControllerActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$6;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RemoteControllerActivity;->access$800(Lcom/rockrobo/more/RemoteControllerActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$6;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RemoteControllerActivity;->access$900(Lcom/rockrobo/more/RemoteControllerActivity;)Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    move-result-object p1

    sget-object p2, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->BUTTON:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$6;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    sget-object p2, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->BUTTON:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    invoke-static {p1, p2}, Lcom/rockrobo/more/RemoteControllerActivity;->access$902(Lcom/rockrobo/more/RemoteControllerActivity;Lcom/rockrobo/more/RemoteControllerActivity$RCType;)Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$6;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {p1}, Lcom/rockrobo/more/RemoteControllerActivity;->access$1000(Lcom/rockrobo/more/RemoteControllerActivity;)V

    iget-object p1, p0, Lcom/rockrobo/more/RemoteControllerActivity$6;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    const-string p2, "rc_type_"

    invoke-static {p2}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyAccountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/rockrobo/more/RemoteControllerActivity$6;->this$0:Lcom/rockrobo/more/RemoteControllerActivity;

    invoke-static {v0}, Lcom/rockrobo/more/RemoteControllerActivity;->access$900(Lcom/rockrobo/more/RemoteControllerActivity;)Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    move-result-object v0

    invoke-static {v0}, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->access$600(Lcom/rockrobo/more/RemoteControllerActivity$RCType;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/rockrobo/utils/PreferenceUtils;->saveIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
