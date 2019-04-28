.class Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/productguide/ObaInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObaInfo"
.end annotation


# instance fields
.field public bom:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public logServer:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/rockrobo/more/productguide/ObaInfoActivity;

.field public timezone:Ljava/lang/String;

.field public wifiPlan:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/rockrobo/more/productguide/ObaInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->this$0:Lcom/rockrobo/more/productguide/ObaInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/more/productguide/ObaInfoActivity;Lcom/rockrobo/more/productguide/ObaInfoActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;-><init>(Lcom/rockrobo/more/productguide/ObaInfoActivity;)V

    return-void
.end method


# virtual methods
.method public breakLinesIfNeed()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->this$0:Lcom/rockrobo/more/productguide/ObaInfoActivity;

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->access$100(Lcom/rockrobo/more/productguide/ObaInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->this$0:Lcom/rockrobo/more/productguide/ObaInfoActivity;

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->bom:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->access$100(Lcom/rockrobo/more/productguide/ObaInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->bom:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->this$0:Lcom/rockrobo/more/productguide/ObaInfoActivity;

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->location:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->access$100(Lcom/rockrobo/more/productguide/ObaInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->location:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->this$0:Lcom/rockrobo/more/productguide/ObaInfoActivity;

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->language:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->access$100(Lcom/rockrobo/more/productguide/ObaInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->language:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->this$0:Lcom/rockrobo/more/productguide/ObaInfoActivity;

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->wifiPlan:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->access$100(Lcom/rockrobo/more/productguide/ObaInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->wifiPlan:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->this$0:Lcom/rockrobo/more/productguide/ObaInfoActivity;

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->timezone:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->access$100(Lcom/rockrobo/more/productguide/ObaInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->timezone:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->this$0:Lcom/rockrobo/more/productguide/ObaInfoActivity;

    iget-object v1, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->logServer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rockrobo/more/productguide/ObaInfoActivity;->access$100(Lcom/rockrobo/more/productguide/ObaInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/more/productguide/ObaInfoActivity$ObaInfo;->logServer:Ljava/lang/String;

    return-void
.end method
