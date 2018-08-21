.class public interface abstract Lcom/alipay/android/app/template/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/template/EventListener$EventCallback;,
        Lcom/alipay/android/app/template/EventListener$EventType;
    }
.end annotation


# virtual methods
.method public abstract onAsyncEvent(Lcom/alipay/android/app/template/EventListener$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/EventListener$EventCallback;)Z
.end method

.method public abstract onEvent(Lcom/alipay/android/app/template/EventListener$EventType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
.end method
