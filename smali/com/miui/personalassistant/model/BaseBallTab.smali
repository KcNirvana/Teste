.class public abstract Lcom/miui/personalassistant/model/BaseBallTab;
.super Ljava/lang/Object;
.source "BaseBallTab.java"


# instance fields
.field public id:Ljava/lang/String;

.field public local_id:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSelectTeamNum(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getTeamList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/personalassistant/model/BaseBallTeam;",
            ">()",
            "Ljava/util/ArrayList;"
        }
    .end annotation
.end method

.method public isWorldCup()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/model/BaseBallTab;->id:Ljava/lang/String;

    const-string/jumbo v1, "13009"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
