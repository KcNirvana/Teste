.class public Lcom/bumptech/glide/load/resource/d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/d/i$b;,
        Lcom/bumptech/glide/load/resource/d/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/e",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/d/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/d/i$b;

.field private static final b:Lcom/bumptech/glide/load/resource/d/i$a;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/bumptech/glide/load/resource/d/i$b;

.field private final e:Lcom/bumptech/glide/load/b/a/c;

.field private final f:Lcom/bumptech/glide/load/resource/d/i$a;

.field private final g:Lcom/bumptech/glide/load/resource/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/resource/d/i$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/d/i$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/d/i;->a:Lcom/bumptech/glide/load/resource/d/i$b;

    new-instance v0, Lcom/bumptech/glide/load/resource/d/i$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/d/i$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/d/i;->b:Lcom/bumptech/glide/load/resource/d/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/a/c;)V
    .locals 2

    sget-object v0, Lcom/bumptech/glide/load/resource/d/i;->a:Lcom/bumptech/glide/load/resource/d/i$b;

    sget-object v1, Lcom/bumptech/glide/load/resource/d/i;->b:Lcom/bumptech/glide/load/resource/d/i$a;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bumptech/glide/load/resource/d/i;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/resource/d/i$b;Lcom/bumptech/glide/load/resource/d/i$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/resource/d/i$b;Lcom/bumptech/glide/load/resource/d/i$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/i;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/i;->e:Lcom/bumptech/glide/load/b/a/c;

    iput-object p4, p0, Lcom/bumptech/glide/load/resource/d/i;->f:Lcom/bumptech/glide/load/resource/d/i$a;

    new-instance v0, Lcom/bumptech/glide/load/resource/d/a;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/resource/d/a;-><init>(Lcom/bumptech/glide/load/b/a/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/i;->g:Lcom/bumptech/glide/load/resource/d/a;

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/d/i;->d:Lcom/bumptech/glide/load/resource/d/i$b;

    return-void
.end method

.method private a(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/c;[B)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p1, p2, p3}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/c;[B)V

    invoke-virtual {p1}, Lcom/bumptech/glide/b/a;->a()V

    invoke-virtual {p1}, Lcom/bumptech/glide/b/a;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a([BIILcom/bumptech/glide/b/d;Lcom/bumptech/glide/b/a;)Lcom/bumptech/glide/load/resource/d/d;
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p4}, Lcom/bumptech/glide/b/d;->b()Lcom/bumptech/glide/b/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/b/c;->a()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v7}, Lcom/bumptech/glide/b/c;->b()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p5, v7, p1}, Lcom/bumptech/glide/load/resource/d/i;->a(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/c;[B)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/bumptech/glide/load/resource/d;->b()Lcom/bumptech/glide/load/resource/d;

    move-result-object v4

    new-instance v0, Lcom/bumptech/glide/load/resource/d/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/i;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/i;->g:Lcom/bumptech/glide/load/resource/d/a;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/d/i;->e:Lcom/bumptech/glide/load/b/a/c;

    move v5, p2

    move v6, p3

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/d/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/b/c;[BLandroid/graphics/Bitmap;)V

    new-instance v1, Lcom/bumptech/glide/load/resource/d/d;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/resource/d/d;-><init>(Lcom/bumptech/glide/load/resource/d/b;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    const/16 v0, 0x4000

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v0, 0x4000

    :try_start_0
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GifResourceDecoder"

    const-string v3, "Error reading data from stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/d/i;->a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/d/d;
    .locals 6

    invoke-static {p1}, Lcom/bumptech/glide/load/resource/d/i;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/i;->d:Lcom/bumptech/glide/load/resource/d/i$b;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/d/i$b;->a([B)Lcom/bumptech/glide/b/d;

    move-result-object v4

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/i;->f:Lcom/bumptech/glide/load/resource/d/i$a;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/i;->g:Lcom/bumptech/glide/load/resource/d/a;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/resource/d/i$a;->a(Lcom/bumptech/glide/b/a$a;)Lcom/bumptech/glide/b/a;

    move-result-object v5

    move-object v0, p0

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/d/i;->a([BIILcom/bumptech/glide/b/d;Lcom/bumptech/glide/b/a;)Lcom/bumptech/glide/load/resource/d/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/i;->d:Lcom/bumptech/glide/load/resource/d/i$b;

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/load/resource/d/i$b;->a(Lcom/bumptech/glide/b/d;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/i;->f:Lcom/bumptech/glide/load/resource/d/i$a;

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/load/resource/d/i$a;->a(Lcom/bumptech/glide/b/a;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/i;->d:Lcom/bumptech/glide/load/resource/d/i$b;

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/load/resource/d/i$b;->a(Lcom/bumptech/glide/b/d;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/i;->f:Lcom/bumptech/glide/load/resource/d/i$a;

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/load/resource/d/i$a;->a(Lcom/bumptech/glide/b/a;)V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
