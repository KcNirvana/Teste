.class public final Lcom/miui/video/base/statistics/event/WidgetViewEvent;
.super Ljava/lang/Object;
.source "WidgetViewEvent.java"

# interfaces
.implements Lcom/miui/video/base/statistics/event/WidgetEvent;


# instance fields
.field private mEventParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

.field private mTarget:Lcom/miui/video/framework/uri/LinkEntity;


# direct methods
.method public constructor <init>(Lcom/miui/video/framework/base/ui/BaseUIEntity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mEventParameters:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mEventParameters:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of p2, p2, Lcom/miui/video/common/feed/entity/CoreEntity;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/miui/video/common/feed/entity/CoreEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/CoreEntity;->getTargetAddition()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/uri/LinkEntity;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mEventParameters:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of p2, p2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTargetAddition()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/uri/LinkEntity;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mEventParameters:Ljava/util/List;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of p2, p2, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->getTargetAddition()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/uri/LinkEntity;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mEventParameters:Ljava/util/List;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getAdditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mEventParameters:Ljava/util/List;

    return-object v0
.end method

.method public getBaseUIEntity()Lcom/miui/video/framework/base/ui/BaseUIEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    return-object v0
.end method

.method public getLastLogTime(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of v0, v0, Lcom/miui/video/common/feed/entity/CoreEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    check-cast v0, Lcom/miui/video/common/feed/entity/CoreEntity;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/entity/CoreEntity;->getLogTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of v0, v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    check-cast v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getLogTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of v0, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    check-cast v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->getLogTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTarget()Lcom/miui/video/framework/uri/LinkEntity;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of v0, v0, Lcom/miui/video/common/feed/entity/CoreEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    check-cast v0, Lcom/miui/video/common/feed/entity/CoreEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/CoreEntity;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/miui/video/framework/uri/LinkEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/CoreEntity;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/miui/video/framework/uri/LinkEntity;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mTarget:Lcom/miui/video/framework/uri/LinkEntity;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of v0, v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    check-cast v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/miui/video/framework/uri/LinkEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/miui/video/framework/uri/LinkEntity;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mTarget:Lcom/miui/video/framework/uri/LinkEntity;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of v0, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    check-cast v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/miui/video/framework/uri/LinkEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/miui/video/framework/uri/LinkEntity;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mTarget:Lcom/miui/video/framework/uri/LinkEntity;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mTarget:Lcom/miui/video/framework/uri/LinkEntity;

    return-object v0
.end method

.method public getType()Lcom/miui/video/base/statistics/event/WidgetEvent$Type;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->VIEW:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    return-object v0
.end method

.method public isShowing()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v0, :cond_0

    const-string v0, "getShowPercent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShowPercent= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {v2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getShowPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getShowPercent()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VIEW{ itemData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mEventParameters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLogTime(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of v0, v0, Lcom/miui/video/common/feed/entity/CoreEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    check-cast v0, Lcom/miui/video/common/feed/entity/CoreEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/video/common/feed/entity/CoreEntity;->setLogTime(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of v0, v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    check-cast v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setLogTime(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of v0, v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    check-cast v0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->setLogTime(Ljava/lang/String;J)V

    :cond_2
    :goto_0
    return-void
.end method
