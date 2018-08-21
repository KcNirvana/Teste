.class public interface abstract Lcom/alipay/android/app/template/event/TElementEventHandler;
.super Ljava/lang/Object;
.source "TElementEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;
    }
.end annotation


# virtual methods
.method public abstract onAsyncEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
.end method

.method public abstract onEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Z
.end method

.method public abstract onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
.end method
