.class public Lcom/rockrobo/more/ConsumableActivity;
.super Lcom/rockrobo/more/MoreBaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/more/ConsumableActivity$ViewHolder;
    }
.end annotation


# static fields
.field public static final DEVICE_RESET:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_DATA:I = 0x1

.field private static final MSG_DATA_FAIL:I = 0x2

.field public static final ROBOROCK_CONSUMABLE_FILE_PREFIX:Ljava/lang/String; = "roborock.consumble_items_file_prefix_"


# instance fields
.field private activityStarting:Z

.field private adapter:Landroid/widget/BaseAdapter;

.field private dbManager:Lcom/rockrobo/more/consumable/ConsumableDBManager;

.field private listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

.field private titleIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/ConsumableActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/rockrobo/more/MoreBaseActivity;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/rockrobo/more/ConsumableActivity;->titleIds:[I

    return-void

    :array_0
    .array-data 4
        0x7f0a00c8
        0x7f0a01eb
        0x7f0a0109
        0x7f0a01cb
    .end array-data
.end method

.method static synthetic access$000(Lcom/rockrobo/more/ConsumableActivity;)[I
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/more/ConsumableActivity;->titleIds:[I

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/rockrobo/more/ConsumableActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/ConsumableActivity;->calcColorType(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/rockrobo/more/ConsumableActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rockrobo/more/ConsumableActivity;->activityStarting:Z

    return p0
.end method

.method static synthetic access$302(Lcom/rockrobo/more/ConsumableActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockrobo/more/ConsumableActivity;->activityStarting:Z

    return p1
.end method

.method private calcColorType(I)I
    .locals 1

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    const p1, 0x7f030060

    :goto_0
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p1, 0x7f03005d

    goto :goto_0

    return p1
.end method

.method private saveConsumableItems()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/rockrobo/more/ConsumableActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roborock.consumble_items_file_prefix_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/rockrobo/more/ConsumableActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v4}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->getConsumableItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    sget-object v0, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Consumable items saved!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_3

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

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_0
    :try_start_3
    sget-object v2, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_5
    move-exception v1

    :goto_1
    :try_start_5
    sget-object v2, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    return-void

    :catch_6
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :goto_3
    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_4

    :catch_7
    move-exception v0

    sget-object v2, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    throw v1
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    const v0, 0x7f0a0040

    return v0
.end method

.method public getContentView()I
    .locals 1

    const v0, 0x7f080003

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-object v0, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->postRefresh()V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object p1, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Consumable data retrieve failed!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rockrobo/more/ConsumableActivity;->activity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/rockrobo/utils/RRUtils;->toastNetFail(Landroid/app/Activity;I)V

    return-void

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->dataRetrieved:Z

    invoke-static {p1}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->buildConsumableDatas(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected loadFromRobot()V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity;->robotPresenter:Lcom/rockrobo/presenter/RobotPresenterI;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadConsumableData(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/rockrobo/more/MoreBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object p3, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",result code:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/rockrobo/more/MoreBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->setUpConsumableDatas()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget-object v0, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/rockrobo/utils/RRDBHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rockrobo/utils/RRDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    new-instance v1, Lcom/rockrobo/more/consumable/ConsumableDBManager;

    invoke-virtual {v0}, Lcom/rockrobo/utils/RRDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/rockrobo/more/consumable/ConsumableDBManager;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/rockrobo/more/ConsumableActivity;->dbManager:Lcom/rockrobo/more/consumable/ConsumableDBManager;

    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity;->dbManager:Lcom/rockrobo/more/consumable/ConsumableDBManager;

    iget-object v1, p0, Lcom/rockrobo/more/ConsumableActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/consumable/ConsumableDBManager;->loadConsumableData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/consumable/ConsumableItem;

    iget v2, v1, Lcom/rockrobo/more/consumable/ConsumableItem;->type:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    iget v2, v1, Lcom/rockrobo/more/consumable/ConsumableItem;->type:I

    if-ltz v2, :cond_0

    iget v2, v1, Lcom/rockrobo/more/consumable/ConsumableItem;->type:I

    invoke-static {v2}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->getConsumableData(I)Lcom/rockrobo/more/consumable/ConsumableItem;

    move-result-object v2

    iget v1, v1, Lcom/rockrobo/more/consumable/ConsumableItem;->usedTotalSeconds:I

    invoke-virtual {v2, v1}, Lcom/rockrobo/more/consumable/ConsumableItem;->setUsedTotalSeconds(I)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/ConsumableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    iput-object v0, p0, Lcom/rockrobo/more/ConsumableActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setDividerHeight(I)V

    new-instance v0, Lcom/rockrobo/more/ConsumableActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/rockrobo/more/ConsumableActivity$1;-><init>(Lcom/rockrobo/more/ConsumableActivity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/rockrobo/more/ConsumableActivity;->adapter:Landroid/widget/BaseAdapter;

    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    new-instance v0, Lcom/rockrobo/more/ConsumableActivity$2;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/ConsumableActivity$2;-><init>(Lcom/rockrobo/more/ConsumableActivity;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    new-instance v0, Lcom/rockrobo/more/ConsumableActivity$3;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/ConsumableActivity$3;-><init>(Lcom/rockrobo/more/ConsumableActivity;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->setRefreshListener(Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView$OnRefreshListener;)V

    const p1, 0x7f060089

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/ConsumableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/rockrobo/more/ConsumableActivity$4;

    invoke-direct {v0, p0}, Lcom/rockrobo/more/ConsumableActivity$4;-><init>(Lcom/rockrobo/more/ConsumableActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f060017

    invoke-virtual {p0, p1}, Lcom/rockrobo/more/ConsumableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/rockrobo/utils/RRUtils;->isCNServer()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/rockrobo/more/ConsumableActivity;->listView:Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/common/ui/widget/CustomPullDownRefreshListView;->doRefresh()V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity;->dbManager:Lcom/rockrobo/more/consumable/ConsumableDBManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity;->dbManager:Lcom/rockrobo/more/consumable/ConsumableDBManager;

    invoke-virtual {v0}, Lcom/rockrobo/more/consumable/ConsumableDBManager;->close()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onPause()V

    invoke-direct {p0}, Lcom/rockrobo/more/ConsumableActivity;->saveConsumableItems()V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/rockrobo/more/ConsumableActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/more/ConsumableActivity;->activityStarting:Z

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/rockrobo/more/MoreBaseActivity;->onStop()V

    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity;->dbManager:Lcom/rockrobo/more/consumable/ConsumableDBManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockrobo/more/ConsumableActivity;->dbManager:Lcom/rockrobo/more/consumable/ConsumableDBManager;

    invoke-static {}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->getAllConsumableDatas()[Lcom/rockrobo/more/consumable/ConsumableItem;

    move-result-object v1

    iget-object v2, p0, Lcom/rockrobo/more/ConsumableActivity;->mDevice:Lcom/rockrobo/xmplugin/Device;

    invoke-virtual {v2}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/rockrobo/more/consumable/ConsumableDBManager;->saveConsumable([Lcom/rockrobo/more/consumable/ConsumableItem;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
