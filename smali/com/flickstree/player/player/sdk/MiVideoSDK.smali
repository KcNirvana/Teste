.class public Lcom/flickstree/player/player/sdk/MiVideoSDK;
.super Ljava/lang/Object;
.source "MiVideoSDK.java"


# instance fields
.field private MY_PREFS_NAME:Ljava/lang/String;

.field private StratTimeComStop:Ljava/lang/String;

.field TAG:Ljava/lang/String;

.field private additionalInfoFinal:Ljava/lang/String;

.field private adsPlayCount:Ljava/lang/String;

.field private adsPlayed:I

.field private advertId:Ljava/lang/String;

.field private comStopCounter:J

.field contextXiaomi:Landroid/content/Context;

.field private countTask:I

.field private endTime:J

.field mContext:Landroid/content/Context;

.field private onPaused:Z

.field private pauseCounter:J

.field private pausedPrev:Ljava/lang/String;

.field private pausedTime:J

.field postViewCalled:Z

.field private seconds:I

.field private spentTime:J

.field private spentTimeFinal:Ljava/lang/String;

.field private startCount:J

.field private startTime:J

.field task:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uniqeIDStored:Ljava/lang/String;

.field private videoDuration:J

.field private videoDurationFinal:Ljava/lang/String;

.field private videoIDStored:Ljava/lang/String;

.field private videoStartPlay:Z

.field videoURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->advertId:Ljava/lang/String;

    const-string v0, "MiVideoSDK"

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v0, "Xaiomi"

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->MY_PREFS_NAME:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->videoURL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->additionalInfoFinal:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->adsPlayed:I

    iput v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->countTask:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->startTime:J

    iput-wide v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->endTime:J

    iput-wide v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->spentTime:J

    iput-wide v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->pauseCounter:J

    iput-wide v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->startCount:J

    iput-wide v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->comStopCounter:J

    iput-boolean v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->postViewCalled:Z

    iput-boolean v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->onPaused:Z

    iput-boolean v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->videoStartPlay:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->seconds:I

    new-instance v0, Lcom/flickstree/player/player/sdk/MiVideoSDK$2;

    invoke-direct {v0, p0}, Lcom/flickstree/player/player/sdk/MiVideoSDK$2;-><init>(Lcom/flickstree/player/player/sdk/MiVideoSDK;)V

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->task:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$000(Lcom/flickstree/player/player/sdk/MiVideoSDK;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->advertId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/flickstree/player/player/sdk/MiVideoSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->advertId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/flickstree/player/player/sdk/MiVideoSDK;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->MY_PREFS_NAME:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/flickstree/player/player/sdk/MiVideoSDK;I)I
    .locals 0

    iput p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->seconds:I

    return p1
.end method

