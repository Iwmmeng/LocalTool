.class public Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;
.super Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeterminateProgress:Landroid/widget/ProgressBar;

.field private mMessage:Ljava/lang/CharSequence;

.field private mProgressMessage:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/xiaomi/common/R$style;->V5_AlertDialog:I

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->initFormats()V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->setCancelable(Z)V

    return-void
.end method

.method private initFormats()V
    .locals 2

    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mProgressNumberFormat:Ljava/lang/String;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;
    .locals 1

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->show()V

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mDeterminateProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mDeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mDeterminateProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mDeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$layout;->xq_progress_horizital_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mDeterminateProgress:Landroid/widget/ProgressBar;

    sget v1, Lcom/xiaomi/common/R$id;->progress_percent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mProgressPercent:Landroid/widget/TextView;

    sget v1, Lcom/xiaomi/common/R$id;->progress_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mProgressMessage:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mProgressMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mProgressMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setProgress(II)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mDeterminateProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mDeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mDeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    if-eqz v0, :cond_1

    int-to-double v0, p2

    int-to-double p1, p1

    div-double/2addr v0, p1

    new-instance p1, Landroid/text/SpannableString;

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    invoke-virtual {p2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mProgressPercent:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressHorizontalDialog;->mProgressPercent:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
