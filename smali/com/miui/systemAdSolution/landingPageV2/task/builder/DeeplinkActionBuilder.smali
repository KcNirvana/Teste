.class public Lcom/miui/systemAdSolution/landingPageV2/task/builder/DeeplinkActionBuilder;
.super Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder",
        "<",
        "Lcom/miui/systemAdSolution/landingPageV2/listener/IDeeplinkListener;",
        ">;"
    }
.end annotation


# instance fields
.field private mTargetPackageName:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;
    .locals 6

    new-instance v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DeeplinkAction;

    iget-object v1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DeeplinkActionBuilder;->mTrackInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;

    iget-object v2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DeeplinkActionBuilder;->mListener:Ljava/lang/Object;

    check-cast v2, Lcom/miui/systemAdSolution/landingPageV2/listener/IDeeplinkListener;

    iget-boolean v3, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DeeplinkActionBuilder;->mIsForwardWhenSuccess:Z

    iget-object v4, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DeeplinkActionBuilder;->mUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DeeplinkActionBuilder;->mTargetPackageName:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DeeplinkAction;-><init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;Lcom/miui/systemAdSolution/landingPageV2/listener/IDeeplinkListener;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public buildTargetPackageName(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DeeplinkActionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DeeplinkActionBuilder;->mTargetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public buildUrl(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DeeplinkActionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DeeplinkActionBuilder;->mUrl:Ljava/lang/String;

    return-object p0
.end method
