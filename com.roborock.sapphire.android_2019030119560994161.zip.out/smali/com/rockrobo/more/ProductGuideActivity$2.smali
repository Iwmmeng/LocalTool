.class Lcom/rockrobo/more/ProductGuideActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/ProductGuideActivity;->createListView()V
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

    iput-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$2;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$2;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p1}, Lcom/rockrobo/more/ProductGuideActivity;->access$500(Lcom/rockrobo/more/ProductGuideActivity;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$2;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-static {p1}, Lcom/rockrobo/more/ProductGuideActivity;->access$600(Lcom/rockrobo/more/ProductGuideActivity;)[I

    move-result-object p1

    aget p1, p1, p3

    const p3, 0x7f0a01d0

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$2;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    const-string p3, "clipboard"

    invoke-virtual {p1, p3}, Lcom/rockrobo/more/ProductGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getSerialNo()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "serial_no"

    const-string p4, ""

    :goto_0
    invoke-static {p3, p4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_1

    :cond_0
    const-string p3, "serial_no"

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getSerialNo()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/rockrobo/more/ProductGuideActivity$2;->this$0:Lcom/rockrobo/more/ProductGuideActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/ProductGuideActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const p3, 0x7f0a01a1

    invoke-static {p1, p3, p2}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    :cond_1
    return p2
.end method
