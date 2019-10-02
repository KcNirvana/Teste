.class public Lcom/miui/video/base/statistics/event/WidgetClickEvent;
.super Ljava/lang/Object;
.source "WidgetClickEvent.java"

# interfaces
.implements Lcom/miui/video/base/statistics/event/WidgetEvent;


# instance fields
.field private mAdditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lcom/miui/video/framework/uri/LinkEntity;


# direct methods
.method public constructor <init>(Lcom/miui/video/framework/uri/LinkEntity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetClickEvent;->mAdditions:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetClickEvent;->mTarget:Lcom/miui/video/framework/uri/LinkEntity;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/statistics/event/WidgetClickEvent;->mAdditions:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
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

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetClickEvent;->mAdditions:Ljava/util/List;

    return-object v0
.end method

.method public getTarget()Lcom/miui/video/framework/uri/LinkEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/WidgetClickEvent;->mTarget:Lcom/miui/video/framework/uri/LinkEntity;

    return-object v0
.end method

.method public getType()Lcom/miui/video/base/statistics/event/WidgetEvent$Type;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->CLICK:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLICK{ target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/event/WidgetClickEvent;->mTarget:Lcom/miui/video/framework/uri/LinkEntity;

    invoke-virtual {v1}, Lcom/miui/video/framework/uri/LinkEntity;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", additions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/statistics/event/WidgetClickEvent;->mAdditions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
