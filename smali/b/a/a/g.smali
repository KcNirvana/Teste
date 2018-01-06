.class public Lb/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lb/a/a/c/a;

.field private c:Lb/a/a/b/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb/a/a/b/a$a;

    invoke-direct {v0}, Lb/a/a/b/a$a;-><init>()V

    invoke-direct {p0, v0}, Lb/a/a/g;-><init>(Lb/a/a/b/g;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/b/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lb/a/a/g;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lb/a/a/c/a;

    iget-object v1, p0, Lb/a/a/g;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lb/a/a/c/a;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lb/a/a/g;->b:Lb/a/a/c/a;

    iget-object v0, p0, Lb/a/a/g;->b:Lb/a/a/c/a;

    invoke-interface {p1, v0}, Lb/a/a/b/g;->a(Lb/a/a/c/d;)Lb/a/a/b/e;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/g;->c:Lb/a/a/b/e;

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/g;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lb/a/a/g;->c:Lb/a/a/b/e;

    invoke-interface {p1, v0}, Lb/a/a/a;->b(Lb/a/a/b/e;)V

    iget-object v0, p0, Lb/a/a/g;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
