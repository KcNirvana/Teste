.class public interface abstract Lcom/miui/systemAdSolution/landingPageV2/listener/IDownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemAdSolution/landingPageV2/listener/IDownloadListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDownloadCancel()V
.end method

.method public abstract onDownloadFail()V
.end method

.method public abstract onDownloadProgress(I)V
.end method

.method public abstract onDownloadStart()V
.end method

.method public abstract onDownloadSuccess()V
.end method

.method public abstract onInstallFail()V
.end method

.method public abstract onInstallStart()V
.end method

.method public abstract onInstallSuccess()V
.end method
