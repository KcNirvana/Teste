.class public Lcom/miui/personalassistant/model/BasketballTeam;
.super Lcom/miui/personalassistant/model/BaseBallTeam;
.source "BasketballTeam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6efa65a2cf240e87L


# instance fields
.field public bbr:Ljava/lang/String;

.field public chief_coach:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public conference:Ljava/lang/String;

.field public eng_division:Ljava/lang/String;

.field public eng_full_name:Ljava/lang/String;

.field public eng_name:Ljava/lang/String;

.field public fid:Ljava/lang/String;

.field public found_year:Ljava/lang/String;

.field public full_name:Ljava/lang/String;

.field public home:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public intro:Ljava/lang/String;

.field public league_id:Ljava/lang/String;

.field public logo:Ljava/lang/String;

.field public logo_link:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public players:Ljava/lang/String;

.field public stoped:Ljava/lang/String;

.field public tagid:Ljava/lang/String;

.field public team_link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/model/BaseBallTeam;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/BasketballTeam;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageBigUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/BasketballTeam;->logo_link:Ljava/lang/String;

    return-object v0
.end method

.method public getImageMediumUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/BasketballTeam;->logo_link:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSmallUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/BasketballTeam;->logo_link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/BasketballTeam;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isWorldCupTeam()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
