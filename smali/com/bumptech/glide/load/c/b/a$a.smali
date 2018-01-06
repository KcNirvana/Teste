.class public Lcom/bumptech/glide/load/c/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/p",
        "<",
        "Lcom/bumptech/glide/load/c/e;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/m",
            "<",
            "Lcom/bumptech/glide/load/c/e;",
            "Lcom/bumptech/glide/load/c/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/c/m;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/c/m;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/c/b/a$a;->a:Lcom/bumptech/glide/load/c/m;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/load/c/c;)Lcom/bumptech/glide/load/c/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/c/c;",
            ")",
            "Lcom/bumptech/glide/load/c/o",
            "<",
            "Lcom/bumptech/glide/load/c/e;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/c/b/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/c/b/a$a;->a:Lcom/bumptech/glide/load/c/m;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/c/b/a;-><init>(Lcom/bumptech/glide/load/c/m;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method
