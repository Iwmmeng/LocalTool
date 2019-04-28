.class Lcom/rockrobo/more/TimeZoneSyncActivity$TimeZoneSyncListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/TimeZoneSyncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneSyncListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/TimeZoneSyncActivity;


# direct methods
.method private constructor <init>(Lcom/rockrobo/more/TimeZoneSyncActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/TimeZoneSyncActivity$TimeZoneSyncListener;->this$0:Lcom/rockrobo/more/TimeZoneSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/more/TimeZoneSyncActivity;Lcom/rockrobo/more/TimeZoneSyncActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/TimeZoneSyncActivity$TimeZoneSyncListener;-><init>(Lcom/rockrobo/more/TimeZoneSyncActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/rockrobo/more/TimeZoneSyncActivity$TimeZoneSyncListener;->this$0:Lcom/rockrobo/more/TimeZoneSyncActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/TimeZoneSyncActivity;->syncTimeZone()V

    iget-object p1, p0, Lcom/rockrobo/more/TimeZoneSyncActivity$TimeZoneSyncListener;->this$0:Lcom/rockrobo/more/TimeZoneSyncActivity;

    iget-object v0, p0, Lcom/rockrobo/more/TimeZoneSyncActivity$TimeZoneSyncListener;->this$0:Lcom/rockrobo/more/TimeZoneSyncActivity;

    invoke-static {v0}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->displayCommonProgressDialog(Landroid/app/Activity;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/rockrobo/more/TimeZoneSyncActivity;->access$102(Lcom/rockrobo/more/TimeZoneSyncActivity;Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    return-void
.end method
