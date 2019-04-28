.class public Lcom/rockrobo/dialog/CountryListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final countryIds:[I


# instance fields
.field private final deSelectedColor:I

.field private final inflater:Landroid/view/LayoutInflater;

.field private selectStrId:Ljava/lang/Integer;

.field private final selectedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rockrobo/dialog/CountryListAdapter;->countryIds:[I

    return-void

    :array_0
    .array-data 4
        0x7f0a004f
        0x7f0a0057
        0x7f0a0058
        0x7f0a0050
        0x7f0a0051
        0x7f0a0059
        0x7f0a004e
        0x7f0a0053
        0x7f0a0052
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockrobo/dialog/CountryListAdapter;->selectStrId:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/dialog/CountryListAdapter;->deSelectedColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/rockrobo/dialog/CountryListAdapter;->selectedColor:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/dialog/CountryListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    sget-object v0, Lcom/rockrobo/dialog/CountryListAdapter;->countryIds:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    sget-object v0, Lcom/rockrobo/dialog/CountryListAdapter;->countryIds:[I

    aget p1, v0, p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/rockrobo/dialog/CountryListAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f080023

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;-><init>(Lcom/rockrobo/dialog/CountryListAdapter;Lcom/rockrobo/dialog/CountryListAdapter$1;)V

    const v0, 0x7f0600dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0600b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;->sepLine:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;

    :goto_0
    sget-object v0, Lcom/rockrobo/dialog/CountryListAdapter;->countryIds:[I

    aget v0, v0, p1

    iget-object v1, p3, Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/rockrobo/dialog/CountryListAdapter;->selectStrId:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rockrobo/dialog/CountryListAdapter;->selectStrId:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget v1, p0, Lcom/rockrobo/dialog/CountryListAdapter;->selectedColor:I

    goto :goto_1

    :cond_1
    iget-object v0, p3, Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget v1, p0, Lcom/rockrobo/dialog/CountryListAdapter;->deSelectedColor:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Lcom/rockrobo/dialog/CountryListAdapter;->countryIds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p3, Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;->sepLine:Landroid/view/View;

    const/4 p3, 0x4

    :goto_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    :cond_2
    iget-object p1, p3, Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;->sepLine:Landroid/view/View;

    const/4 p3, 0x0

    goto :goto_2

    return-object p2
.end method

.method public setSelectStrId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/dialog/CountryListAdapter;->selectStrId:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/rockrobo/dialog/CountryListAdapter;->notifyDataSetChanged()V

    return-void
.end method
