.class public Lcom/rockrobo/opengl/objects/Rectangle2DObject;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final POSITION_COMPONENT_COUNT:I = 0x2

.field private static final STRIDE:I = 0x10

.field private static final TEXTURE_COORDINATES_COMPONENT_COUNT:I = 0x2


# instance fields
.field private vertexArray:Lcom/rockrobo/opengl/data/VertexArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/opengl/objects/Rectangle2DObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/opengl/objects/Rectangle2DObject;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [F

    add-float v1, p2, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    add-float v1, p3, p4

    div-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v1, v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x7

    aput v2, v0, v3

    const/16 v3, 0x8

    aput p2, v0, v3

    const/16 v3, 0x9

    aput p3, v0, v3

    const/16 v3, 0xa

    aput v2, v0, v3

    const/16 v3, 0xb

    aput v2, v0, v3

    const/16 v3, 0xc

    aput p2, v0, v3

    const/16 p2, 0xd

    aput p4, v0, p2

    const/16 p2, 0xe

    aput v2, v0, p2

    const/16 p2, 0xf

    aput v1, v0, p2

    const/16 p2, 0x10

    aput p1, v0, p2

    const/16 p2, 0x11

    aput p4, v0, p2

    const/16 p2, 0x12

    aput v1, v0, p2

    const/16 p2, 0x13

    aput v1, v0, p2

    const/16 p2, 0x14

    aput p1, v0, p2

    const/16 p1, 0x15

    aput p3, v0, p1

    const/16 p1, 0x16

    aput v1, v0, p1

    const/16 p1, 0x17

    aput v2, v0, p1

    new-instance p1, Lcom/rockrobo/opengl/data/VertexArray;

    invoke-direct {p1, v0}, Lcom/rockrobo/opengl/data/VertexArray;-><init>([F)V

    iput-object p1, p0, Lcom/rockrobo/opengl/objects/Rectangle2DObject;->vertexArray:Lcom/rockrobo/opengl/data/VertexArray;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/rockrobo/opengl/programs/ShaderProgram;)V
    .locals 5

    iget-object v0, p0, Lcom/rockrobo/opengl/objects/Rectangle2DObject;->vertexArray:Lcom/rockrobo/opengl/data/VertexArray;

    invoke-virtual {p1}, Lcom/rockrobo/opengl/programs/ShaderProgram;->getPositionAttributeLocation()I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/rockrobo/opengl/data/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/rockrobo/opengl/objects/Rectangle2DObject;->vertexArray:Lcom/rockrobo/opengl/data/VertexArray;

    invoke-virtual {p1}, Lcom/rockrobo/opengl/programs/ShaderProgram;->getTextureCoordinatesAttributeLocation()I

    move-result p1

    invoke-virtual {v0, v3, p1, v3, v2}, Lcom/rockrobo/opengl/data/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public draw()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method
