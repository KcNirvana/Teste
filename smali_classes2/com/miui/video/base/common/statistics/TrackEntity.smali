.class public Lcom/miui/video/base/common/statistics/TrackEntity;
.super Ljava/lang/Object;
.source "TrackEntity.java"


# static fields
.field private static final KEY_APPEND:Ljava/lang/String; = "append"

.field private static final KEY_EVENT:Ljava/lang/String; = "event"

.field private static final KEY_MODULE:Ljava/lang/String; = "module"

.field private static final KEY_SOURCE:Ljava/lang/String; = "source"


# instance fields
.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/common/statistics/TrackEntity;->map:Ljava/util/HashMap;

    return-void
.end method

.method public static createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/base/common/statistics/TrackEntity;

    invoke-direct {v0}, Lcom/miui/video/base/common/statistics/TrackEntity;-><init>()V

    invoke-direct {v0, p0}, Lcom/miui/video/base/common/statistics/TrackEntity;->setModule(Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/miui/video/base/common/statistics/TrackEntity;->setSource(Ljava/lang/String;)V

    invoke-direct {v0, p2}, Lcom/miui/video/base/common/statistics/TrackEntity;->setEvent(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/miui/video/base/common/statistics/TrackEntity;->map:Ljava/util/HashMap;

    return-object p0
.end method

.method private setEvent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/common/statistics/TrackEntity;->map:Ljava/util/HashMap;

    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setModule(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/common/statistics/TrackEntity;->map:Ljava/util/HashMap;

    const-string v1, "module"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSource(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/common/statistics/TrackEntity;->map:Ljava/util/HashMap;

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
