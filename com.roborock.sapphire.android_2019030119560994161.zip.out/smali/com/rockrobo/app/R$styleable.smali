.class public final Lcom/rockrobo/app/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/app/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AutoTextView:[I

.field public static final AutoTextView_autoTextColor:I = 0x0

.field public static final AutoTextView_autoTextSize:I = 0x1

.field public static final NumberElement:[I

.field public static final NumberElement_number:I = 0x0

.field public static final NumberElement_type:I = 0x1

.field public static final RRStickRC:[I

.field public static final RRStickRC_OuterRadius:I = 0x0

.field public static final RRWaveView:[I

.field public static final RRWaveView_color:I = 0x0

.field public static final RRWaveView_end_radius:I = 0x1

.field public static final RRWaveView_refresh_time:I = 0x2

.field public static final RRWaveView_start_radius:I = 0x3

.field public static final RRWaveView_stroke_width:I = 0x4

.field public static final SettingsItem:[I

.field public static final SettingsItem_item_info:I = 0x0

.field public static final SettingsItem_item_line_margin:I = 0x1

.field public static final SettingsItem_item_select:I = 0x2

.field public static final SettingsItem_item_subtitle:I = 0x3

.field public static final SettingsItem_item_title:I = 0x4

.field public static final SettingsItem_item_type:I = 0x5

.field public static final rr_heart_beat:[I

.field public static final rr_heart_beat_hb_image:I = 0x0

.field public static final rr_heart_beat_hb_image_text_gap:I = 0x1

.field public static final rr_heart_beat_hb_pause_image:I = 0x2

.field public static final rr_heart_beat_hb_pause_text:I = 0x3

.field public static final rr_heart_beat_hb_sleeping_image:I = 0x4

.field public static final rr_heart_beat_hb_sleeping_text_color:I = 0x5

.field public static final rr_heart_beat_hb_text:I = 0x6

.field public static final rr_heart_beat_hb_text_color:I = 0x7

.field public static final rr_heart_beat_hb_text_size:I = 0x8

.field public static final text_image_view:[I

.field public static final text_image_view_ti_image_height:I = 0x0

.field public static final text_image_view_ti_image_src:I = 0x1

.field public static final text_image_view_ti_image_width:I = 0x2

.field public static final text_image_view_ti_text_color:I = 0x3

.field public static final text_image_view_ti_text_size:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/rockrobo/app/R$styleable;->AutoTextView:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/rockrobo/app/R$styleable;->NumberElement:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f020000

    aput v2, v0, v1

    sput-object v0, Lcom/rockrobo/app/R$styleable;->RRStickRC:[I

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/rockrobo/app/R$styleable;->RRWaveView:[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/rockrobo/app/R$styleable;->SettingsItem:[I

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/rockrobo/app/R$styleable;->rr_heart_beat:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/rockrobo/app/R$styleable;->text_image_view:[I

    return-void

    :array_0
    .array-data 4
        0x7f020001
        0x7f020002
    .end array-data

    :array_1
    .array-data 4
        0x7f020014
        0x7f02001d
    .end array-data

    :array_2
    .array-data 4
        0x7f020003
        0x7f020004
        0x7f020015
        0x7f020016
        0x7f020017
    .end array-data

    :array_3
    .array-data 4
        0x7f02000e
        0x7f02000f
        0x7f020010
        0x7f020011
        0x7f020012
        0x7f020013
    .end array-data

    :array_4
    .array-data 4
        0x7f020005
        0x7f020006
        0x7f020007
        0x7f020008
        0x7f020009
        0x7f02000a
        0x7f02000b
        0x7f02000c
        0x7f02000d
    .end array-data

    :array_5
    .array-data 4
        0x7f020018
        0x7f020019
        0x7f02001a
        0x7f02001b
        0x7f02001c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
