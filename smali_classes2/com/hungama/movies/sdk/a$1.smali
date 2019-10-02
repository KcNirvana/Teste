.class Lcom/hungama/movies/sdk/a$1;
.super Ljava/lang/Thread;
.source "HungamaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/movies/sdk/a;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/movies/sdk/b/a;

.field final synthetic b:Lcom/hungama/movies/sdk/a;


# direct methods
.method constructor <init>(Lcom/hungama/movies/sdk/a;Lcom/hungama/movies/sdk/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/a$1;->b:Lcom/hungama/movies/sdk/a;

    iput-object p2, p0, Lcom/hungama/movies/sdk/a$1;->a:Lcom/hungama/movies/sdk/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a$1;->b:Lcom/hungama/movies/sdk/a;

    invoke-static {v0}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hungama/movies/sdk/a/a;->a(Landroid/content/Context;)Lcom/hungama/movies/sdk/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/a$a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad id"

    invoke-static {v1, v0}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/a$1;->a:Lcom/hungama/movies/sdk/b/a;

    invoke-virtual {v1, v0}, Lcom/hungama/movies/sdk/b/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
