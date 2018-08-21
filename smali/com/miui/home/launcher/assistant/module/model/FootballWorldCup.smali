.class public Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;
.super Ljava/lang/Object;
.source "FootballWorldCup.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6ef056c40df0c107L


# instance fields
.field private base64Encode:Ljava/lang/String;

.field public games:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;",
            ">;"
        }
    .end annotation
.end field

.field public news:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/BallNews;",
            ">;"
        }
    .end annotation
.end field

.field public tip_add_team:Ljava/lang/String;

.field public tip_resume:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase64Encode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;->base64Encode:Ljava/lang/String;

    return-object v0
.end method

.method public setBase64Encode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;->base64Encode:Ljava/lang/String;

    return-void
.end method
