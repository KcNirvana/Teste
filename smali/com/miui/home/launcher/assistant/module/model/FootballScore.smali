.class public Lcom/miui/home/launcher/assistant/module/model/FootballScore;
.super Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;
.source "FootballScore.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6efa71188d9741e7L


# instance fields
.field public draw:Ljava/lang/String;

.field public hits:Ljava/lang/String;

.field public image_110x88_url:Ljava/lang/String;

.field public known_name_zh:Ljava/lang/String;

.field public miss:Ljava/lang/String;

.field public played:Ljava/lang/String;

.field public score:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballScore;->image_110x88_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballScore;->known_name_zh:Ljava/lang/String;

    return-object v0
.end method
