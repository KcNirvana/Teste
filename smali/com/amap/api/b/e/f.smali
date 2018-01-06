.class public final Lcom/amap/api/b/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/b/e/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/b/g/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/col/cc;->a(Z)Lcom/amap/api/col/de;

    move-result-object v1

    const-string v2, "com.amap.api.services.dynamic.GeocodeSearchWrapper"

    const-class v3, Lcom/amap/api/col/cq;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/eq;->a(Landroid/content/Context;Lcom/amap/api/col/de;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/b/g/a;

    iput-object v0, p0, Lcom/amap/api/b/e/f;->a:Lcom/amap/api/b/g/a;
    :try_end_0
    .catch Lcom/amap/api/col/ct; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/b/e/f;->a:Lcom/amap/api/b/g/a;

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/amap/api/col/cq;

    invoke-direct {v0, p1}, Lcom/amap/api/col/cq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/b/e/f;->a:Lcom/amap/api/b/g/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/col/ct;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/amap/api/b/e/f$a;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/b/e/f;->a:Lcom/amap/api/b/g/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/b/e/f;->a:Lcom/amap/api/b/g/a;

    invoke-interface {v0, p1}, Lcom/amap/api/b/g/a;->a(Lcom/amap/api/b/e/f$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/b/e/i;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/b/e/f;->a:Lcom/amap/api/b/g/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/b/e/f;->a:Lcom/amap/api/b/g/a;

    invoke-interface {v0, p1}, Lcom/amap/api/b/g/a;->b(Lcom/amap/api/b/e/i;)V

    :cond_0
    return-void
.end method
