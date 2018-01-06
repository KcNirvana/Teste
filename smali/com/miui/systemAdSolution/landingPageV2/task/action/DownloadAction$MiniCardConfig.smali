.class public Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;
.super Lcom/xiaomi/ad/entity/contract/GsonEntityBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MiniCardConfig"
.end annotation


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "MiniCardConfig"


# instance fields
.field canCancel:Z
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field dismissWhenDownloadStart:Z
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;


# direct methods
.method public constructor <init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;->this$0:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanCancel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;->canCancel:Z

    return v0
.end method

.method public getDismissWhenDownloadStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;->dismissWhenDownloadStart:Z

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "MiniCardConfig"

    return-object v0
.end method
