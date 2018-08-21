.class public interface abstract Lcom/alipay/android/app/pay/AuthTask$OnAuthListener;
.super Ljava/lang/Object;
.source "AuthTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/pay/AuthTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAuthListener"
.end annotation


# virtual methods
.method public abstract onAuthFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAuthSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
