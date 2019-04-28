.class public Lcom/rockrobo/common/RobotInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/common/RobotInfo$Data;
    }
.end annotation


# static fields
.field public static final COUNTRY_CN:Ljava/lang/String; = "cn"

.field private static final COUNTRY_IN_CN:Ljava/lang/String; = "\u4e2d\u56fd"

.field private static final COUNTRY_IN_DE:Ljava/lang/String; = "DE"

.field private static final FIRMWARE_FEATURE_CLEAN_HISTORY_DELETE:I = 0x66

.field public static final LANGUAGE_EN:Ljava/lang/String; = "en"

.field public static final LANGUAGE_PRC:Ljava/lang/String; = "prc"

.field public static final LANGUAGE_TW:Ljava/lang/String; = "tw"

.field public static final LOCATION_DE:Ljava/lang/String; = "de"

.field public static final LOCATION_PRC:Ljava/lang/String; = "prc"

.field public static final LOCATION_SG:Ljava/lang/String; = "sg"

.field public static final LOCATION_TW:Ljava/lang/String; = "tw"

.field public static final LOCATION_US:Ljava/lang/String; = "us"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static data:Lcom/rockrobo/common/RobotInfo$Data; = null

.field public static firmwareUpdated:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/common/RobotInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/common/RobotInfo;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCarpetMode()Lcom/rockrobo/common/CarpetMode;
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo$Data;->access$400(Lcom/rockrobo/common/RobotInfo$Data;)Lcom/rockrobo/common/CarpetMode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getCountryIn()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo$Data;->access$800(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getData()Lcom/rockrobo/common/RobotInfo$Data;
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getFirmwareFeatures()[I
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo$Data;->access$1000(Lcom/rockrobo/common/RobotInfo$Data;)[I

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getFirmwareVersion()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo$Data;->access$500(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getMessageVersion()I
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo$Data;->access$200(Lcom/rockrobo/common/RobotInfo$Data;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getRobotLanguage()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo$Data;->access$700(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getRobotLocation()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo$Data;->access$600(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSerialNo()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo$Data;->access$100(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTimeZoneId()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo$Data;->access$300(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTimeZonePosix()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo$Data;->access$000(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUserCountry()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo$Data;->access$900(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized hasCleanRecordDeleteFeature()Z
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    const/16 v1, 0x66

    :try_start_0
    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo;->hasFirmwareFeature(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized hasFirmwareFeature(I)Z
    .locals 6

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1}, Lcom/rockrobo/common/RobotInfo$Data;->access$1000(Lcom/rockrobo/common/RobotInfo$Data;)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, p0, :cond_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init()V
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/rockrobo/common/RobotInfo$Data;

    invoke-direct {v1}, Lcom/rockrobo/common/RobotInfo$Data;-><init>()V

    sput-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized ipFromCN()Z
    .locals 3

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    const-string v1, "\u4e2d\u56fd"

    invoke-static {}, Lcom/rockrobo/common/RobotInfo;->getCountryIn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setCarpetMode(Lcom/rockrobo/common/CarpetMode;)V
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1, p0}, Lcom/rockrobo/common/RobotInfo$Data;->access$402(Lcom/rockrobo/common/RobotInfo$Data;Lcom/rockrobo/common/CarpetMode;)Lcom/rockrobo/common/CarpetMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCountryIn(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1, p0}, Lcom/rockrobo/common/RobotInfo$Data;->access$802(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setData(Lcom/rockrobo/common/RobotInfo$Data;)V
    .locals 1

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setEmptyFirmwareFeatures()V
    .locals 3

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v1, v2}, Lcom/rockrobo/common/RobotInfo$Data;->access$1002(Lcom/rockrobo/common/RobotInfo$Data;[I)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setFirmwareFeatures([I)V
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1, p0}, Lcom/rockrobo/common/RobotInfo$Data;->access$1002(Lcom/rockrobo/common/RobotInfo$Data;[I)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setFirmwareVersion(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1, p0}, Lcom/rockrobo/common/RobotInfo$Data;->access$502(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setMessageVersion(I)V
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1, p0}, Lcom/rockrobo/common/RobotInfo$Data;->access$202(Lcom/rockrobo/common/RobotInfo$Data;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setRobotLanguage(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1, p0}, Lcom/rockrobo/common/RobotInfo$Data;->access$702(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setRobotLocation(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1, p0}, Lcom/rockrobo/common/RobotInfo$Data;->access$602(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setSerialNo(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1, p0}, Lcom/rockrobo/common/RobotInfo$Data;->access$102(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setTimeZoneId(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1, p0}, Lcom/rockrobo/common/RobotInfo$Data;->access$302(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setTimeZonePosix(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1, p0}, Lcom/rockrobo/common/RobotInfo$Data;->access$002(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setUserCountry(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/rockrobo/common/RobotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-static {v1, p0}, Lcom/rockrobo/common/RobotInfo$Data;->access$902(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static stringValue()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockrobo/common/RobotInfo;->data:Lcom/rockrobo/common/RobotInfo$Data;

    invoke-virtual {v0}, Lcom/rockrobo/common/RobotInfo$Data;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
