.class public Lcom/rockrobo/utils/ResultTag;
.super Ljava/lang/Object;


# instance fields
.field private final result:Ljava/lang/Object;

.field private final tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/utils/ResultTag;->result:Ljava/lang/Object;

    iput-object p2, p0, Lcom/rockrobo/utils/ResultTag;->tag:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/utils/ResultTag;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/utils/ResultTag;->tag:Ljava/lang/Object;

    return-object v0
.end method
