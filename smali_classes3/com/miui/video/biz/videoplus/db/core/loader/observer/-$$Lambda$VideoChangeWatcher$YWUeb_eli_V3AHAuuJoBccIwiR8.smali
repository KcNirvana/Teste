.class public final synthetic Lcom/miui/video/biz/videoplus/db/core/loader/observer/-$$Lambda$VideoChangeWatcher$YWUeb_eli_V3AHAuuJoBccIwiR8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/-$$Lambda$VideoChangeWatcher$YWUeb_eli_V3AHAuuJoBccIwiR8;->f$0:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/-$$Lambda$VideoChangeWatcher$YWUeb_eli_V3AHAuuJoBccIwiR8;->f$0:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->lambda$batchAdd$2(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    return-void
.end method
