.class public abstract Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;
.super Ljava/lang/Object;
.source "BaseBallScore.java"


# instance fields
.field public league_id:Ljava/lang/String;

.field public lost:Ljava/lang/String;

.field public rank_index:I

.field public team_id:Ljava/lang/String;

.field public win:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLogoUrl()Ljava/lang/String;
.end method

.method public abstract getTeamName()Ljava/lang/String;
.end method
