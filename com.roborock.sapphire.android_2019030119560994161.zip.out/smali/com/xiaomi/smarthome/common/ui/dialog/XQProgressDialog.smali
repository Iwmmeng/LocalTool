.class public Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
.super Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;


# instance fields
.field private mCancelIntercepter:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

.field private mIndeterminateProgress:Landroid/widget/ProgressBar;

.field private mIsCancelable:Z

.field private mIsIndeterminate:Z

.field mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mPercentUpdateHandler:Landroid/os/Handler;

.field mProgress:I

.field private mProgressCancel:Landroid/widget/TextView;

.field private mProgressMessage:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/xiaomi/common/R$style;->V5_AlertDialog:I

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->initFormats()V

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Ljava/text/NumberFormat;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mCancelIntercepter:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private initFormats()V
    .locals 2

    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private onProgressChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIsIndeterminate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mPercentUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mPercentUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mPercentUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;
    .locals 1

    new-instance v0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-direct {v0, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, p4}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, p5}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->show()V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-super {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->cancel()V

    return-void
.end method

.method public getMax()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->getMax()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->getProgress()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIndeterminate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIsIndeterminate:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaomi/common/R$layout;->xq_progress_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$1;-><init>(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)V

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mPercentUpdateHandler:Landroid/os/Handler;

    sget v1, Lcom/xiaomi/common/R$id;->indeterminate_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIndeterminateProgress:Landroid/widget/ProgressBar;

    sget v1, Lcom/xiaomi/common/R$id;->determinate_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    sget v1, Lcom/xiaomi/common/R$id;->progress_percent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    sget v1, Lcom/xiaomi/common/R$id;->progress_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressMessage:Landroid/widget/TextView;

    sget v1, Lcom/xiaomi/common/R$id;->cancel_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressCancel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIndeterminateProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIsIndeterminate:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setIndeterminate(Z)V

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIsCancelable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressCancel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog$2;-><init>(Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressCancel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgress:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->setProgress(I)V

    :cond_2
    iget v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mMax:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mMax:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->setMax(I)V

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->onProgressChanged()V

    invoke-super {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCancelIntercepter(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mCancelIntercepter:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCancelable(Z)V

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIsCancelable:Z

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIsIndeterminate:Z

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIndeterminateProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIndeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIndeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    invoke-virtual {p1, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIsIndeterminate:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIsIndeterminate:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mMax:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->onProgressChanged()V

    :cond_1
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIsIndeterminate:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgress:I

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->onProgressChanged()V

    :cond_1
    return-void
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setShowProgress(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIsIndeterminate:Z

    invoke-virtual {p0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->setIndeterminate(Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mIndeterminateProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->mDeterminateProgress:Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomCircleProgressBar;->setVisibility(I)V

    return-void
.end method
