.class public Lcom/miui/home/launcher/assistant/module/carditem/BallItem;
.super Ljava/lang/Object;
.source "BallItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseItem;


# static fields
.field private static final SCHEMA_HUPU_END:Ljava/lang/String; = "?r=xiaomicard"

.field private static final SCHEMA_HUPU_GAME_PLACEHOLDER:Ljava/lang/String; = "huputiyu://%s/recap/%s"

.field private static final SCHEMA_HUPU_ING_PLACEHOLDER:Ljava/lang/String; = "huputiyu://%s/live/%s"

.field private static final SCHEMA_HUPU_NEWS_CBA:Ljava/lang/String; = "cba/cba"

.field private static final SCHEMA_HUPU_NEWS_FOOTBALL:Ljava/lang/String; = "soccerleagues/epl"

.field private static final SCHEMA_HUPU_NEWS_NBA:Ljava/lang/String; = "nba/nba"

.field private static final SCHEMA_HUPU_NEWS_PLACEHOLDER:Ljava/lang/String; = "huputiyu://%s/team/%s"

.field private static final TAG:Ljava/lang/String; = "BallItem"

.field public static final WHAT_UPDATE_NEWS_UI:I = 0x3

.field public static final WHAT_UPDATE_RECENT_UI:I = 0x1

.field public static final WHAT_UPDATE_SCORE_UI:I = 0x2

.field public static final WHAT_UPDATE_WORLD_CUP_UI:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;",
            ">;"
        }
    .end annotation
.end field

.field private mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

.field private mNewsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/BallNews;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentGameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;",
            ">;"
        }
    .end annotation
.end field

