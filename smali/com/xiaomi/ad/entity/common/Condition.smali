.class public Lcom/xiaomi/ad/entity/common/Condition;
.super Lcom/xiaomi/ad/entity/contract/GsonEntityBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/entity/common/Condition$ValueRange;,
        Lcom/xiaomi/ad/entity/common/Condition$UserState;,
        Lcom/xiaomi/ad/entity/common/Condition$DeviceState;,
        Lcom/xiaomi/ad/entity/common/Condition$PackageState;,
        Lcom/xiaomi/ad/entity/common/Condition$TimeRange;,
        Lcom/xiaomi/ad/entity/common/Condition$Slot;
    }
.end annotation


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "Condition"


# instance fields
.field private deviceState:Lcom/xiaomi/ad/entity/common/Condition$DeviceState;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "deviceStat"
    .end annotation
.end field

.field private interval:J
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private isOffLine:Z
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private location:Lcom/xiaomi/ad/entity/common/Condition$Slot;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private locations:Ljava/util/List;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/entity/common/Condition$Slot;",
            ">;"
        }
    .end annotation
.end field

.field private packageStates:Ljava/util/List;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "packageStats"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/entity/common/Condition$PackageState;",
            ">;"
        }
    .end annotation
.end field

.field private timeLimit:J
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private timeRange:Lcom/xiaomi/ad/entity/common/Condition$TimeRange;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private userState:Lcom/xiaomi/ad/entity/common/Condition$UserState;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "userStat"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/xiaomi/ad/entity/common/Condition;
    .locals 2

    const-class v0, Lcom/xiaomi/ad/entity/common/Condition;

    const-string v1, "Condition"

    invoke-static {v0, p0, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/entity/common/Condition;

    return-object v0
.end method

.method public static parse(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/entity/common/Condition;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/ad/entity/common/Condition;->deserialize(Ljava/lang/String;)Lcom/xiaomi/ad/entity/common/Condition;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Condition"

    const-string v3, "condition paser:"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/ad/internal/common/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getDeviceState()Lcom/xiaomi/ad/entity/common/Condition$DeviceState;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->deviceState:Lcom/xiaomi/ad/entity/common/Condition$DeviceState;

    return-object v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->interval:J

    return-wide v0
.end method

.method public getLocation()Lcom/xiaomi/ad/entity/common/Condition$Slot;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->location:Lcom/xiaomi/ad/entity/common/Condition$Slot;

    return-object v0
.end method

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/entity/common/Condition$Slot;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->locations:Ljava/util/List;

    return-object v0
.end method

.method public getPackageStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/entity/common/Condition$PackageState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->packageStates:Ljava/util/List;

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Condition"

    return-object v0
.end method

.method public getTimeLimit()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->timeLimit:J

    return-wide v0
.end method

.method public getTimeRange()Lcom/xiaomi/ad/entity/common/Condition$TimeRange;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->timeRange:Lcom/xiaomi/ad/entity/common/Condition$TimeRange;

    return-object v0
.end method

.method public getUserState()Lcom/xiaomi/ad/entity/common/Condition$UserState;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->userState:Lcom/xiaomi/ad/entity/common/Condition$UserState;

    return-object v0
.end method

.method public hasDeviceStates()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->deviceState:Lcom/xiaomi/ad/entity/common/Condition$DeviceState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->location:Lcom/xiaomi/ad/entity/common/Condition$Slot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocations()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->locations:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public hasOnlyTimeRange()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/ad/entity/common/Condition;->hasLocations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/ad/entity/common/Condition;->hasPackageStates()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/ad/entity/common/Condition;->hasDeviceStates()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/ad/entity/common/Condition;->hasUserState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackageStates()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->packageStates:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public hasTimeRange()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->timeRange:Lcom/xiaomi/ad/entity/common/Condition$TimeRange;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserState()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->userState:Lcom/xiaomi/ad/entity/common/Condition$UserState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->isOffLine:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->location:Lcom/xiaomi/ad/entity/common/Condition$Slot;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition;->timeRange:Lcom/xiaomi/ad/entity/common/Condition$TimeRange;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
