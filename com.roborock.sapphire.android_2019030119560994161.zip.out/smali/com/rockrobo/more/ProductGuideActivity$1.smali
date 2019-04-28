.class Lcom/rockrobo/more/ProductGuideActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/ProductGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/ProductGuideActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/ProductGuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$1;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$1;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity$1;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {v0}, Lcom/rockrobo/more/ProductGuideActivity;->access$100(Lcom/rockrobo/more/ProductGuideActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-static {p1, v0}, Lcom/rockrobo/more/ProductGuideActivity;->access$002(Lcom/rockrobo/more/ProductGuideActivity;I)I

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$1;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p1}, Lcom/rockrobo/more/ProductGuideActivity;->access$200(Lcom/rockrobo/more/ProductGuideActivity;)Lcom/rockrobo/presenter/URLPresenterI;

    move-result-object p1

    invoke-interface {p1}, Lcom/rockrobo/presenter/URLPresenterI;->getProductGuideVideoAllUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/rockrobo/more/ProductGuideActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockrobo/more/ProductGuideActivity$1;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p1, v0}, Lcom/rockrobo/utils/RRUtils;->playVideo(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$1;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/ProductGuideActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a0144

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method
