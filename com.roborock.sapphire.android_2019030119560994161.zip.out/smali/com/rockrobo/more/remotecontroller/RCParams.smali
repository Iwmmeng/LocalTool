.class public Lcom/rockrobo/more/remotecontroller/RCParams;
.super Ljava/lang/Object;


# instance fields
.field private final omega:D

.field private final velocity:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/rockrobo/more/remotecontroller/RCParams;->omega:D

    iput-wide p3, p0, Lcom/rockrobo/more/remotecontroller/RCParams;->velocity:D

    return-void
.end method


# virtual methods
.method public getOmega()D
    .locals 2

    iget-wide v0, p0, Lcom/rockrobo/more/remotecontroller/RCParams;->omega:D

    return-wide v0
.end method

.method public getVelocity()D
    .locals 2

    iget-wide v0, p0, Lcom/rockrobo/more/remotecontroller/RCParams;->velocity:D

    return-wide v0
.end method
