.class public final Lcom/a/a/b/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/z$1;,
        Lcom/a/a/b/z$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/a/a/d/a;)Lcom/a/a/v;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/z;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/c;

    const/4 v1, 0x0

    sget-object v0, Lcom/a/a/b/a/t;->P:Lcom/a/a/ai;

    invoke-virtual {v0, p0}, Lcom/a/a/ai;->read(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/v;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/a/a/d/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/a/a/x;->a:Lcom/a/a/x;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/a/a/ad;

    invoke-direct {v1, v0}, Lcom/a/a/ad;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/a/a/ad;

    invoke-direct {v1, v0}, Lcom/a/a/ad;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/a/a/w;

    invoke-direct {v1, v0}, Lcom/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/a/a/ad;

    invoke-direct {v1, v0}, Lcom/a/a/ad;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/a/a/b/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/z$a;-><init>(Ljava/lang/Appendable;Lcom/a/a/b/z$1;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Lcom/a/a/v;Lcom/a/a/d/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/a/a/b/a/t;->P:Lcom/a/a/ai;

    invoke-virtual {v0, p1, p0}, Lcom/a/a/ai;->write(Lcom/a/a/d/d;Ljava/lang/Object;)V

    return-void
.end method
