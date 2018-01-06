.class public Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;
.super Lcom/xiaomi/ad/entity/contract/GsonEntityBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadInfo"
.end annotation


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "DownloadInfo"


# instance fields
.field category:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field size:I
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field summary:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;

.field title:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;->this$0:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;->size:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;->summary:Ljava/lang/String;

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DownloadInfo"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;->title:Ljava/lang/String;

    return-void
.end method
