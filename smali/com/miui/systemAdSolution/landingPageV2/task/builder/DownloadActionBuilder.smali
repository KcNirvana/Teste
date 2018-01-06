.class public Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;
.super Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;,
        Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder",
        "<",
        "Lcom/miui/systemAdSolution/landingPageV2/listener/IDownloadListener;",
        ">;"
    }
.end annotation


# instance fields
.field private mDownloadInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;

.field private mDownloadSource:I

.field private mIsDownloadAutoStart:Z

.field private mIsDownloadByMiniCard:Z

.field private mMiniCardConfig:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;
    .locals 10

    new-instance v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;

    iget-object v1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mTrackInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;

    iget-object v2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mListener:Ljava/lang/Object;

    check-cast v2, Lcom/miui/systemAdSolution/landingPageV2/listener/IDownloadListener;

    iget-boolean v3, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mIsForwardWhenSuccess:Z

    iget-object v4, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mDownloadSource:I

    iget-boolean v6, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mIsDownloadByMiniCard:Z

    iget-boolean v7, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mIsDownloadAutoStart:Z

    iget-object v8, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mMiniCardConfig:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;

    iget-object v9, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mDownloadInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;

    invoke-direct/range {v0 .. v9}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;-><init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;Lcom/miui/systemAdSolution/landingPageV2/listener/IDownloadListener;ZLjava/lang/String;IZZLcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;)V

    return-object v0
.end method

.method public buildDownloadInfo(Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mDownloadInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;

    return-object p0
.end method

.method public buildDownloadSource(I)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;
    .locals 0

    iput p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mDownloadSource:I

    return-object p0
.end method

.method public buildIsDownloadByMiniCard(Z)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mIsDownloadByMiniCard:Z

    return-object p0
.end method

.method public buildMiniCardConfig(Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mMiniCardConfig:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;

    return-object p0
.end method

.method public buildPackageName(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