.field private mScoreResponse:Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/module/carditem/BallItem;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->parseRecentGameResponse(ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/module/carditem/BallItem;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->parseScoreResponse(ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/module/carditem/BallItem;ILjava/lang/String;Landroid/os/Handler;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->parseNewsResponse(ILjava/lang/String;Landroid/os/Handler;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/module/carditem/BallItem;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->parseWorldCupResponse(ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    return-void
.end method

.method private parseNewsResponse(ILjava/lang/String;Landroid/os/Handler;Z)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/miui/home/launcher/assistant/util/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p4, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mNewsList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mNewsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mNewsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mNewsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/assistant/module/model/BallNews;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/BallNews;->getBase64Encode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v2, Lcom/miui/home/launcher/assistant/module/model/BallNews;

    invoke-static {p2, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mNewsList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mNewsList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mNewsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mNewsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/assistant/module/model/BallNews;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/assistant/module/model/BallNews;->setBase64Encode(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v4, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private parseRecentGameResponse(ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 8

    const/4 v7, 0x1

    invoke-static {p3}, Lcom/miui/home/launcher/assistant/util/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p5, :cond_1

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mRecentGameList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mRecentGameList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mRecentGameList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mRecentGameList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;

    invoke-virtual {v5}, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->getBase64Encode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "key_football"

    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-class v5, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;

    invoke-static {p3, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->setBase64Encode(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iput-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mRecentGameList:Ljava/util/ArrayList;

    :cond_3
    :goto_1
    invoke-virtual {p4, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    iput v7, v4, Landroid/os/Message;->what:I

    iput p1, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "key_basketball"

    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-class v5, Lcom/miui/home/launcher/assistant/module/model/BasketballRecentGame;

    invoke-static {p3, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/module/model/BasketballRecentGame;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/assistant/module/model/BasketballRecentGame;->setBase64Encode(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iput-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mRecentGameList:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method private parseScoreResponse(ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 4

    const/4 v3, 0x2

    invoke-static {p3}, Lcom/miui/home/launcher/assistant/util/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p5, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mScoreResponse:Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mScoreResponse:Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;->getBase64Encode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "key_football"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v2, Lcom/miui/home/launcher/assistant/module/model/FootballScoreResponse;

    invoke-static {p3, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mScoreResponse:Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mScoreResponse:Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mScoreResponse:Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;->setBase64Encode(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p4, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v3, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "key_basketball"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v2, Lcom/miui/home/launcher/assistant/module/model/BasketballScoreResponse;

    invoke-static {p3, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mScoreResponse:Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mScoreResponse:Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mScoreResponse:Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;->setBase64Encode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private parseWorldCupResponse(ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x0

    invoke-static {p3}, Lcom/miui/home/launcher/assistant/util/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p5, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;->getBase64Encode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-class v3, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    invoke-static {p3, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    iput-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    const-string/jumbo v3, "BallItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseWorldCupResponse mFootballWorldCup = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    aput-object p3, v0, v6

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v3

    const-string/jumbo v4, "update_world_cup_data"

    invoke-virtual {v3, v0, v4, v8, v8}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;->setBase64Encode(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p2, v6}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->queryItem(Ljava/lang/String;I)Ljava/util/ArrayList;

    invoke-virtual {p4, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput v7, v2, Landroid/os/Message;->what:I

    iput p1, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateWorldCupTab(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mData:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mData:Ljava/util/ArrayList;

    :cond_0
    const-string/jumbo v3, "key_football"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    new-instance v2, Lcom/miui/home/launcher/assistant/module/FootballTeam;

    invoke-direct {v2}, Lcom/miui/home/launcher/assistant/module/FootballTeam;-><init>()V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0b0503

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/home/launcher/assistant/module/FootballTeam;->known_name:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/miui/home/launcher/assistant/module/FootballTeam;->is_world_cup_team:Z

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->isWorldCupTeam()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method


# virtual methods
.method public getBallTeamList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEmptyImageId(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "key_football"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1b0201af

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "key_basketball"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1b0201a4

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getFootballWorldCup()Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    return-object v0
.end method

.method public getHupuDetailsSchema(I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "BallItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getHupuDetailsSchema isWordlCupTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->isWordlCupTab(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isWordlCupTeam="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->isWordlCupTeam(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->isWordlCupTab(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "huputiyu://briefsport?en=worldcup&id=games"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->isWordlCupTeam(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "huputiyu://briefsport?en=worldcup&id=standing"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getScoreResponse()Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getScoreResponse()Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;->getLeagueShortName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "huputiyu://data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getScoreResponse()Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;->getLeagueShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?r=xiaomicard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHupuGameSchema(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v0, "huputiyu://%s/live/%s"

    :goto_1
    const-string/jumbo v2, "key_football"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "soccerleagues/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?r=xiaomicard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "huputiyu://%s/recap/%s"

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "key_basketball"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "1"

    invoke-static {p4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "nba/nba"

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?r=xiaomicard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "2"

    invoke-static {p4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "cba/cba"

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?r=xiaomicard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getHupuNewsSchema(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->isWordlCupTab(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "huputiyu://soccerleagues/worldcup/news"

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "key_football"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v1, "huputiyu://%s/team/%s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "soccerleagues/epl"

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?r=xiaomicard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "key_basketball"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->league_id:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v1, "huputiyu://%s/team/%s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "nba/nba"

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?r=xiaomicard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    iget-object v2, v0, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->league_id:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "huputiyu://%s/team/%s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "cba/cba"

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?r=xiaomicard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getHupuWorldCupSchema(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "huputiyu://soccerleagues/worldcup/recap/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNewsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/BallNews;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mNewsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecentGameList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mRecentGameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScoreResponse()Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mScoreResponse:Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    return-object v0
.end method

.method public getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mData:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BallItem"

    const-string/jumbo v3, "Exception"

    invoke-static {v1, v3, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0
.end method

.method public getTeamId(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTitleIconId(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "key_football"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    const v0, 0x1b0202ca

    :goto_0
    return v0

    :cond_0
    const v0, 0x1b0202c9

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "key_basketball"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_2

    const v0, 0x1b0202bf

    goto :goto_0

    :cond_2
    const v0, 0x1b0202be

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTitleId(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "key_football"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1b0b0052

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "key_basketball"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1b0b003e

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isWordlCupTab(I)Z
    .locals 2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->isWorldCupTeam()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWordlCupTeam(I)Z
    .locals 2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->isWorldCupTeam()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic queryItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->queryItem(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public queryItem(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/BallDataManager;->getInstance()Lcom/miui/home/launcher/assistant/module/BallDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/assistant/module/BallDataManager;->getFavBallTeams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mData:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->updateWorldCupTab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public updateNewsData(ILjava/lang/String;Landroid/os/Handler;Z)V
    .locals 6

    const/4 v5, 0x3

    const-string/jumbo v3, "BallItem"

    const-string/jumbo v4, "updateNewsData"

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "key_football"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;->news:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mNewsList:Ljava/util/ArrayList;

    invoke-virtual {p3, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/miui/home/launcher/assistant/request/FootballWorldNewsRequest;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/miui/home/launcher/assistant/request/FootballWorldNewsRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;

    invoke-direct {v3, p0, p1, p3, p4}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$3;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/BallItem;ILandroid/os/Handler;Z)V

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/assistant/request/FootballWorldNewsRequest;->get(Lcom/miui/home/launcher/assistant/request/core/IDataStatusChangedListener;)V

    goto :goto_0
.end method

.method public updateRecentData(ILjava/lang/String;Landroid/os/Handler;Z)V
    .locals 9

    const/4 v2, 0x1

    const-string/jumbo v0, "BallItem"

    const-string/jumbo v1, "updateRecentData"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "key_football"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;->games:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mRecentGameList:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    iput v2, v6, Landroid/os/Message;->what:I

    iput p1, v6, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v7, Lcom/miui/home/launcher/assistant/request/BallRecentRequest;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->league_id:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2, p2}, Lcom/miui/home/launcher/assistant/request/BallRecentRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$1;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/BallItem;ILjava/lang/String;Landroid/os/Handler;Z)V

    invoke-virtual {v7, v0}, Lcom/miui/home/launcher/assistant/request/BallRecentRequest;->get(Lcom/miui/home/launcher/assistant/request/core/IDataStatusChangedListener;)V

    goto :goto_0
.end method

.method public updateScoreData(ILjava/lang/String;Landroid/os/Handler;Z)V
    .locals 9

    const/4 v2, 0x2

    const-string/jumbo v0, "BallItem"

    const-string/jumbo v1, "updateScoreData"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "key_football"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mFootballWorldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mScoreResponse:Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    iput v2, v6, Landroid/os/Message;->what:I

    iput p1, v6, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v7, Lcom/miui/home/launcher/assistant/request/BallScoreRequest;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->league_id:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2, p2}, Lcom/miui/home/launcher/assistant/request/BallScoreRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/BallItem;ILjava/lang/String;Landroid/os/Handler;Z)V

    invoke-virtual {v7, v0}, Lcom/miui/home/launcher/assistant/request/BallScoreRequest;->get(Lcom/miui/home/launcher/assistant/request/core/IDataStatusChangedListener;)V

    goto :goto_0
.end method

.method public updateWorldCupData(ILjava/lang/String;Landroid/os/Handler;Z)V
    .locals 7

    const-string/jumbo v0, "BallItem"

    const-string/jumbo v1, "updateWorldCupData"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/miui/home/launcher/assistant/request/FootballWorldCupRequest;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/miui/home/launcher/assistant/request/FootballWorldCupRequest;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$4;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$4;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/BallItem;ILjava/lang/String;Landroid/os/Handler;Z)V

    invoke-virtual {v6, v0}, Lcom/miui/home/launcher/assistant/request/FootballWorldCupRequest;->get(Lcom/miui/home/launcher/assistant/request/core/IDataStatusChangedListener;)V

    return-void
.end method
