.class public abstract Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;
.super Ljava/lang/Object;
.source "BaseBallTeam.java"


# instance fields
.field public league_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImageBigUrl()Ljava/lang/String;
.end method

.method public abstract getImageMediumUrl()Ljava/lang/String;
.end method

.method public abstract getImageSmallUrl()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isWorldCupTeam()Z
.end method
