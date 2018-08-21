.class public Lcom/miui/home/launcher/assistant/module/model/BasketballRecentGame;
.super Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;
.source "BasketballRecentGame.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6efa725e84ca7907L


# instance fields
.field public away_team:Lcom/miui/home/launcher/assistant/module/BasketballTeam;

.field public china_time:Ljava/lang/String;

.field public home_team:Lcom/miui/home/launcher/assistant/module/BasketballTeam;

.field public id:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;-><init>()V

    return-void
.end method


# virtual methods
.method public getAwayTeam()Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/BasketballRecentGame;->away_team:Lcom/miui/home/launcher/assistant/module/BasketballTeam;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/BasketballRecentGame;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getGameStartTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/BasketballRecentGame;->china_time:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeTeam()Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/BasketballRecentGame;->home_team:Lcom/miui/home/launcher/assistant/module/BasketballTeam;

    return-object v0
.end method

.method public isGameEnd()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/BasketballRecentGame;->status:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isGameIng()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/BasketballRecentGame;->status:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
