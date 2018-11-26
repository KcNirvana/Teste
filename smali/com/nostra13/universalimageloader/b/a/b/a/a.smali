.class public Lcom/nostra13/universalimageloader/b/a/b/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nostra13/universalimageloader/b/a/a;


# static fields
.field public static final bmb:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field protected bmc:Lcom/nostra13/universalimageloader/b/a/b/a/c;

.field protected bmd:Landroid/graphics/Bitmap$CompressFormat;

.field protected bme:I

.field protected final bmf:Lcom/nostra13/universalimageloader/b/a/a/b;

.field private bmg:Ljava/io/File;

.field private final bmh:Ljava/io/File;

.field protected bufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bmb:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/b/a/a/b;JILjava/io/File;)V
    .locals 8

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    iput v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bufferSize:I

    sget-object v0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bmb:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bmd:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bme:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cacheDir argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p4, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cacheMaxSize argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p6, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cacheMaxFileCount argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fileNameGenerator argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    cmp-long v0, p4, v2

    if-nez v0, :cond_5

    const-wide v4, 0x7fffffffffffffffL

    :goto_0
    if-nez p6, :cond_4

    const v6, 0x7fffffff

    :goto_1
    iput-object p2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bmg:Ljava/io/File;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bmf:Lcom/nostra13/universalimageloader/b/a/a/b;

    iput-object p7, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bmh:Ljava/io/File;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bJh(Ljava/io/File;Ljava/io/File;JILjava/io/File;)V

    return-void

    :cond_4
    move v6, p6

    goto :goto_1

    :cond_5
    move-wide v4, p4

    goto :goto_0
.end method

.method private bJg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bmf:Lcom/nostra13/universalimageloader/b/a/a/b;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/b/a/a/b;->bJe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bJh(Ljava/io/File;Ljava/io/File;JILjava/io/File;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    :try_start_0
    invoke-static/range {v1 .. v7}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJm(Ljava/io/File;IIJILjava/io/File;)Lcom/nostra13/universalimageloader/b/a/b/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bmc:Lcom/nostra13/universalimageloader/b/a/b/a/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a;->bDP(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    move-object v1, p0

    move-object v2, p2

    move-object v3, v8

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bJh(Ljava/io/File;Ljava/io/File;JILjava/io/File;)V

    :cond_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bmc:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    if-nez v1, :cond_0

    throw v0
.end method


# virtual methods
.method public bJi(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bmc:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bJg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJn(Ljava/lang/String;)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJL(I)Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bufferSize:I

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_0
    iget-object v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bmd:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bme:I

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-static {v1}, Lcom/nostra13/universalimageloader/a/b;->bDW(Ljava/io/Closeable;)V

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJM()V

    :goto_0
    return v2

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/nostra13/universalimageloader/a/b;->bDW(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJN()V

    goto :goto_0
.end method

.method public bJj(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/a/c;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bmc:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bJg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJn(Ljava/lang/String;)Lcom/nostra13/universalimageloader/b/a/b/a/e;

    move-result-object v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJL(I)Ljava/io/OutputStream;

    move-result-object v0

    iget v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bufferSize:I

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_0
    iget v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bufferSize:I

    invoke-static {p2, v2, p3, v0}, Lcom/nostra13/universalimageloader/a/b;->bDY(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/a/c;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/b;->bDW(Ljava/io/Closeable;)V

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJM()V

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJN()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/b;->bDW(Ljava/io/Closeable;)V

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJN()V

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bmc:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/b/a/b/a/a;->bJg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->get(Ljava/lang/String;)Lcom/nostra13/universalimageloader/b/a/b/a/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/d;->close()V

    :cond_0
    return-object v2

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/b/a/b/a/d;->bJK(I)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a;->bDP(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/d;->close()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/b/a/b/a/d;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method
