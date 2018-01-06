.class public Lcom/xiaomi/ad/entity/common/Condition$DeviceState;
.super Lcom/xiaomi/ad/entity/contract/GsonEntityBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/entity/common/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceState"
.end annotation


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "DeviceState"


# instance fields
.field private bluetooths:Ljava/util/List;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "bluetooth"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private brightness:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private clockVolume:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private isCharging:Z
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private mediaVolume:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private power:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private sysVolume:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBluetooths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$DeviceState;->bluetooths:Ljava/util/List;

    return-object v0
.end method

.method public getBrightness()Lcom/xiaomi/ad/entity/common/Condition$ValueRange;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$DeviceState;->brightness:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;

    return-object v0
.end method

.method public getClockVolume()Lcom/xiaomi/ad/entity/common/Condition$ValueRange;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$DeviceState;->clockVolume:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;

    return-object v0
.end method

.method public getMediaVolume()Lcom/xiaomi/ad/entity/common/Condition$ValueRange;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$DeviceState;->mediaVolume:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;

    return-object v0
.end method

.method public getPower()Lcom/xiaomi/ad/entity/common/Condition$ValueRange;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$DeviceState;->power:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;

    return-object v0
.end method

.method public getSysVolume()Lcom/xiaomi/ad/entity/common/Condition$ValueRange;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$DeviceState;->sysVolume:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DeviceState"

    return-object v0
.end method

.method public hasBluetooths()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$DeviceState;->bluetooths:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public hasBrightness()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$DeviceState;->brightness:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClockVolume()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$DeviceState;->clockVolume:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMediaVolume()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$DeviceState;->mediaVolume:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPower()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$DeviceState;->power:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSysVolume()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$DeviceState;->sysVolume:Lcom/xiaomi/ad/entity/common/Condition$ValueRange;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCharging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/ad/entity/common/Condition$DeviceState;->isCharging:Z

    return v0
.end method
