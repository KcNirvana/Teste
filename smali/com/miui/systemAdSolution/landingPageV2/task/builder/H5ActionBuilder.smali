.class public Lcom/miui/systemAdSolution/landingPageV2/task/builder/H5ActionBuilder;
.super Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder",
        "<",
        "Lcom/miui/systemAdSolution/landingPageV2/listener/IH5Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private mH5Url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/H5ActionBuilder;->build()Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;
    .locals 5

    new-instance v1, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;

    iget-object v2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/H5ActionBuilder;->mTrackInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/H5ActionBuilder;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/miui/systemAdSolution/landingPageV2/listener/IH5Listener;

    iget-boolean v3, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/H5ActionBuilder;->mIsForwardWhenSuccess:Z

    iget-object v4, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/H5ActionBuilder;->mH5Url:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;-><init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;Lcom/miui/systemAdSolution/landingPageV2/listener/IH5Listener;ZLjava/lang/String;)V

    return-object v1
.end method

.method public buildH5Url(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/builder/H5ActionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/H5ActionBuilder;->mH5Url:Ljava/lang/String;

    return-object p0
.end method
