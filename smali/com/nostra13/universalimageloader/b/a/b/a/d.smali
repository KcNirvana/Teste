.class public final Lcom/nostra13/universalimageloader/b/a/b/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private bmE:[Ljava/io/File;

.field private final bmF:[Ljava/io/InputStream;

.field private final bmG:[J

.field private final bmH:J

.field final synthetic bmI:Lcom/nostra13/universalimageloader/b/a/b/a/c;

.field private final key:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V
    .locals 1

    iput-object p1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/d;->bmI:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/d;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/d;->bmH:J

    iput-object p5, p0, Lcom/nostra13/universalimageloader/b/a/b/a/d;->bmE:[Ljava/io/File;

    iput-object p6, p0, Lcom/nostra13/universalimageloader/b/a/b/a/d;->bmF:[Ljava/io/InputStream;

    iput-object p7, p0, Lcom/nostra13/universalimageloader/b/a/b/a/d;->bmG:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLcom/nostra13/universalimageloader/b/a/b/a/d;)V
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/nostra13/universalimageloader/b/a/b/a/d;-><init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public bJK(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/d;->bmE:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .locals 4

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/d;->bmF:[Ljava/io/InputStream;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/nostra13/universalimageloader/b/a/b/a/h;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
