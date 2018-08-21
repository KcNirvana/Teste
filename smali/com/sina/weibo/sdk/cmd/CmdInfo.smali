.class Lcom/sina/weibo/sdk/cmd/CmdInfo;
.super Ljava/lang/Object;
.source "CmdInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private frequency:I

.field private mInstallCmds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mInvokeCmds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sina/weibo/sdk/cmd/BaseCmd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/cmd/CmdInfo;->initFromJsonStr(Ljava/lang/String;)V

    return-void
.end method

.method private initFromJsonStr(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "error"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "error_code"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    sget-object v8, Lcom/sina/weibo/sdk/cmd/CmdInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "load cmd api has error !!!"

    invoke-static {v8, v9}, Lcom/sina/weibo/sdk/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string/jumbo v9, "load cmd api has error !!!"

    invoke-direct {v8, v9}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    sget-object v8, Lcom/sina/weibo/sdk/cmd/CmdInfo;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "parse NotificationInfo error: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v8, "cmd"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v8, "frequency"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->frequency:I

    const-string/jumbo v8, "app_install"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInstallCmds:Ljava/util/List;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_5

    :cond_4
    const-string/jumbo v8, "app_invoke"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInvokeCmds:Ljava/util/List;

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v8, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInvokeCmds:Ljava/util/List;

    new-instance v9, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;

    invoke-direct {v9, v6}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v8, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInstallCmds:Ljava/util/List;

    new-instance v9, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;

    invoke-direct {v9, v4}, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getFrequency()I
    .locals 1

    iget v0, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->frequency:I

    return v0
.end method

.method public getInstallCmds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInstallCmds:Ljava/util/List;

    return-object v0
.end method

.method public getInvokeCmds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInvokeCmds:Ljava/util/List;

    return-object v0
.end method

.method public setFrequency(I)V
    .locals 0

    iput p1, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->frequency:I

    return-void
.end method

.method public setInstallCmds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInstallCmds:Ljava/util/List;

    return-void
.end method

.method public setInvokeCmds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/CmdInfo;->mInvokeCmds:Ljava/util/List;

    return-void
.end method
