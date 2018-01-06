.class Lcom/amap/api/col/fs;
.super Lcom/amap/api/col/gj;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/amap/api/col/ft;

.field final synthetic b:Lcom/amap/api/col/fu;

.field final synthetic c:Lcom/amap/api/col/fr;


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/fs;->c:Lcom/amap/api/col/fr;

    iget-object v1, p0, Lcom/amap/api/col/fs;->a:Lcom/amap/api/col/ft;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/fr;->b(Lcom/amap/api/col/ft;Z)Lcom/amap/api/col/fv;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/fs;->c:Lcom/amap/api/col/fr;

    iget-object v2, p0, Lcom/amap/api/col/fs;->b:Lcom/amap/api/col/fu;

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/fr;->a(Lcom/amap/api/col/fr;Lcom/amap/api/col/fv;Lcom/amap/api/col/fu;)V
    :try_end_0
    .catch Lcom/amap/api/col/ct; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/col/fs;->c:Lcom/amap/api/col/fr;

    iget-object v2, p0, Lcom/amap/api/col/fs;->b:Lcom/amap/api/col/fu;

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/fr;->a(Lcom/amap/api/col/fr;Lcom/amap/api/col/ct;Lcom/amap/api/col/fu;)V

    goto :goto_0
.end method