.method private addUniqueID(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/flickstree/player/player/sdk/DatabaseHandler/DHUniqueId;

    invoke-direct {v0, p2}, Lcom/flickstree/player/player/sdk/DatabaseHandler/DHUniqueId;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/flickstree/player/player/sdk/DatabaseHandler/BeansUniqueID;

    invoke-direct {p2, p1}, Lcom/flickstree/player/player/sdk/DatabaseHandler/BeansUniqueID;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/flickstree/player/player/sdk/DatabaseHandler/DHUniqueId;->addContact(Lcom/flickstree/player/player/sdk/DatabaseHandler/BeansUniqueID;)V

    const-string p2, "Add_like_table"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/flickstree/player/player/sdk/DatabaseHandler/DHUniqueId;->getAllContacts()Ljava/util/List;

    move-result-object p1

    const-string p2, "All_liked"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/flickstree/player/player/sdk/DatabaseHandler/DHUniqueId;->getAllContacts()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flickstree/player/player/sdk/DatabaseHandler/BeansUniqueID;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private callPostVideoView(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->postViewCalled:Z

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->MY_PREFS_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "spentTime"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->spentTimeFinal:Ljava/lang/String;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "St_InPostview:- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->endTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "videoDuration"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->videoDurationFinal:Ljava/lang/String;

    iget-wide v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->videoDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->videoDurationFinal:Ljava/lang/String;

    const-string v0, "b7a0f6c60702f48"

    invoke-direct {p0, v0, p2}, Lcom/flickstree/player/player/sdk/MiVideoSDK;->getJSONObject(Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->additionalInfoFinal:Ljava/lang/String;

    const-string v0, "AdditionalInfoFinal"

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->additionalInfoFinal:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->contextXiaomi:Landroid/content/Context;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->MY_PREFS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2}, Lcom/flickstree/player/player/sdk/ApiClient;->buildServiceApi(Landroid/content/Context;)Lcom/flickstree/player/player/sdk/ApiEndPoints;

    move-result-object v1

    const-string v2, "1.50"

    const-string v5, "JSON"

    const-string v6, "POST_VIDEO_VIEW"

    iget-object v8, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->spentTimeFinal:Ljava/lang/String;

    iget-object v9, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->videoDurationFinal:Ljava/lang/String;

    iget-object v10, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->additionalInfoFinal:Ljava/lang/String;

    move-object v3, p3

    move-object v4, p4

    move-object v7, p1

    invoke-interface/range {v1 .. v10}, Lcom/flickstree/player/player/sdk/ApiEndPoints;->VideoPostView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/flickstree/player/player/sdk/MiVideoSDK$1;

    invoke-direct {p2, p0, v0}, Lcom/flickstree/player/player/sdk/MiVideoSDK$1;-><init>(Lcom/flickstree/player/player/sdk/MiVideoSDK;Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private getJSONObject(Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->MY_PREFS_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v1, "adsPlayCount"

    const-string v2, ""

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->adsPlayCount:Ljava/lang/String;

    const-string p2, "api-key"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pre-roll"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mid-roll"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "post-roll"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ads_played"

    iget-object p2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->adsPlayCount:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "JsonArray:- "

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultListItem.toString JSONException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v0, "seekComplete"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private videoPlayed()V
    .locals 2

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v1, "videoPlayed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private videoStopped()V
    .locals 4

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->uniqeIDStored:Ljava/lang/String;

    iget-object v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->mContext:Landroid/content/Context;

    const-string v2, "b7a0f6c60702f48"

    iget-object v3, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->advertId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/flickstree/player/player/sdk/MiVideoSDK;->callPostVideoView(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v1, "videoHasStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAdsClicked()V
    .locals 2

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v1, "adsClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAdsComplete()V
    .locals 2

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v1, "adsCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAdsPaused()V
    .locals 2

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v1, "adsPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAdsSkip()V
    .locals 2

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v1, "adsSkipped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAdsStart()V
    .locals 3

    iget v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->adsPlayed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->adsPlayed:I

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->contextXiaomi:Landroid/content/Context;

    iget-object v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->MY_PREFS_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "adsPlayCount"

    iget v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->adsPlayed:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v1, "adsplay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDuration(J)V
    .locals 2

    iput-wide p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->videoDuration:J

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->contextXiaomi:Landroid/content/Context;

    iget-object p2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->MY_PREFS_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "videoDuration"

    iget-wide v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->videoDuration:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string p2, "getDuration"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v0, "videoError"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getOnPrepared()V
    .locals 2

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v1, "videoIsPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getVideoComplete()V
    .locals 2

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v1, "videoCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getVideoStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->startTime:J

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v1, "videoStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getVideoURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "0"

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->adsPlayCount:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->pauseCounter:J

    iput-wide v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->startCount:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->seconds:I

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->contextXiaomi:Landroid/content/Context;

    iget v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->countTask:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->task:Landroid/os/AsyncTask;

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->countTask:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->countTask:I

    :cond_0
    iput-object p3, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->uniqeIDStored:Ljava/lang/String;

    iput-object p2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->videoIDStored:Ljava/lang/String;

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->adsPlayed:I

    iput-boolean v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->postViewCalled:Z

    iput-boolean v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->videoStartPlay:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://content.jwplatform.com/manifests/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->videoURL:Ljava/lang/String;

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->MY_PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "advtId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->advertId:Ljava/lang/String;

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->advertId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->videoURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/flickstree/player/player/sdk/DatabaseHandler/DHUniqueId;

    invoke-direct {v0, p1}, Lcom/flickstree/player/player/sdk/DatabaseHandler/DHUniqueId;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/flickstree/player/player/sdk/DatabaseHandler/DHUniqueId;->getAllContacts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flickstree/player/player/sdk/DatabaseHandler/BeansUniqueID;

    invoke-virtual {v2}, Lcom/flickstree/player/player/sdk/DatabaseHandler/BeansUniqueID;->getLiked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v3, "same"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v3, "different"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/flickstree/player/player/sdk/DatabaseHandler/DHUniqueId;->deleteRecords()V

    invoke-direct {p0, p2, p1}, Lcom/flickstree/player/player/sdk/MiVideoSDK;->addUniqueID(Ljava/lang/String;Landroid/content/Context;)V

    iget-boolean v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->postViewCalled:Z

    if-nez v2, :cond_1

    const-string v2, "b7a0f6c60702f48"

    iget-object v3, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->advertId:Ljava/lang/String;

    invoke-direct {p0, p3, p1, v2, v3}, Lcom/flickstree/player/player/sdk/MiVideoSDK;->callPostVideoView(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/flickstree/player/player/sdk/MiVideoSDK;->addUniqueID(Ljava/lang/String;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->videoURL:Ljava/lang/String;

    return-object p1
.end method

.method public getVideoViewed()V
    .locals 4

    iget v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->seconds:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->seconds:I

    int-to-long v0, v0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->spentTime:J

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpentTime:- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->spentTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->contextXiaomi:Landroid/content/Context;

    iget-object v1, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->MY_PREFS_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "spentTime"

    iget-wide v2, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->spentTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onSeekCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v1, "seekComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoPaused()V
    .locals 2

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/MiVideoSDK;->TAG:Ljava/lang/String;

    const-string v1, "videoPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
