.class Lcom/hungama/movies/sdk/c/c$1;
.super Ljava/lang/Thread;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/movies/sdk/c/c;->a(Landroid/content/Context;Lcom/hungama/movies/sdk/c/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/hungama/movies/sdk/c/d;

.field final synthetic c:Z

.field final synthetic d:Lcom/hungama/movies/sdk/c/c;


# direct methods
.method constructor <init>(Lcom/hungama/movies/sdk/c/c;Landroid/content/Context;Lcom/hungama/movies/sdk/c/d;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/c/c$1;->d:Lcom/hungama/movies/sdk/c/c;

    iput-object p2, p0, Lcom/hungama/movies/sdk/c/c$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/hungama/movies/sdk/c/c$1;->b:Lcom/hungama/movies/sdk/c/d;

    iput-boolean p4, p0, Lcom/hungama/movies/sdk/c/c$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/c/c$1;->d:Lcom/hungama/movies/sdk/c/c;

    iget-object v1, p0, Lcom/hungama/movies/sdk/c/c$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/hungama/movies/sdk/c/c$1;->b:Lcom/hungama/movies/sdk/c/d;

    invoke-virtual {v0, v1, v2}, Lcom/hungama/movies/sdk/c/c;->a(Landroid/content/Context;Lcom/hungama/movies/sdk/c/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/hungama/movies/sdk/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hungama/movies/sdk/c/c$1;->c:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hungama/movies/sdk/c/c$1;->d:Lcom/hungama/movies/sdk/c/c;

    iget-object v3, p0, Lcom/hungama/movies/sdk/c/c$1;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/hungama/movies/sdk/c/c;->b(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/hungama/movies/sdk/c/c$1;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/hungama/movies/sdk/b/a;->a(Landroid/content/Context;)Lcom/hungama/movies/sdk/b/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/hungama/movies/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/hungama/movies/sdk/c/c$1;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/c/c$1;->d:Lcom/hungama/movies/sdk/c/c;

    iget-object v1, p0, Lcom/hungama/movies/sdk/c/c$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/c/c;->b(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
