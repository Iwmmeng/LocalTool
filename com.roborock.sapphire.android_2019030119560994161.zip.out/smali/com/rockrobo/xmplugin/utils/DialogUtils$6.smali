.class final Lcom/rockrobo/xmplugin/utils/DialogUtils$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/xmplugin/utils/DialogUtils;->doAlert(Landroid/app/Activity;Ljava/lang/Integer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterDismissCallBack()V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/xmplugin/utils/DialogUtils$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public beforeDismissCallBack()V
    .locals 0

    return-void
.end method
