.class Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/dialog/CountryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public sepLine:Landroid/view/View;

.field final synthetic this$0:Lcom/rockrobo/dialog/CountryListAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/rockrobo/dialog/CountryListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;->this$0:Lcom/rockrobo/dialog/CountryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/dialog/CountryListAdapter;Lcom/rockrobo/dialog/CountryListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/dialog/CountryListAdapter$ViewHolder;-><init>(Lcom/rockrobo/dialog/CountryListAdapter;)V

    return-void
.end method
