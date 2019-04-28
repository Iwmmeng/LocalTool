.class public Lcom/rockrobo/common/RobotInfo$Data;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/common/RobotInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/rockrobo/common/RobotInfo$Data;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_VERSION_DEFAULT:I = -0x1

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private carpetMode:Lcom/rockrobo/common/CarpetMode;

.field private countryIn:Ljava/lang/String;

.field private firmwareFeatures:[I

.field private firmwareVersion:Ljava/lang/String;

.field private messageVersion:I

.field private robotLanguage:Ljava/lang/String;

.field private robotLocation:Ljava/lang/String;

.field private serialNo:Ljava/lang/String;

.field private timeZoneId:Ljava/lang/String;

.field private timeZonePosix:Ljava/lang/String;

.field private userCountry:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rockrobo/common/RobotInfo$Data$1;

    invoke-direct {v0}, Lcom/rockrobo/common/RobotInfo$Data$1;-><init>()V

    sput-object v0, Lcom/rockrobo/common/RobotInfo$Data;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->messageVersion:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->serialNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->timeZoneId:Ljava/lang/String;

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->timeZonePosix:Ljava/lang/String;

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareVersion:Ljava/lang/String;

    sget-object v1, Lcom/rockrobo/common/CarpetMode;->UNKNOWN:Lcom/rockrobo/common/CarpetMode;

    iput-object v1, p0, Lcom/rockrobo/common/RobotInfo$Data;->carpetMode:Lcom/rockrobo/common/CarpetMode;

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->robotLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->robotLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->countryIn:Ljava/lang/String;

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareFeatures:[I

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->userCountry:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->messageVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->serialNo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->timeZoneId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->timeZonePosix:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/rockrobo/common/CarpetMode;->fromValue(I)Lcom/rockrobo/common/CarpetMode;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->carpetMode:Lcom/rockrobo/common/CarpetMode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->robotLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->robotLanguage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->countryIn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareFeatures:[I

    iget-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareFeatures:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareFeatures:[I

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/common/RobotInfo$Data;->userCountry:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/common/RobotInfo$Data;->timeZonePosix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/common/RobotInfo$Data;->timeZonePosix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/common/RobotInfo$Data;->serialNo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/rockrobo/common/RobotInfo$Data;)[I
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareFeatures:[I

    return-object p0
.end method

.method static synthetic access$1002(Lcom/rockrobo/common/RobotInfo$Data;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareFeatures:[I

    return-object p1
.end method

.method static synthetic access$102(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/common/RobotInfo$Data;->serialNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/rockrobo/common/RobotInfo$Data;)I
    .locals 0

    iget p0, p0, Lcom/rockrobo/common/RobotInfo$Data;->messageVersion:I

    return p0
.end method

.method static synthetic access$202(Lcom/rockrobo/common/RobotInfo$Data;I)I
    .locals 0

    iput p1, p0, Lcom/rockrobo/common/RobotInfo$Data;->messageVersion:I

    return p1
.end method

.method static synthetic access$300(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/common/RobotInfo$Data;->timeZoneId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/common/RobotInfo$Data;->timeZoneId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/rockrobo/common/RobotInfo$Data;)Lcom/rockrobo/common/CarpetMode;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/common/RobotInfo$Data;->carpetMode:Lcom/rockrobo/common/CarpetMode;

    return-object p0
.end method

.method static synthetic access$402(Lcom/rockrobo/common/RobotInfo$Data;Lcom/rockrobo/common/CarpetMode;)Lcom/rockrobo/common/CarpetMode;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/common/RobotInfo$Data;->carpetMode:Lcom/rockrobo/common/CarpetMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/common/RobotInfo$Data;->robotLocation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/common/RobotInfo$Data;->robotLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/common/RobotInfo$Data;->robotLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/common/RobotInfo$Data;->robotLanguage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/common/RobotInfo$Data;->countryIn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/common/RobotInfo$Data;->countryIn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/rockrobo/common/RobotInfo$Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rockrobo/common/RobotInfo$Data;->userCountry:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/rockrobo/common/RobotInfo$Data;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/common/RobotInfo$Data;->userCountry:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data{messageVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rockrobo/common/RobotInfo$Data;->messageVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serialNo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rockrobo/common/RobotInfo$Data;->serialNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", timeZoneId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/common/RobotInfo$Data;->timeZoneId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", timeZonePosix=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/common/RobotInfo$Data;->timeZonePosix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firmwareVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", carpetMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/common/RobotInfo$Data;->carpetMode:Lcom/rockrobo/common/CarpetMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", robotLocation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/common/RobotInfo$Data;->robotLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", robotLanguage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/common/RobotInfo$Data;->robotLanguage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", countryIn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/common/RobotInfo$Data;->countryIn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firmwareFeatures=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareFeatures:[I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userCountry=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/common/RobotInfo$Data;->userCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/rockrobo/common/RobotInfo$Data;->messageVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/rockrobo/common/RobotInfo$Data;->serialNo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rockrobo/common/RobotInfo$Data;->timeZoneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rockrobo/common/RobotInfo$Data;->timeZonePosix:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rockrobo/common/RobotInfo$Data;->carpetMode:Lcom/rockrobo/common/CarpetMode;

    invoke-virtual {p2}, Lcom/rockrobo/common/CarpetMode;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/rockrobo/common/RobotInfo$Data;->robotLocation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rockrobo/common/RobotInfo$Data;->robotLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rockrobo/common/RobotInfo$Data;->countryIn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareFeatures:[I

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/rockrobo/common/RobotInfo$Data;->firmwareFeatures:[I

    array-length p2, p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 p2, -0x1

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lcom/rockrobo/common/RobotInfo$Data;->userCountry:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
