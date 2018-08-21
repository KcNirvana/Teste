.class public Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;
.super Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;
.source "FootballRecentGame.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6efa725e84ca7907L


# instance fields
.field public away_team:Lcom/miui/home/launcher/assistant/module/FootballTeam;

.field public game_id:Ljava/lang/String;

.field public game_status:Ljava/lang/String;

.field public home_team:Lcom/miui/home/launcher/assistant/module/FootballTeam;

.field public match_date_cn:Ljava/lang/String;

.field public youku_link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;-><init>()V

    return-void
.end method


# virtual methods
.method public getAwayTeam()Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->away_team:Lcom/miui/home/launcher/assistant/module/FootballTeam;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGameStartTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->match_date_cn:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeTeam()Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->home_team:Lcom/miui/home/launcher/assistant/module/FootballTeam;

    return-object v0
.end method

.method public isGameEnd()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->game_status:Ljava/lang/String;

    const-string/jumbo v1, "30"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isGameIng()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->game_status:Ljava/lang/String;

    const-string/jumbo v1, "32"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
