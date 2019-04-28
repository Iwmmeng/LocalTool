.class Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$1;->this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$1;->this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$1;->this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    invoke-static {v0}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->access$100(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-static {p1, v0}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->access$002(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;I)I

    iget-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$1;->this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    invoke-static {p1}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->access$200(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$1;->this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    invoke-static {p1, v0}, Lcom/rockrobo/utils/RRUtils;->playVideo(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$1;->this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a0144

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
