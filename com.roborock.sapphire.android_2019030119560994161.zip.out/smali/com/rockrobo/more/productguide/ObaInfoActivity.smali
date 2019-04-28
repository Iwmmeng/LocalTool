.class public Lcom/rockrobo/more/productguide/ObaInfoActivity;
.super Lcom/rockrobo/more/MoreBaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;
    }
.end annotation


# static fields
.field private static final LINE_LIMIT:I = 0x14

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_OBA_INFO:I = 0x1

.field private static final MSG_OBA_INFO_FAIL:I = -0x1


# instance fields
.field private bom:Landroid/widget/TextView;

.field private firmwareVer:Landroid/widget/TextView;

.field private language:Landroid/widget/TextView;

.field private location:Landroid/widget/TextView;

.field private logServer:Landroid/widget/TextView;

.field private name:Landroid/widget/TextView;

.field private obaInfoContent:Landroid/view/View;

.field private progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

.field private retrieveFailCnt:I

.field private serialNo:Landroid/widget/TextView;

.field private timezone:Landroid/widget/TextView;

.field private wifiPlan:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/productguide/ObaInfoActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/rockrobo/more/productguide/ObaInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->breakLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private breakLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildObaInfo(Lorg/json/JSONObject;)Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;
    .locals 2

    new-instance v0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;-><init>(Lcom/rockrobo/more/productguide/ObaInfoActivity;Lcom/rockrobo/more/productguide/ObaInfoActivity$1;)V

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->name:Ljava/lang/String;

    const-string v1, "bom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->bom:Ljava/lang/String;

    const-string v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->location:Ljava/lang/String;

    const-string v1, "language"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->language:Ljava/lang/String;

    const-string v1, "wifiplan"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->wifiPlan:Ljava/lang/String;

    const-string v1, "timezone"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->timezone:Ljava/lang/String;

    const-string v1, "logserver"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->logServer:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->breakLinesIfNeed()V

    return-object v0
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a014c

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f08000b

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p0}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->handleMessage(Landroid/os/Message;)V

    sget-object v0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->buildObaInfo(Lorg/json/JSONObject;)Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->serialNo:Landroid/widget/TextView;

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->firmwareVer:Landroid/widget/TextView;

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->breakLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->location:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->language:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->wifiPlan:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->wifiPlan:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->logServer:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->logServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->timezone:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->timezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->bom:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->bom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->name:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->obaInfoContent:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iget p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->retrieveFailCnt:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->sendGetObaInfoCmd()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a013d

    invoke-static {p1, v0, v2}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->finish()V

    :goto_0
    iget p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->retrieveFailCnt:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->retrieveFailCnt:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f06007e

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->obaInfoContent:Landroid/view/View;

    const p1, 0x7f060083

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->serialNo:Landroid/widget/TextView;

    const p1, 0x7f060081

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->location:Landroid/widget/TextView;

    const p1, 0x7f060080

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->language:Landroid/widget/TextView;

    const p1, 0x7f060085

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->wifiPlan:Landroid/widget/TextView;

    const p1, 0x7f060082

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->logServer:Landroid/widget/TextView;

    const p1, 0x7f060084

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->timezone:Landroid/widget/TextView;

    const p1, 0x7f06007d

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->bom:Landroid/widget/TextView;

    const p1, 0x7f060086

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->name:Landroid/widget/TextView;

    const p1, 0x7f06007f

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->firmwareVer:Landroid/widget/TextView;

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onResume()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->retrieveFailCnt:I

    invoke-virtual {p0}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->showNotCancellableProgressDialog(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->progressDialog:Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p0}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->sendGetObaInfoCmd()V

    return-void
.end method

.method public sendGetObaInfoCmd()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadLocaleInfo(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
