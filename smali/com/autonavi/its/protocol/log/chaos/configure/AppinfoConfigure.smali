.class public Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;
.super Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;
.source "AppinfoConfigure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;
    }
.end annotation


# instance fields
.field private mPkgConfigers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;-><init>()V

    return-void
.end method


# virtual methods
.method public getPkgConfigers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;->mPkgConfigers:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "appinfo"

    return-object v0
.end method

.method public parser(Ljava/lang/String;)Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;->parserArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;->setPkgConfigers(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public setPkgConfigers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;->mPkgConfigers:Ljava/util/List;

    return-void
.end method
