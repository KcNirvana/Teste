.class Lcom/hungama/movies/sdk/c/c$2;
.super Ljava/lang/Thread;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/movies/sdk/c/c;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/hungama/movies/sdk/c/c;


# direct methods
.method constructor <init>(Lcom/hungama/movies/sdk/c/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/c/c$2;->b:Lcom/hungama/movies/sdk/c/c;

    iput-object p2, p0, Lcom/hungama/movies/sdk/c/c$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/c/c$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/hungama/movies/sdk/b/a;->a(Landroid/content/Context;)Lcom/hungama/movies/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b/a;->d()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hungama/movies/sdk/d/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hungama/movies/sdk/c/c$2;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/hungama/movies/sdk/b/a;->a(Landroid/content/Context;)Lcom/hungama/movies/sdk/b/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/hungama/movies/sdk/b/a;->d(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/a/d;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
