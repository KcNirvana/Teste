.class public Lcom/bumptech/glide/d;
.super Lcom/bumptech/glide/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/c",
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

.field private final h:Lcom/bumptech/glide/load/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/o",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/bumptech/glide/m$c;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/c/o;Landroid/content/Context;Lcom/bumptech/glide/j;Lcom/bumptech/glide/d/n;Lcom/bumptech/glide/d/h;Lcom/bumptech/glide/m$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/load/c/o",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/c/o",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/j;",
            "Lcom/bumptech/glide/d/n;",
            "Lcom/bumptech/glide/d/h;",
            "Lcom/bumptech/glide/m$c;",
            ")V"
        }
    .end annotation

    const-class v3, Lcom/bumptech/glide/load/resource/e/a;

    const-class v4, Lcom/bumptech/glide/load/resource/b/b;

    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/c/o;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/d;)Lcom/bumptech/glide/f/e;

    move-result-object v3

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Lcom/bumptech/glide/j;Lcom/bumptech/glide/d/n;Lcom/bumptech/glide/d/h;)V

    iput-object p2, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/c/o;

    iput-object p3, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/c/o;

    iput-object p8, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/m$c;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/c/o;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/d;)Lcom/bumptech/glide/f/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/j;",
            "Lcom/bumptech/glide/load/c/o",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/c/o",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/f/d",
            "<TZ;TR;>;)",
            "Lcom/bumptech/glide/f/e",
            "<TA;",
            "Lcom/bumptech/glide/load/c/i;",
            "TZ;TR;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/f/d;

    move-result-object p5

    :cond_1
    const-class v0, Lcom/bumptech/glide/load/c/i;

    invoke-virtual {p0, v0, p3}, Lcom/bumptech/glide/j;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/c/h;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/load/c/h;-><init>(Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/c/o;)V

    new-instance v0, Lcom/bumptech/glide/f/e;

    invoke-direct {v0, v2, p5, v1}, Lcom/bumptech/glide/f/e;-><init>(Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/resource/f/d;Lcom/bumptech/glide/f/b;)V

    goto :goto_0
.end method


# virtual methods
.method public h()Lcom/bumptech/glide/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/b",
            "<TModelType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/m$c;

    new-instance v1, Lcom/bumptech/glide/b;

    iget-object v2, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/c/o;

    iget-object v3, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/c/o;

    iget-object v4, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/m$c;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/bumptech/glide/b;-><init>(Lcom/bumptech/glide/e;Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/m$c;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m$c;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b;

    return-object v0
.end method

.method public i()Lcom/bumptech/glide/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/i",
            "<TModelType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/m$c;

    new-instance v1, Lcom/bumptech/glide/i;

    iget-object v2, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/c/o;

    iget-object v3, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/m$c;

    invoke-direct {v1, p0, v2, v3}, Lcom/bumptech/glide/i;-><init>(Lcom/bumptech/glide/e;Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/m$c;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m$c;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;

    return-object v0
.end method
