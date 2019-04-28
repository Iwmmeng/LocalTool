.class Lcom/rockrobo/more/voicepackage/VoicePackageInfo$PriorityComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/voicepackage/VoicePackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PriorityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/rockrobo/more/voicepackage/VoiceItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;


# direct methods
.method private constructor <init>(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageInfo$PriorityComparator;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;Lcom/rockrobo/more/voicepackage/VoicePackageInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo$PriorityComparator;-><init>(Lcom/rockrobo/more/voicepackage/VoicePackageInfo;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/rockrobo/more/voicepackage/VoiceItem;Lcom/rockrobo/more/voicepackage/VoiceItem;)I
    .locals 2

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getPriority()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getPriority()I

    move-result p1

    invoke-virtual {p2}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getPriority()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/rockrobo/more/voicepackage/VoiceItem;

    check-cast p2, Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {p0, p1, p2}, Lcom/rockrobo/more/voicepackage/VoicePackageInfo$PriorityComparator;->compare(Lcom/rockrobo/more/voicepackage/VoiceItem;Lcom/rockrobo/more/voicepackage/VoiceItem;)I

    move-result p1

    return p1
.end method
