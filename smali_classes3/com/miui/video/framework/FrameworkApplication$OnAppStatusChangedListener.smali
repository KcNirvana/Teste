.class public interface abstract Lcom/miui/video/framework/FrameworkApplication$OnAppStatusChangedListener;
.super Ljava/lang/Object;
.source "FrameworkApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/framework/FrameworkApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAppStatusChangedListener"
.end annotation


# virtual methods
.method public abstract onActivityCreated(Landroid/app/Activity;)V
.end method

.method public abstract onActivityDestroyed(Landroid/app/Activity;)V
.end method

.method public abstract onActivityPaused(Landroid/app/Activity;)V
.end method

.method public abstract onActivityResumed(Landroid/app/Activity;)V
.end method

.method public abstract onAppBackground(Landroid/app/Activity;)V
.end method

.method public abstract onAppForeground(Landroid/app/Activity;)V
.end method

.method public abstract onProcessExit(Landroid/app/Activity;)V
.end method

.method public abstract onProcessStart(Landroid/app/Activity;)V
.end method
