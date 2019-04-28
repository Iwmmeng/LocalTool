.class public abstract Lcom/rockrobo/opengl/programs/ShaderProgram;
.super Ljava/lang/Object;


# static fields
.field protected static final A_COLOR:Ljava/lang/String; = "a_Color"

.field protected static final A_POSITION:Ljava/lang/String; = "a_Position"

.field protected static final A_TEXTURE_COORDINATES:Ljava/lang/String; = "a_TextureCoordinates"

.field protected static final U_COLOR:Ljava/lang/String; = "u_Color"

.field protected static final U_MATRIX:Ljava/lang/String; = "u_Matrix"

.field protected static final U_POINT_SIZE:Ljava/lang/String; = "u_PointSize"

.field protected static final U_TEXTURE_UNIT:Ljava/lang/String; = "u_TextureUnit"

.field protected static final U_Z_COORDINATE:Ljava/lang/String; = "u_ZCoordinate"


# instance fields
.field protected final program:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/rockrobo/opengl/util/TextResourceReader;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3}, Lcom/rockrobo/opengl/util/TextResourceReader;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/rockrobo/opengl/util/ShaderHelper;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/opengl/programs/ShaderProgram;->program:I

    return-void
.end method


# virtual methods
.method public abstract getPositionAttributeLocation()I
.end method

.method public abstract getTextureCoordinatesAttributeLocation()I
.end method

.method public useProgram()V
    .locals 1

    iget v0, p0, Lcom/rockrobo/opengl/programs/ShaderProgram;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
