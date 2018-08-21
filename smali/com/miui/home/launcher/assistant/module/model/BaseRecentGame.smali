.class public abstract Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;
.super Ljava/lang/Object;
.source "BaseRecentGame.java"


# instance fields
.field public away_score:Ljava/lang/String;

.field private base64Encode:Ljava/lang/String;

.field public home_score:Ljava/lang/String;

.field public league:Lcom/miui/home/launcher/assistant/module/model/BallLeague;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAwayTeam()Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;
.end method

.method public getBase64Encode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->base64Encode:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getGameId()Ljava/lang/String;
.end method

.method public abstract getGameStartTime()Ljava/lang/String;
.end method

.method public abstract getHomeTeam()Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;
.end method

.method public abstract isGameEnd()Z
.end method

.method public abstract isGameIng()Z
.end method

.method public setBase64Encode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->base64Encode:Ljava/lang/String;

    return-void
.end method
