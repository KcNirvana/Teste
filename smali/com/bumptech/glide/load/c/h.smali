.class public Lcom/bumptech/glide/load/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/c/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/o",
        "<TA;",
        "Lcom/bumptech/glide/load/c/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/o",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/o",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/c/o;Lcom/bumptech/glide/load/c/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/o",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/c/o",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "At least one of streamLoader and fileDescriptorLoader must be non null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/c/h;->a:Lcom/bumptech/glide/load/c/o;

    iput-object p2, p0, Lcom/bumptech/glide/load/c/h;->b:Lcom/bumptech/glide/load/c/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lcom/bumptech/glide/load/a/c",
            "<",
            "Lcom/bumptech/glide/load/c/i;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/load/c/h;->a:Lcom/bumptech/glide/load/c/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/load/c/h;->a:Lcom/bumptech/glide/load/c/o;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/o;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/c/h;->b:Lcom/bumptech/glide/load/c/o;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bumptech/glide/load/c/h;->b:Lcom/bumptech/glide/load/c/o;

    invoke-interface {v2, p1, p2, p3}, Lcom/bumptech/glide/load/c/o;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/a/c;

    move-result-object v2

    :goto_1
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Lcom/bumptech/glide/load/c/h$a;

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/c/h$a;-><init>(Lcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/load/a/c;)V

    :cond_1
    return-object v1

    :cond_2
    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
