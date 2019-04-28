.class Lcom/rockrobo/more/consumable/FilterElementActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/consumable/FilterElementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/consumable/FilterElementActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/consumable/FilterElementActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/consumable/FilterElementActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterElementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/rockrobo/more/consumable/FilterElementActivity$1;->this$0:Lcom/rockrobo/more/consumable/FilterElementActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/consumable/FilterElementActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a003d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    return-void
.end method
