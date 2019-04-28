.class Lcom/rockrobo/clean/productguide/UserGuideFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/clean/productguide/UserGuideFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/clean/productguide/UserGuideFragment;


# direct methods
.method constructor <init>(Lcom/rockrobo/clean/productguide/UserGuideFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment$2;->this$0:Lcom/rockrobo/clean/productguide/UserGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment$2;->this$0:Lcom/rockrobo/clean/productguide/UserGuideFragment;

    invoke-static {v0}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->access$000(Lcom/rockrobo/clean/productguide/UserGuideFragment;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video/*"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment$2;->this$0:Lcom/rockrobo/clean/productguide/UserGuideFragment;

    invoke-virtual {v0}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/rockrobo/utils/SysUtils;->isIntentSafe(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment$2;->this$0:Lcom/rockrobo/clean/productguide/UserGuideFragment;

    invoke-virtual {v0, p1}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment$2;->this$0:Lcom/rockrobo/clean/productguide/UserGuideFragment;

    invoke-virtual {p1}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a0144

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
