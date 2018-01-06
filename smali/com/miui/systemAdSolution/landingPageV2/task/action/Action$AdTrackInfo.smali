.class public Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;
.super Lcom/xiaomi/ad/entity/contract/GsonEntityBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdTrackInfo"
.end annotation


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "AdTrackInfo"


# instance fields
.field adPassback:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field apkChannel:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field configKey:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field ref:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;


# direct methods
.method public constructor <init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;->this$0:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdPassback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;->adPassback:Ljava/lang/String;

    return-object v0
.end method

.method public getApkChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;->apkChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;->configKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;->ref:Ljava/lang/String;

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "AdTrackInfo"

    return-object v0
.end method
