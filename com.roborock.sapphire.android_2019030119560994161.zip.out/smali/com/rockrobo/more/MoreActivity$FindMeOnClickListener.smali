.class Lcom/rockrobo/more/MoreActivity$FindMeOnClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/MoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindMeOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/MoreActivity;


# direct methods
.method private constructor <init>(Lcom/rockrobo/more/MoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/MoreActivity$FindMeOnClickListener;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/more/MoreActivity;Lcom/rockrobo/more/MoreActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/MoreActivity$FindMeOnClickListener;-><init>(Lcom/rockrobo/more/MoreActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    sget-object p1, Lcom/rockrobo/clean/RobotStatus;->UPDATING:Lcom/rockrobo/clean/RobotStatus;

    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity$FindMeOnClickListener;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {v0}, Lcom/rockrobo/more/MoreActivity;->access$100(Lcom/rockrobo/more/MoreActivity;)Lcom/rockrobo/clean/RobotStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rockrobo/clean/RobotStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$FindMeOnClickListener;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/MoreActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a00eb

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$FindMeOnClickListener;->this$0:Lcom/rockrobo/more/MoreActivity;

    iget-object v0, p0, Lcom/rockrobo/more/MoreActivity$FindMeOnClickListener;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {v0}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->displayCommonProgressDialog(Landroid/app/Activity;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/rockrobo/more/MoreActivity;->access$202(Lcom/rockrobo/more/MoreActivity;Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object p1, p0, Lcom/rockrobo/more/MoreActivity$FindMeOnClickListener;->this$0:Lcom/rockrobo/more/MoreActivity;

    invoke-static {p1}, Lcom/rockrobo/more/MoreActivity;->access$300(Lcom/rockrobo/more/MoreActivity;)Lcom/rockrobo/presenter/RobotPresenterI;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/rockrobo/presenter/RobotPresenterI;->sendFindMe(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
