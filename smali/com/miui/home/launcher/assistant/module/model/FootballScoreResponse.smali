.class public Lcom/miui/home/launcher/assistant/module/model/FootballScoreResponse;
.super Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;
.source "FootballScoreResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6efa65a2e31111e7L


# instance fields
.field public footBallLeague:Lcom/miui/home/launcher/assistant/module/model/BallLeague;

.field public scoreboardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/FootballScore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeagueName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballScoreResponse;->footBallLeague:Lcom/miui/home/launcher/assistant/module/model/BallLeague;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballScoreResponse;->footBallLeague:Lcom/miui/home/launcher/assistant/module/model/BallLeague;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/model/BallLeague;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLeagueShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballScoreResponse;->footBallLeague:Lcom/miui/home/launcher/assistant/module/model/BallLeague;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballScoreResponse;->footBallLeague:Lcom/miui/home/launcher/assistant/module/model/BallLeague;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/model/BallLeague;->short_name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getScoreList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballScoreResponse;->scoreboardList:Ljava/util/ArrayList;

    return-object v0
.end method
