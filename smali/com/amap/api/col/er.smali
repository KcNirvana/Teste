.class final Lcom/amap/api/col/er;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/er;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/er;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/amap/api/col/dy;

    iget-object v1, p0, Lcom/amap/api/col/er;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/fa;->c()Lcom/amap/api/col/fa;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/dy;-><init>(Landroid/content/Context;Lcom/amap/api/col/dx;)V

    iget-object v1, p0, Lcom/amap/api/col/er;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/er;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ev;->a(Lcom/amap/api/col/dy;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "rollBack"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/fc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
