.class public abstract Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DOWNLOAD_SOURCE_DEFAULT:I = 0x3

.field public static final DOWNLOAD_SOURCE_MIMARKET:I = 0x1

.field public static final DOWNLOAD_SOURCE_NATIVE:I = 0x2


# instance fields
.field protected mIsForwardWhenSuccess:Z

.field protected mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mTrackInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;
.end method

.method public buildAdTrackInfo(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;)Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;->mTrackInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;

    return-object p0
.end method

.method public buildIsForwardWhenSuccess(Z)Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;->mIsForwardWhenSuccess:Z

    return-object p0
.end method

.method public buildListener(Ljava/lang/Object;)Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/ActionBuilder;->mListener:Ljava/lang/Object;

    return-object p0
.end method
