.class public Lcom/miui/personalassistant/express/bean/QuerySingleResponse;
.super Ljava/lang/Object;
.source "QuerySingleResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;,
        Lcom/miui/personalassistant/express/bean/QuerySingleResponse$MatchCompany;
    }
.end annotation


# instance fields
.field public info:Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;

.field public matchCompany:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/QuerySingleResponse$MatchCompany;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->info:Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;

    return-object v0
.end method

.method public getMatchCompany()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/QuerySingleResponse$MatchCompany;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->matchCompany:Ljava/util/List;

    return-object v0
.end method

.method public setInfo(Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->info:Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;

    return-void
.end method

.method public setMatchCompany(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/QuerySingleResponse$MatchCompany;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->matchCompany:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "QuerySingleResponse{matchCompany="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->matchCompany:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse;->info:Lcom/miui/personalassistant/express/bean/QuerySingleResponse$Info;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
