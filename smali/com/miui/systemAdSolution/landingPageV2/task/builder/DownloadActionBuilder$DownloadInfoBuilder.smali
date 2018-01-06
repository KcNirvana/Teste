.class public Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;
.super Lorg/json/JSONObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadInfoBuilder"
.end annotation


# static fields
.field private static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field private static final KEY_DOWNLOAD_URL:Ljava/lang/String; = "downloadUrl"

.field private static final KEY_ICON_URL:Ljava/lang/String; = "iconUrl"

.field private static final KEY_SIZE:Ljava/lang/String; = "size"

.field private static final KEY_SUMMARY:Ljava/lang/String; = "summary"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "DownloadInfoBuilder"


# instance fields
.field final synthetic this$0:Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;


# direct methods
.method public constructor <init>(Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;->this$0:Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;
    .locals 3

    const-class v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadInfoBuilder"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;

    return-object v0
.end method

.method public buildCategory(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;
    .locals 1

    :try_start_0
    const-string v0, "category"

    invoke-virtual {p0, v0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public buildDownloadUrl(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;
    .locals 1

    :try_start_0
    const-string v0, "downloadUrl"

    invoke-virtual {p0, v0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public buildIconUrl(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;
    .locals 1

    :try_start_0
    const-string v0, "iconUrl"

    invoke-virtual {p0, v0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public buildSize(J)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;
    .locals 1

    :try_start_0
    const-string v0, "size"

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public buildSummary(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;
    .locals 1

    :try_start_0
    const-string v0, "summary"

    invoke-virtual {p0, v0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public buildTitle(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;
    .locals 1

    :try_start_0
    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/builder/DownloadActionBuilder$DownloadInfoBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
