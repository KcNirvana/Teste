.class public interface abstract Lcom/miui/systemAdSolution/landingPageV2/service/ILandingPageServiceV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemAdSolution/landingPageV2/service/ILandingPageServiceV2$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelTask(Ljava/lang/String;)V
.end method

.method public abstract executeTask(Ljava/util/List;Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;",
            ">;",
            "Lcom/miui/systemAdSolution/landingPageV2/listener/IActionTaskResultListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getNativeDownloadId(Ljava/lang/String;)J
.end method

.method public abstract getPackageDownloadStatus(Ljava/lang/String;)I
.end method

.method public abstract getServiceVersion()I
.end method
