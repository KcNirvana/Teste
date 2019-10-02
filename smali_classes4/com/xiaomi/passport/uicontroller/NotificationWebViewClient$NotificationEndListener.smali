.class public interface abstract Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;
.super Ljava/lang/Object;
.source "NotificationWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationEndListener"
.end annotation


# virtual methods
.method public abstract onAuthEnd(Ljava/lang/String;)V
.end method

.method public abstract onLoginEnd(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNeedReLogin()V
.end method
