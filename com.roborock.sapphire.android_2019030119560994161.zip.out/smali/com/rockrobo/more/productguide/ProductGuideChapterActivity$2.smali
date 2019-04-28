.class Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

.field final synthetic this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->access$302(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;Z)Z

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->dialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    invoke-direct {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->dialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->dialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->dialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->dialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->dialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->dialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    new-instance v1, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2$1;

    invoke-direct {v1, p0}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2$1;-><init>(Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->this$0:Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;

    invoke-virtual {v0}, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ProductGuideChapterActivity$2;->dialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
