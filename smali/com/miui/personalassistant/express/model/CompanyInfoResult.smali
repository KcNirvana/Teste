.class public Lcom/miui/personalassistant/express/model/CompanyInfoResult;
.super Lcom/miui/personalassistant/request/core/BaseResult;
.source "CompanyInfoResult.java"


# instance fields
.field public map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/request/core/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public hasData()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/model/CompanyInfoResult;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/model/CompanyInfoResult;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shallowClone()Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/express/model/CompanyInfoResult;

    invoke-direct {v0}, Lcom/miui/personalassistant/express/model/CompanyInfoResult;-><init>()V

    iget-object v1, p0, Lcom/miui/personalassistant/express/model/CompanyInfoResult;->map:Ljava/util/Map;

    iput-object v1, v0, Lcom/miui/personalassistant/express/model/CompanyInfoResult;->map:Ljava/util/Map;

    return-object v0
.end method
