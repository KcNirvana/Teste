.class public Lcom/nostra13/universalimageloader/core/download/b;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/download/b;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public bFJ()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/download/b;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public read()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, " Unsupported , use getBitmap()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
