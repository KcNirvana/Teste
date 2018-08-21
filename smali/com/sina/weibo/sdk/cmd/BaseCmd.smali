.class Lcom/sina/weibo/sdk/cmd/BaseCmd;
.super Ljava/lang/Object;
.source "BaseCmd.java"


# instance fields
.field private mNotificationDelay:J

.field private mNotificationText:Ljava/lang/String;

.field private mNotificationTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;->initFromJsonStr(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;->initFromJsonObj(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getNotificationDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationDelay:J

    return-wide v0
.end method

.method public getNotificationText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationText:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected initFromJsonObj(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "notification_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationText:Ljava/lang/String;

    const-string/jumbo v0, "notification_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationTitle:Ljava/lang/String;

    const-string/jumbo v0, "notification_delay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationDelay:J

    return-void
.end method

.method protected initFromJsonStr(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sina/weibo/sdk/cmd/BaseCmd;->initFromJsonObj(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v3, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string/jumbo v4, "pase cmd has error !!!"

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setNotificationDelay(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationDelay:J

    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationText:Ljava/lang/String;

    return-void
.end method

.method public setNotificationTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/BaseCmd;->mNotificationTitle:Ljava/lang/String;

    return-void
.end method
