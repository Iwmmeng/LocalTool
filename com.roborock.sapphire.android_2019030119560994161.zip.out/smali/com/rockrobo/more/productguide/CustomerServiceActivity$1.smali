.class Lcom/rockrobo/more/productguide/CustomerServiceActivity$1;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/productguide/CustomerServiceActivity;->buildWeChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/productguide/CustomerServiceActivity;

.field final synthetic val$weChatName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/productguide/CustomerServiceActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/productguide/CustomerServiceActivity$1;->this$0:Lcom/rockrobo/more/productguide/CustomerServiceActivity;

    iput-object p2, p0, Lcom/rockrobo/more/productguide/CustomerServiceActivity$1;->val$weChatName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Win xin been clicked!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/productguide/CustomerServiceActivity$1;->this$0:Lcom/rockrobo/more/productguide/CustomerServiceActivity;

    invoke-static {p1}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->access$100(Lcom/rockrobo/more/productguide/CustomerServiceActivity;)Landroid/content/ClipboardManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "text"

    iget-object v1, p0, Lcom/rockrobo/more/productguide/CustomerServiceActivity$1;->val$weChatName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    iget-object v1, p0, Lcom/rockrobo/more/productguide/CustomerServiceActivity$1;->this$0:Lcom/rockrobo/more/productguide/CustomerServiceActivity;

    invoke-static {v1}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->access$100(Lcom/rockrobo/more/productguide/CustomerServiceActivity;)Landroid/content/ClipboardManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p1, p0, Lcom/rockrobo/more/productguide/CustomerServiceActivity$1;->this$0:Lcom/rockrobo/more/productguide/CustomerServiceActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0a004d

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/rockrobo/more/productguide/CustomerServiceActivity$1;->this$0:Lcom/rockrobo/more/productguide/CustomerServiceActivity;

    invoke-virtual {v1}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rockrobo/more/productguide/CustomerServiceActivity$1;->this$0:Lcom/rockrobo/more/productguide/CustomerServiceActivity;

    invoke-virtual {p1}, Lcom/rockrobo/more/productguide/CustomerServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0a003b

    goto :goto_0

    return-void
.end method
