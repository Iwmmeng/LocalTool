.class Lcom/rockrobo/clean/CleanActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/clean/CleanActivity;->setupModeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/clean/CleanActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$9;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$9;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$400(Lcom/rockrobo/clean/CleanActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$9;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$500(Lcom/rockrobo/clean/CleanActivity;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$9;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$2100(Lcom/rockrobo/clean/CleanActivity;)V

    return-void
.end method
