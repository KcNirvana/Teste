.class public Lcom/miui/home/launcher/assistant/module/model/BasketballScore;
.super Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;
.source "BasketballScore.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6efa71188d9741e7L


# instance fields
.field public gb:Ljava/lang/String;

.field public logo_link:Ljava/lang/String;

.field public strk:Ljava/lang/String;

.field public team_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/BasketballScore;->logo_link:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/BasketballScore;->team_name:Ljava/lang/String;

    return-object v0
.end method
