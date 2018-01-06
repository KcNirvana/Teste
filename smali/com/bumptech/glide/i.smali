.class public Lcom/bumptech/glide/i;
.super Lcom/bumptech/glide/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/h",
        "<TModelType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/o",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/m$c;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/e;Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/m$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e",
            "<TModelType;***>;",
            "Lcom/bumptech/glide/load/c/o",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/m$c;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/j;

    const-class v1, Lcom/bumptech/glide/load/resource/d/b;

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lcom/bumptech/glide/i;->a(Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/c/o;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/d;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    const-class v1, Lcom/bumptech/glide/load/resource/d/b;

    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V

    iput-object p2, p0, Lcom/bumptech/glide/i;->g:Lcom/bumptech/glide/load/c/o;

    iput-object p3, p0, Lcom/bumptech/glide/i;->h:Lcom/bumptech/glide/m$c;

    invoke-virtual {p0}, Lcom/bumptech/glide/i;->c()Lcom/bumptech/glide/h;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/c/o;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/d;)Lcom/bumptech/glide/f/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/j;",
            "Lcom/bumptech/glide/load/c/o",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/f/d",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            "TR;>;)",
            "Lcom/bumptech/glide/f/e",
            "<TA;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            "TR;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p3, :cond_1

    const-class v0, Lcom/bumptech/glide/load/resource/d/b;

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/f/d;

    move-result-object p3

    :cond_1
    const-class v0, Ljava/io/InputStream;

    const-class v1, Lcom/bumptech/glide/load/resource/d/b;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/j;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;

    move-result-object v1

    new-instance v0, Lcom/bumptech/glide/f/e;

    invoke-direct {v0, p1, p3, v1}, Lcom/bumptech/glide/f/e;-><init>(Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/resource/f/d;Lcom/bumptech/glide/f/b;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/resource/f/d;Ljava/lang/Class;)Lcom/bumptech/glide/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/resource/f/d",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            "TR;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/j;

    iget-object v1, p0, Lcom/bumptech/glide/i;->g:Lcom/bumptech/glide/load/c/o;

    invoke-static {v0, v1, p2, p1}, Lcom/bumptech/glide/i;->a(Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/c/o;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/d;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/i;->h:Lcom/bumptech/glide/m$c;

    new-instance v2, Lcom/bumptech/glide/e;

    invoke-direct {v2, v0, p2, p0}, Lcom/bumptech/glide/e;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/m$c;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/bumptech/glide/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/f/b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/f/b;-><init>()V

    const-class v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/i;->a(Lcom/bumptech/glide/load/resource/f/d;Ljava/lang/Class;)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method
