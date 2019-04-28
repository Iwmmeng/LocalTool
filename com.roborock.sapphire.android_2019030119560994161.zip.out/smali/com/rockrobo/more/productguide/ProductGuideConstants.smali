.class public Lcom/rockrobo/more/productguide/ProductGuideConstants;
.super Ljava/lang/Object;


# static fields
.field public static final DETAIL_PAGE_POS_KEY:Ljava/lang/String; = "detail_page_pos"

.field public static final SharedTitleIds:[I

.field public static final TitleIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/rockrobo/more/productguide/ProductGuideConstants;->TitleIds:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/rockrobo/more/productguide/ProductGuideConstants;->SharedTitleIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a01d0
        0x7f0a01a0
        0x7f0a01a7
        0x7f0a00d9
        0x7f0a0070
        0x7f0a0225
        0x7f0a0115
        0x7f0a0212
        0x7f0a0073
        0x7f0a00c7
        0x7f0a0073
        0x7f0a0063
    .end array-data

    :array_1
    .array-data 4
        0x7f0a01d0
        0x7f0a01a0
        0x7f0a01a7
        0x7f0a00d9
        0x7f0a0070
        0x7f0a0225
        0x7f0a0115
        0x7f0a0212
        0x7f0a0073
        0x7f0a00c7
        0x7f0a0073
        0x7f0a0063
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
