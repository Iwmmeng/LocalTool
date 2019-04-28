.class public Lcom/rockrobo/utils/RRDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final RR_DB_NAME:Ljava/lang/String; = "roborock_sapphire.db"

.field public static final RR_DB_VERSION:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/utils/RRDBHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/utils/RRDBHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 2

    const-string v0, "roborock_sapphire.db"

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private doUpdateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/rockrobo/utils/DBUtils;->tableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/rockrobo/utils/DBUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p2}, Lcom/rockrobo/utils/DBUtils;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    sget-object v0, Lcom/rockrobo/utils/RRDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/rockrobo/more/consumable/ConsumableDBManager;

    invoke-direct {v0, p1}, Lcom/rockrobo/more/consumable/ConsumableDBManager;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Lcom/rockrobo/more/consumable/ConsumableDBManager;->createConsumableTable()V

    invoke-static {p1}, Lcom/rockrobo/utils/DBUtils;->createCleanHistoryDetailTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/rockrobo/utils/DBUtils;->createCleanHistorySummaryTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    sget-object v0, Lcom/rockrobo/utils/RRDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downgrade db from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/rockrobo/utils/RRDBHelper;->updateTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    sget-object v0, Lcom/rockrobo/utils/RRDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade entered\uff0cold version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",new version:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/rockrobo/utils/RRDBHelper;->updateTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method protected updateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "consumable"

    invoke-direct {p0, p1, v0}, Lcom/rockrobo/utils/RRDBHelper;->doUpdateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "clean_history_summary"

    invoke-direct {p0, p1, v0}, Lcom/rockrobo/utils/RRDBHelper;->doUpdateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "clean_history_detail"

    invoke-direct {p0, p1, v0}, Lcom/rockrobo/utils/RRDBHelper;->doUpdateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method
