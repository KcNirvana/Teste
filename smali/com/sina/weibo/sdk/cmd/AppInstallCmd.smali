.class Lcom/sina/weibo/sdk/cmd/AppInstallCmd;
.super Lcom/sina/weibo/sdk/cmd/BaseCmd;
.source "AppInstallCmd.java"


# instance fields
.field private appPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appSign:Ljava/lang/String;

.field private appVersion:J

.field private downloadUrl:Ljava/lang/String;


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
.method public getAppPackage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appPackages:Ljava/util/List;

    return-object v0
.end method

.method public getAppSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appSign:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appVersion:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public initFromJsonObj(Lorg/json/JSONObject;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;->initFromJsonObj(Lorg/json/JSONObject;)V

    const-string/jumbo v1, "download_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->downloadUrl:Ljava/lang/String;

    const-string/jumbo v1, "app_package"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appPackages:Ljava/util/List;

    :cond_0
    const-string/jumbo v1, "app_sign"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appSign:Ljava/lang/String;

    const-string/jumbo v1, "app_version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appVersion:J

    return-void
.end method

.method public setAppPackage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appPackages:Ljava/util/List;

    return-void
.end method

.method public setAppSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appSign:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->appVersion:J

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;->downloadUrl:Ljava/lang/String;

    return-void
.end method
