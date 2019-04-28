.class public Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;,
        Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$Builder;
    }
.end annotation


# instance fields
.field private mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

.field private mContext:Landroid/content/Context;

.field private mDismissCallBack:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;

.field public mItemTexts:[Ljava/lang/CharSequence;

.field private mStartY:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/xiaomi/common/R$style;->V5_AlertDialog:I

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/16 v0, 0x50

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;III)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mStartY:I

    new-instance p2, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p2, p1, p0, v0, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;I)V

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mStartY:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    sget v0, Lcom/xiaomi/common/R$style;->V5_AlertDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mStartY:I

    invoke-virtual {p0, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCancelable(Z)V

    invoke-virtual {p0, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance p2, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/16 v0, 0x50

    invoke-direct {p2, p1, p0, p3, v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;I)V

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;II)V
    .locals 1

    sget v0, Lcom/xiaomi/common/R$style;->V5_AlertDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mStartY:I

    invoke-virtual {p0, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setCancelable(Z)V

    invoke-virtual {p0, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance p2, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-direct {p2, p1, p0, p3, p4}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;I)V

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mContext:Landroid/content/Context;

    iput p5, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mStartY:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;)Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    return-object p0
.end method

.method private hideSoftInput()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private showSoftInput()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$1;-><init>(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mDismissCallBack:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mDismissCallBack:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;

    invoke-interface {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;->beforeDismissCallBack()V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->hideSoftInput()V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mDismissCallBack:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mDismissCallBack:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;

    invoke-interface {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;->afterDismissCallBack()V

    :cond_1
    return-void
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public getInputView()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public getItemTexts()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mItemTexts:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->installContent()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setAudoDismiss(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setAudoDismiss(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->sendDismissMessage()V

    :cond_0
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public setDismissCallBack(Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mDismissCallBack:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog$DismissCallBack;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setInverseBackgroundForced(Z)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setView(Landroid/view/View;)V

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mAlert:Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertController;->setView(Landroid/view/View;IIII)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->mStartY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0}, Lcom/xiaomi/smarthome/common/ui/dialog/MLAlertDialog;->showSoftInput()V

    return-void
.end method
