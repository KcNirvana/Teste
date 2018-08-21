.class Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;
.super Lcom/sina/weibo/sdk/cmd/BaseCmd;
.source "AppInvokeCmd.java"


# instance fields
.field private appPackage:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/cmd/BaseCmd;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getAppPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->url:Ljava/lang/String;

    return-object v0
.end method

.method public initFromJsonObj(Lorg/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;->initFromJsonObj(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->appPackage:Ljava/lang/String;

    const-string/jumbo v0, "scheme"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->scheme:Ljava/lang/String;

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->url:Ljava/lang/String;

    return-void
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->appPackage:Ljava/lang/String;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->scheme:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->url:Ljava/lang/String;

    return-void
.end method
