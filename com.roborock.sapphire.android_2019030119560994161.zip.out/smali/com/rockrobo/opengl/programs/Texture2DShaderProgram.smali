.class public Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;
.super Lcom/rockrobo/opengl/programs/ShaderProgram;


# static fields
.field protected static final U_ALPHA_RATE:Ljava/lang/String; = "u_AlphaRate"

.field protected static final U_X_DELTA:Ljava/lang/String; = "u_XDelta"

.field protected static final U_Y_DELTA:Ljava/lang/String; = "u_YDelta"


# instance fields
.field private final aPositionLocation:I

.field private final aTextureCoordinatesLocation:I

.field private final uAlphaRateLocation:I

.field private uTextureUnitLocation:I

.field private final uXDelta:I

.field private final uYDelta:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f090018

    const v1, 0x7f090017

    invoke-direct {p0, p1, v0, v1}, Lcom/rockrobo/opengl/programs/ShaderProgram;-><init>(Landroid/content/Context;II)V

    iget p1, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->program:I

    const-string v0, "u_TextureUnit"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->uTextureUnitLocation:I

    iget p1, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->program:I

    const-string v0, "u_XDelta"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->uXDelta:I

    iget p1, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->program:I

    const-string v0, "u_YDelta"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->uYDelta:I

    iget p1, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->program:I

    const-string v0, "u_AlphaRate"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->uAlphaRateLocation:I

    iget p1, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->program:I

    const-string v0, "a_Position"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->aPositionLocation:I

    iget p1, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->program:I

    const-string v0, "a_TextureCoordinates"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->aTextureCoordinatesLocation:I

    return-void
.end method


# virtual methods
.method public getPositionAttributeLocation()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->aPositionLocation:I

    return v0
.end method

.method public getTextureCoordinatesAttributeLocation()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->aTextureCoordinatesLocation:I

    return v0
.end method

.method public setUniforms(IF)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->setUniforms(IFFF)V

    return-void
.end method

.method public setUniforms(IFFF)V
    .locals 1

    iget v0, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->uXDelta:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p2, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->uYDelta:I

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p2, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->uAlphaRateLocation:I

    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const p2, 0x84c0

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/rockrobo/opengl/programs/Texture2DShaderProgram;->uTextureUnitLocation:I

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method
