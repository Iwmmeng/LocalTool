.class public Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;
.super Landroid/app/AlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/xiaomi/common/R$style;->XQProgressDialogSimple:I

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->setIndeterminate(Z)V

    return-void
.end method

.method public static show(Landroid/content/Context;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;
    .locals 1

    sget v0, Lcom/xiaomi/common/R$string;->refreshing_no_point:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->show(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->show(Landroid/content/Context;Ljava/lang/CharSequence;Z)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Z)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;
    .locals 1

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->setCancelable(Z)V

    invoke-virtual {v0, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->show()V

    return-object v0
.end method


# virtual methods
.method public isIndeterminate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/xiaomi/common/R$layout;->xq_progress_dialog_simple:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->setContentView(Landroid/view/View;)V

    sget v0, Lcom/xiaomi/common/R$id;->progress_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->mMessageView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->mMessage:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 0

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialogSimple;->mMessage:Ljava/lang/CharSequence;

    return-void
.end method
