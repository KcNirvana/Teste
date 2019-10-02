.class Lcom/hungama/movies/sdk/a$2;
.super Ljava/lang/Thread;
.source "HungamaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/movies/sdk/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/movies/sdk/a;


# direct methods
.method constructor <init>(Lcom/hungama/movies/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    invoke-static {v0}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    invoke-static {v0}, Lcom/hungama/movies/sdk/a;->b(Lcom/hungama/movies/sdk/a;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    invoke-static {v1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    const-string v3, "full"

    iget-object v4, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    invoke-static {v4}, Lcom/hungama/movies/sdk/a;->b(Lcom/hungama/movies/sdk/a;)I

    move-result v4

    iget-object v5, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    invoke-static {v5}, Lcom/hungama/movies/sdk/a;->c(Lcom/hungama/movies/sdk/a;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a;Ljava/lang/String;II)Lcom/hungama/movies/sdk/c/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hungama/movies/sdk/c/c;->a(Landroid/content/Context;Lcom/hungama/movies/sdk/c/d;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    invoke-static {v1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    const-string v3, "full"

    iget-object v4, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    iget-object v4, v4, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v4, v4, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v4}, Lcom/hungama/movies/sdk/a/f;->k()I

    move-result v4

    iget-object v5, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    iget-object v5, v5, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    iget-object v5, v5, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v5}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a;Ljava/lang/String;II)Lcom/hungama/movies/sdk/c/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hungama/movies/sdk/c/c;->a(Landroid/content/Context;Lcom/hungama/movies/sdk/c/d;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    invoke-static {v1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    const-string v3, "full"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a;Ljava/lang/String;II)Lcom/hungama/movies/sdk/c/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hungama/movies/sdk/c/c;->a(Landroid/content/Context;Lcom/hungama/movies/sdk/c/d;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/hungama/movies/sdk/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hungama/movies/sdk/c/c;->a()Lcom/hungama/movies/sdk/c/c;

    move-result-object v2

    iget-object v3, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    invoke-static {v3}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hungama/movies/sdk/c/c;->b(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/hungama/movies/sdk/a$2;->a:Lcom/hungama/movies/sdk/a;

    invoke-static {v2}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/hungama/movies/sdk/b/a;->a(Landroid/content/Context;)Lcom/hungama/movies/sdk/b/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/hungama/movies/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
