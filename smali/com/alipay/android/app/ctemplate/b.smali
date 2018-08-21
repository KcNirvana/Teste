.class Lcom/alipay/android/app/ctemplate/b;
.super Ljava/lang/Object;
.source "CdynamicTemplateEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/res/Resources;

.field final synthetic b:Lcom/alipay/android/app/ctemplate/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ctemplate/a;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ctemplate/b;->b:Lcom/alipay/android/app/ctemplate/a;

    iput-object p2, p0, Lcom/alipay/android/app/ctemplate/b;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/b;->b:Lcom/alipay/android/app/ctemplate/a;

    invoke-static {v0}, Lcom/alipay/android/app/ctemplate/a;->a(Lcom/alipay/android/app/ctemplate/a;)Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/b;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Landroid/content/res/Resources;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->b()Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Lcom/alipay/android/app/statistic/logfield/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/statistic/logfield/a;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->a([Lcom/alipay/android/app/statistic/logfield/a;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->b()Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Lcom/alipay/android/app/statistic/logfield/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/statistic/logfield/a;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->a([Lcom/alipay/android/app/statistic/logfield/a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->b()Ljava/util/List;

    move-result-object v0

    new-array v2, v2, [Lcom/alipay/android/app/statistic/logfield/a;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/statistic/logfield/a;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->a([Lcom/alipay/android/app/statistic/logfield/a;)V

    throw v1
.end method
