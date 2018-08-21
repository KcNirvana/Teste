.class public Lcom/alipay/android/app/template/EventHandlerWrapper;
.super Ljava/lang/Object;
.source "EventHandlerWrapper.java"

# interfaces
.implements Lcom/alipay/android/app/template/EventHandler;


# instance fields
.field handler:Lcom/alipay/android/app/template/event/TElementEventHandler;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/event/TElementEventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/template/EventHandlerWrapper;->handler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    return-void
.end method


# virtual methods
.method public onAsyncEvent(Lcom/alipay/android/app/template/EventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/template/EventHandlerWrapper;->handler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    invoke-virtual {p1}, Lcom/alipay/android/app/template/EventHandler$EventType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/android/app/template/event/TElementEventHandler;->onAsyncEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z

    move-result v0

    return v0
.end method

.method public onEvent(Lcom/alipay/android/app/template/EventHandler$EventType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/template/EventHandlerWrapper;->handler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    invoke-virtual {p1}, Lcom/alipay/android/app/template/EventHandler$EventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    move-result-object v2

    invoke-interface {v1, v2, p2, v0, p4}, Lcom/alipay/android/app/template/event/TElementEventHandler;->onEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/template/EventHandlerWrapper;->handler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/template/event/TElementEventHandler;->onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
