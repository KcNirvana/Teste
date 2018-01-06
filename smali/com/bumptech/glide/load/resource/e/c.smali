.class public Lcom/bumptech/glide/load/resource/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/e/c$b;,
        Lcom/bumptech/glide/load/resource/e/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/e",
        "<",
        "Lcom/bumptech/glide/load/c/i;",
        "Lcom/bumptech/glide/load/resource/e/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/e/c$b;

.field private static final b:Lcom/bumptech/glide/load/resource/e/c$a;


# instance fields
.field private final c:Lcom/bumptech/glide/load/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/bumptech/glide/load/c/i;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/e",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/bumptech/glide/load/b/a/c;

.field private final f:Lcom/bumptech/glide/load/resource/e/c$b;

.field private final g:Lcom/bumptech/glide/load/resource/e/c$a;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/resource/e/c$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/e/c$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/e/c;->a:Lcom/bumptech/glide/load/resource/e/c$b;

    new-instance v0, Lcom/bumptech/glide/load/resource/e/c$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/e/c$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/e/c;->b:Lcom/bumptech/glide/load/resource/e/c$a;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/b/a/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/bumptech/glide/load/c/i;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;",
            "Lcom/bumptech/glide/load/b/a/c;",
            ")V"
        }
    .end annotation

    sget-object v4, Lcom/bumptech/glide/load/resource/e/c;->a:Lcom/bumptech/glide/load/resource/e/c$b;

    sget-object v5, Lcom/bumptech/glide/load/resource/e/c;->b:Lcom/bumptech/glide/load/resource/e/c$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/e/c;-><init>(Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/resource/e/c$b;Lcom/bumptech/glide/load/resource/e/c$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/resource/e/c$b;Lcom/bumptech/glide/load/resource/e/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/bumptech/glide/load/c/i;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;",
            "Lcom/bumptech/glide/load/b/a/c;",
            "Lcom/bumptech/glide/load/resource/e/c$b;",
            "Lcom/bumptech/glide/load/resource/e/c$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/e/c;->c:Lcom/bumptech/glide/load/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/e/c;->d:Lcom/bumptech/glide/load/e;

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/e/c;->e:Lcom/bumptech/glide/load/b/a/c;

    iput-object p4, p0, Lcom/bumptech/glide/load/resource/e/c;->f:Lcom/bumptech/glide/load/resource/e/c$b;

    iput-object p5, p0, Lcom/bumptech/glide/load/resource/e/c;->g:Lcom/bumptech/glide/load/resource/e/c$a;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/c/i;II[B)Lcom/bumptech/glide/load/resource/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bumptech/glide/load/c/i;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/e/c;->b(Lcom/bumptech/glide/load/c/i;II[B)Lcom/bumptech/glide/load/resource/e/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/e/c;->b(Lcom/bumptech/glide/load/c/i;II)Lcom/bumptech/glide/load/resource/e/a;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/e/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/c;->d:Lcom/bumptech/glide/load/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/e;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/k;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/bumptech/glide/load/b/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/b;->e()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    new-instance v0, Lcom/bumptech/glide/load/resource/e/a;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/e/a;-><init>(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/b/k;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/e/c;->e:Lcom/bumptech/glide/load/b/a/c;

    invoke-direct {v2, v0, v3}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/c;)V

    new-instance v0, Lcom/bumptech/glide/load/resource/e/a;

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/resource/e/a;-><init>(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/b/k;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Lcom/bumptech/glide/load/c/i;II)Lcom/bumptech/glide/load/resource/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/c;->c:Lcom/bumptech/glide/load/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/e;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/k;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/bumptech/glide/load/resource/e/a;

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/resource/e/a;-><init>(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/b/k;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Lcom/bumptech/glide/load/c/i;II[B)Lcom/bumptech/glide/load/resource/e/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/c;->g:Lcom/bumptech/glide/load/resource/e/c$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/c/i;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/bumptech/glide/load/resource/e/c$a;->a(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object v1

    const/16 v0, 0x800

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/c;->f:Lcom/bumptech/glide/load/resource/e/c$b;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/e/c$b;->a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    const/4 v0, 0x0

    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v1, p2, p3}, Lcom/bumptech/glide/load/resource/e/c;->a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/e/a;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/bumptech/glide/load/c/i;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/c/i;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/c/i;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/bumptech/glide/load/resource/e/c;->b(Lcom/bumptech/glide/load/c/i;II)Lcom/bumptech/glide/load/resource/e/a;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/c/i;II)Lcom/bumptech/glide/load/b/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/i;",
            "II)",
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/i/a;->a()Lcom/bumptech/glide/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/i/a;->b()[B

    move-result-object v1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/bumptech/glide/load/resource/e/c;->a(Lcom/bumptech/glide/load/c/i;II[B)Lcom/bumptech/glide/load/resource/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i/a;->a([B)Z

    if-eqz v2, :cond_0

    new-instance v0, Lcom/bumptech/glide/load/resource/e/b;

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/resource/e/b;-><init>(Lcom/bumptech/glide/load/resource/e/a;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i/a;->a([B)Z

    throw v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/bumptech/glide/load/c/i;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/e/c;->a(Lcom/bumptech/glide/load/c/i;II)Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/c;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/e/c;->d:Lcom/bumptech/glide/load/e;

    invoke-interface {v1}, Lcom/bumptech/glide/load/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/e/c;->c:Lcom/bumptech/glide/load/e;

    invoke-interface {v1}, Lcom/bumptech/glide/load/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/e/c;->h:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/c;->h:Ljava/lang/String;

    return-object v0
.end method
