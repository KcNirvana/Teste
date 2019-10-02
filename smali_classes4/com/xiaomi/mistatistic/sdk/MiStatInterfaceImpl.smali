.class public Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;
.super Lcom/xiaomi/mistatistic/sdk/MiStatInterface;
.source "MiStatInterfaceImpl.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;
    .locals 2

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->sInstance:Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->sInstance:Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;-><init>()V

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->sInstance:Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->sInstance:Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;

    return-object v0
.end method


# virtual methods
.method public addJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MI_STAT"

    const-string p2, "The statistics is disabled."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "addJavascriptInterface: webView is null or jsInterfaceName is empty."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public trackCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public trackCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MI_STAT"

    const-string p2, "The statistics is disabled."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p3

    move-object v4, v0

    move-object v0, p3

    move-object p3, v4

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_1
    move-object p3, v0

    :cond_2
    :goto_2
    invoke-static {p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public trackStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
