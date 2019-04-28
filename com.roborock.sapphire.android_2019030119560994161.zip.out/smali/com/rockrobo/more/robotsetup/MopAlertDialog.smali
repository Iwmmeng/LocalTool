.class public Lcom/rockrobo/more/robotsetup/MopAlertDialog;
.super Landroid/app/Dialog;


# instance fields
.field private button_confirm:Landroid/widget/Button;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0002

    invoke-direct {p0, p1, v0}, Lcom/rockrobo/more/robotsetup/MopAlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f08003b

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/robotsetup/MopAlertDialog;->setContentView(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/robotsetup/MopAlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/rockrobo/more/robotsetup/MopAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    const p1, 0x7f060016

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/robotsetup/MopAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/rockrobo/more/robotsetup/MopAlertDialog;->button_confirm:Landroid/widget/Button;

    iget-object p1, p0, Lcom/rockrobo/more/robotsetup/MopAlertDialog;->button_confirm:Landroid/widget/Button;

    new-instance v0, Lcom/rockrobo/more/robotsetup/MopAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/robotsetup/MopAlertDialog$1;-><init>(Lcom/rockrobo/more/robotsetup/MopAlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f06003c

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/robotsetup/MopAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/robotsetup/MopAlertDialog;->rootView:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 10

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f8ccccd    # 1.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/rockrobo/more/robotsetup/MopAlertDialog;->rootView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
