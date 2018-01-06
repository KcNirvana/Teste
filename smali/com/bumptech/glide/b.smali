.class public Lcom/bumptech/glide/b;
.super Lcom/bumptech/glide/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/a",
        "<TModelType;",
        "Landroid/graphics/Bitmap;",
        ">;"
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

.field private final i:Lcom/bumptech/glide/j;

.field private final j:Lcom/bumptech/glide/m$c;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/e;Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/m$c;)V
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
            "Lcom/bumptech/glide/load/c/o",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/bumptech/glide/m$c;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/j;

    const-class v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, v1, v2}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/c/o;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/d;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/a;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V

    iput-object p2, p0, Lcom/bumptech/glide/b;->g:Lcom/bumptech/glide/load/c/o;

    iput-object p3, p0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/load/c/o;

    iget-object v0, p1, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/j;

    iput-object v0, p0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/j;

    iput-object p4, p0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/m$c;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/c/o;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/f/d;)Lcom/bumptech/glide/f/e;
    .locals 3
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
            "Lcom/bumptech/glide/load/c/o",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/load/resource/f/d",
            "<",
            "Landroid/graphics/Bitmap;",
            "TR;>;)",
            "Lcom/bumptech/glide/f/e",
            "<TA;",
            "Lcom/bumptech/glide/load/c/i;",
            "Landroid/graphics/Bitmap;",
            "TR;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p4, :cond_1

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/f/d;

    move-result-object p4

    :cond_1
    const-class v0, Lcom/bumptech/glide/load/c/i;

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/j;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/f/b;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/c/h;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/load/c/h;-><init>(Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/c/o;)V

    new-instance v0, Lcom/bumptech/glide/f/e;

    invoke-direct {v0, v2, p4, v1}, Lcom/bumptech/glide/f/e;-><init>(Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/resource/f/d;Lcom/bumptech/glide/f/b;)V

    goto :goto_0
.end method
