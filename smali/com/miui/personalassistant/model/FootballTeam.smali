.class public Lcom/miui/personalassistant/model/FootballTeam;
.super Lcom/miui/personalassistant/model/BaseBallTeam;
.source "FootballTeam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "FootballTeam"

.field private static final serialVersionUID:J = -0x6efa65a2e3c39907L


# instance fields
.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public founded:Ljava/lang/String;

.field public image_110x88_url:Ljava/lang/String;

.field public image_24x24_url:Ljava/lang/String;

.field public image_87x87_url:Ljava/lang/String;

.field public is_world_cup_team:Z

.field public jpg_110x88_url:Ljava/lang/String;

.field public jpg_24x24_url:Ljava/lang/String;

.field public jpg_87x87_url:Ljava/lang/String;

.field public known_name:Ljava/lang/String;

.field public known_name_en:Ljava/lang/String;

.field public league_id:Ljava/lang/String;

.field public local_id:Ljava/lang/String;

.field public name_en:Ljava/lang/String;

.field public region_name:Ljava/lang/String;

.field public season_id:Ljava/lang/String;

.field public stadium_capacity:Ljava/lang/String;

.field public stadium_id:Ljava/lang/String;

.field public stadium_name_cn:Ljava/lang/String;

.field public stadium_name_en:Ljava/lang/String;

.field public team_id:Ljava/lang/String;

.field public worth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/model/BaseBallTeam;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FootballTeam;->team_id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageBigUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FootballTeam;->image_110x88_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImageMediumUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FootballTeam;->image_87x87_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSmallUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FootballTeam;->image_24x24_url:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/FootballTeam;->known_name:Ljava/lang/String;

    return-object v0
.end method

.method public isWorldCupTeam()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/model/FootballTeam;->is_world_cup_team:Z

    return v0
.end method
