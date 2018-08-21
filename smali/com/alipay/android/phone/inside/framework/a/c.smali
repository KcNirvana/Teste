.class public Lcom/alipay/android/phone/inside/framework/a/c;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field static a:Lcom/alipay/android/phone/inside/framework/a/d;

.field static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/inside/framework/a/c;->b:Z

    new-instance v0, Lcom/alipay/android/phone/inside/framework/a/d;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/framework/a/d;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/framework/a/c;->a:Lcom/alipay/android/phone/inside/framework/a/d;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/a/a;
    .locals 5

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/a/c;->a()V

    sget-object v0, Lcom/alipay/android/phone/inside/framework/a/c;->a:Lcom/alipay/android/phone/inside/framework/a/d;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/inside/framework/a/d;->a(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/a/a;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "inside"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PluginManager::getInsidePlugin > pluginName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", plugin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v1, Lcom/alipay/android/phone/inside/framework/a/c;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alipay/android/phone/inside/framework/a/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/android/phone/inside/framework/a/c;->a:Lcom/alipay/android/phone/inside/framework/a/d;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/framework/a/d;->a()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/inside/framework/a/c;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;
    .locals 5

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/a/c;->a()V

    sget-object v0, Lcom/alipay/android/phone/inside/framework/a/c;->a:Lcom/alipay/android/phone/inside/framework/a/d;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/inside/framework/a/d;->b(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "inside"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PluginManager::getInsideService > serviceName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
