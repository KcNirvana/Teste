.class final enum Lcom/bumptech/glide/load/b/c/d;
.super Lcom/bumptech/glide/load/b/c/a$c;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/b/c/a$c;-><init>(Ljava/lang/String;ILcom/bumptech/glide/load/b/c/a$1;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bumptech/glide/load/b/c/a$c;->a(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
