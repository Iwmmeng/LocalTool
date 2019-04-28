.class Lcom/rockrobo/clean/productguide/UserGuideFragment$1;
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

    iput-object p1, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment$1;->this$0:Lcom/rockrobo/clean/productguide/UserGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/clean/productguide/UserGuideFragment$1;->this$0:Lcom/rockrobo/clean/productguide/UserGuideFragment;

    invoke-virtual {p1}, Lcom/rockrobo/clean/productguide/UserGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
