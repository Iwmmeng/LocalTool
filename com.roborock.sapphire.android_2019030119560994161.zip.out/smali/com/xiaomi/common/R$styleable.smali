.class public final Lcom/xiaomi/common/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AutoTextView:[I

.field public static final AutoTextView_autoTextColor:I = 0x0

.field public static final AutoTextView_autoTextSize:I = 0x1

.field public static final SettingsItem:[I

.field public static final SettingsItem_item_info:I = 0x0

.field public static final SettingsItem_item_line_margin:I = 0x1

.field public static final SettingsItem_item_select:I = 0x2

.field public static final SettingsItem_item_subtitle:I = 0x3

.field public static final SettingsItem_item_title:I = 0x4

.field public static final SettingsItem_item_type:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/common/R$styleable;->AutoTextView:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/common/R$styleable;->SettingsItem:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020001
        0x7f020002
    .end array-data

    :array_1
    .array-data 4
        0x7f02000e
        0x7f02000f
        0x7f020010
        0x7f020011
        0x7f020012
        0x7f020013
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
