.class public Lcom/rockrobo/dialog/CountrySelectDialog;
.super Landroid/app/Dialog;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private cancelButton:Landroid/widget/TextView;

.field private listAdapter:Lcom/rockrobo/dialog/CountryListAdapter;

.field private negativeListener:Landroid/view/View$OnClickListener;

.field private okButton:Landroid/widget/TextView;

.field private positiveListener:Landroid/view/View$OnClickListener;

.field private regionCode:Ljava/lang/String;

.field private selectedStrId:Ljava/lang/Integer;

.field private final serverCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/dialog/CountrySelectDialog;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0b001a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->selectedStrId:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->okButton:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->cancelButton:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->positiveListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->negativeListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->regionCode:Ljava/lang/String;

    invoke-static {p2}, Lcom/rockrobo/xmplugin/ServerRegionCode;->regionToServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->serverCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/dialog/CountrySelectDialog;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->selectedStrId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/rockrobo/dialog/CountrySelectDialog;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->selectedStrId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/rockrobo/dialog/CountrySelectDialog;)Lcom/rockrobo/dialog/CountryListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->listAdapter:Lcom/rockrobo/dialog/CountryListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/rockrobo/dialog/CountrySelectDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->serverCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/rockrobo/dialog/CountrySelectDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/dialog/CountrySelectDialog;->toastUserRegionInvalidate()V

    return-void
.end method

.method static synthetic access$400(Lcom/rockrobo/dialog/CountrySelectDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/dialog/CountrySelectDialog;->disableOkButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/rockrobo/dialog/CountrySelectDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/dialog/CountrySelectDialog;->toastUserRegionValidate()V

    return-void
.end method

.method static synthetic access$600(Lcom/rockrobo/dialog/CountrySelectDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/dialog/CountrySelectDialog;->enableOkButton()V

    return-void
.end method

.method private disableOkButton()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->okButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->okButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private enableOkButton()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->okButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->okButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private getServerCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->serverCode:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x9186d71

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc81

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe43

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe54

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "sg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const-string v0, "ru"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "de"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "us_true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0a0238

    goto :goto_2

    :pswitch_0
    const p1, 0x7f0a0237

    goto :goto_2

    :pswitch_1
    const p1, 0x7f0a0239

    goto :goto_2

    :pswitch_2
    const p1, 0x7f0a0236

    :goto_2
    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initViews()V
    .locals 6

    const v0, 0x7f0600ca

    invoke-virtual {p0, v0}, Lcom/rockrobo/dialog/CountrySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rockrobo/dialog/CountrySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->regionCode:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/rockrobo/dialog/CountrySelectDialog;->getServerCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/rockrobo/dialog/CountrySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/rockrobo/dialog/CountryListAdapter;

    invoke-virtual {p0}, Lcom/rockrobo/dialog/CountrySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/rockrobo/dialog/CountryListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->listAdapter:Lcom/rockrobo/dialog/CountryListAdapter;

    iget-object v1, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->listAdapter:Lcom/rockrobo/dialog/CountryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    new-instance v1, Lcom/rockrobo/dialog/CountrySelectDialog$1;

    invoke-direct {v1, p0}, Lcom/rockrobo/dialog/CountrySelectDialog$1;-><init>(Lcom/rockrobo/dialog/CountrySelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f060087

    invoke-virtual {p0, v0}, Lcom/rockrobo/dialog/CountrySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->okButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/rockrobo/dialog/CountrySelectDialog;->disableOkButton()V

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->positiveListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->okButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->positiveListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/rockrobo/dialog/CountrySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->cancelButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->negativeListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->cancelButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->negativeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private toastUserRegionInvalidate()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a021c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/rockrobo/dialog/CountrySelectDialog;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private toastUserRegionValidate()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->activity:Landroid/app/Activity;

    const v1, 0x7f0a0056

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public getUserCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->selectedStrId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "cn"

    return-object v0

    :pswitch_1
    const-string v0, "us_true"

    return-object v0

    :pswitch_2
    const-string v0, "tw"

    return-object v0

    :pswitch_3
    const-string v0, "sg"

    return-object v0

    :pswitch_4
    const-string v0, "ru"

    return-object v0

    :pswitch_5
    const-string v0, "tr"

    return-object v0

    :pswitch_6
    const-string v0, "kr"

    return-object v0

    :pswitch_7
    const-string v0, "hk"

    return-object v0

    :pswitch_8
    const-string v0, "de"

    return-object v0

    :pswitch_9
    const-string v0, "ca"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a004e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/rockrobo/dialog/CountrySelectDialog;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onBackPressed entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f08001d

    invoke-virtual {p0, p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->setContentView(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/rockrobo/dialog/CountrySelectDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f040065

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/rockrobo/dialog/CountrySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/rockrobo/dialog/CountrySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/rockrobo/dialog/CountrySelectDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/rockrobo/dialog/CountrySelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->setLayout(II)V

    invoke-direct {p0}, Lcom/rockrobo/dialog/CountrySelectDialog;->initViews()V

    return-void
.end method

.method public setNegativeButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->cancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->cancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->negativeListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPositiveButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->okButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->okButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog;->positiveListener:Landroid/view/View$OnClickListener;

    return-void
.end method
