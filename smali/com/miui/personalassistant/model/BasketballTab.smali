.class public Lcom/miui/personalassistant/model/BasketballTab;
.super Lcom/miui/personalassistant/model/BaseBallTab;
.source "BasketballTab.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6efa65a2e3c39962L


# instance fields
.field public teams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/BasketballTeam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/model/BaseBallTab;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectTeamNum(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/miui/personalassistant/model/BasketballTab;->teams:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/model/BasketballTab;->teams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/miui/personalassistant/model/BasketballTab;->teams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/model/BasketballTeam;

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/miui/personalassistant/model/BasketballTeam;->id:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v2, Lcom/miui/personalassistant/model/BasketballTeam;->id:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public getTeamList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/personalassistant/model/BaseBallTeam;",
            ">()",
            "Ljava/util/ArrayList;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/model/BasketballTab;->teams:Ljava/util/ArrayList;

    return-object v0
.end method
