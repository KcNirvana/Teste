.class public Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;
.super Lorg/json/JSONObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MiniCardConfigBuilder"
.end annotation


# static fields
.field private static final KEY_AUTO_DISMISS:Ljava/lang/String; = "dismissWhenDownloadStart"

.field private static final KEY_CAN_CANCEL:Ljava/lang/String; = "canCancel"

.field private static final TAG:Ljava/lang/String; = "MiniCardConfigBuilder"


# instance fields
.field final synthetic this$0:Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;


# direct methods
.method public constructor <init>(Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;->this$0:Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;
    .locals 3

    const-string v0, "canCancel"

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;->buildCanCancel(Z)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;

    :cond_0
    const-string v0, "dismissWhenDownloadStart"

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;->buildAutoDismissWhenDownloadStart(Z)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;

    :cond_1
    const-class v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniCardConfigBuilder"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;

    return-object v0
.end method

.method public buildAutoDismissWhenDownloadStart(Z)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;
    .locals 1

    :try_start_0
    const-string v0, "dismissWhenDownloadStart"

    invoke-virtual {p0, v0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public buildCanCancel(Z)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;
    .locals 1

    :try_start_0
    const-string v0, "canCancel"

    invoke-virtual {p0, v0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$MiniCardConfigBuilder;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
