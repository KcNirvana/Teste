.class public interface abstract Lcom/alipay/android/app/template/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/template/EventHandler$EventType;
    }
.end annotation


# virtual methods
.method public abstract onAsyncEvent(Lcom/alipay/android/app/template/EventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
.end method

.method public abstract onEvent(Lcom/alipay/android/app/template/EventHandler$EventType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
.end method
