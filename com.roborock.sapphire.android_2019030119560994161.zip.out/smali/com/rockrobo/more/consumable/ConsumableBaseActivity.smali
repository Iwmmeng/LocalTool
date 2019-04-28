.class public abstract Lcom/rockrobo/more/consumable/ConsumableBaseActivity;
.super Lcom/rockrobo/more/MoreBaseActivity;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MSG_DATA:I = 0x3

.field public static final MSG_DATA_FAIL:I = 0x4

.field public static final MSG_RESET_FAIL:I = 0x2

.field public static final MSG_RESET_OK:I = 0x1


# instance fields
.field protected consumableData:Lcom/rockrobo/more/consumable/ConsumableItem;

.field protected dialog:Lcom/rockrobo/more/consumable/ConsumableResetDialog;

.field private percentView:Lcom/rockrobo/ui/RRConsumableNumber;

.field private reset:Z

.field private usedHoursView:Lcom/rockrobo/ui/RRConsumableNumber;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->reset:Z

    return-void
.end method

.method private readConsumableItems()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roborock.consumble_items_file_prefix_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v4}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    invoke-static {v0}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->setConsumableItems(Ljava/util/ArrayList;)V

    sget-object v2, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read consumable items:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catchall_1
    move-exception v1

    goto/16 :goto_4

    :catch_4
    move-exception v1

    :goto_0
    :try_start_3
    sget-object v2, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassNotFoundException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catch_6
    move-exception v1

    :goto_1
    :try_start_5
    sget-object v2, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catch_8
    move-exception v1

    :goto_2
    :try_start_7
    sget-object v2, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :goto_4
    if-eqz v0, :cond_1

    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_5

    :catch_a
    move-exception v0

    sget-object v2, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_5
    throw v1
.end method

.method private setupNumbers()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->percentView:Lcom/rockrobo/ui/RRConsumableNumber;

    iget-object v1, p0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->consumableData:Lcom/rockrobo/more/consumable/ConsumableItem;

    invoke-virtual {v1}, Lcom/rockrobo/more/consumable/ConsumableItem;->getRemainPercent()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/rockrobo/ui/RRConsumableNumber;->setTypeAndNumber(II)V

    iget-object v0, p0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->usedHoursView:Lcom/rockrobo/ui/RRConsumableNumber;

    iget-object v1, p0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->consumableData:Lcom/rockrobo/more/consumable/ConsumableItem;

    invoke-virtual {v1}, Lcom/rockrobo/more/consumable/ConsumableItem;->getRelUsedHours()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/rockrobo/ui/RRConsumableNumber;->setTypeAndNumber(II)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a013d

    const/4 v1, 0x0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    sput-boolean v3, Lcom/rockrobo/more/consumable/ConsumableItemSet;->dataRetrieved:Z

    invoke-static {p1}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->buildConsumableDatas(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->setupNumbers()V

    return-void

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0, v3}, Lcom/rockrobo/utils/ToastUtils;->showMessage(Landroid/content/Context;II)V

    return-void

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/dialog/XQProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->consumableData:Lcom/rockrobo/more/consumable/ConsumableItem;

    invoke-virtual {p1, v1}, Lcom/rockrobo/more/consumable/ConsumableItem;->setUsedTotalSeconds(I)V

    invoke-direct {p0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->setupNumbers()V

    iput-boolean v3, p0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->reset:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v2, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException, msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->setResetResult()V

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_consumable_items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->setConsumableItems(Ljava/util/ArrayList;)V

    const-string v0, "key_detail_retrieved"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->setDetailRetrieved(Z)V

    :cond_0
    invoke-static {}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->getAllConsumableDatas()[Lcom/rockrobo/more/consumable/ConsumableItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->getAllConsumableDatas()[Lcom/rockrobo/more/consumable/ConsumableItem;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->readConsumableItems()V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->setDetailRetrieved(Z)V

    :cond_2
    const p1, 0x7f0600e1

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity$1;-><init>(Lcom/rockrobo/more/consumable/ConsumableBaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "consumableType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->getConsumableData(I)Lcom/rockrobo/more/consumable/ConsumableItem;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->consumableData:Lcom/rockrobo/more/consumable/ConsumableItem;

    const p1, 0x7f06002b

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rockrobo/ui/RRConsumableNumber;

    iput-object p1, p0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->percentView:Lcom/rockrobo/ui/RRConsumableNumber;

    const p1, 0x7f06002f

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rockrobo/ui/RRConsumableNumber;

    iput-object p1, p0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->usedHoursView:Lcom/rockrobo/ui/RRConsumableNumber;

    invoke-direct {p0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->setupNumbers()V

    sget-boolean p1, Lcom/rockrobo/more/consumable/ConsumableItemSet;->dataRetrieved:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/rockrobo/presenter/RobotPresenterI;->loadConsumableData(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_consumable_items"

    invoke-static {}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->getConsumableItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "key_detail_retrieved"

    sget-boolean v1, Lcom/rockrobo/more/consumable/ConsumableItemSet;->dataRetrieved:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setResetResult()V
    .locals 2

    iget-boolean v0, p0, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->reset:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/rockrobo/more/consumable/ConsumableBaseActivity;->setResult0(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
