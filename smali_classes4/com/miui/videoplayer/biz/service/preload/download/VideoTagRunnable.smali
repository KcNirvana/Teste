.class public final Lcom/miui/videoplayer/biz/service/preload/download/VideoTagRunnable;
.super Ljava/lang/Object;
.source "VideoTagRunnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoTagRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoTagRunnable.kt\ncom/miui/videoplayer/biz/service/preload/download/VideoTagRunnable\n*L\n1#1,20:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\r\u001a\u00020\u000eH\u0016R \u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00048F@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\t\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/miui/videoplayer/biz/service/preload/download/VideoTagRunnable;",
        "Ljava/lang/Runnable;",
        "runnable",
        "tag",
        "",
        "(Ljava/lang/Runnable;J)V",
        "<set-?>",
        "priority",
        "getPriority",
        "()J",
        "getTag",
        "setTag",
        "(J)V",
        "run",
        "",
        "biz_service_preload_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private priority:J

.field private final runnable:Ljava/lang/Runnable;

.field private tag:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoTagRunnable;->runnable:Ljava/lang/Runnable;

    iput-wide p2, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoTagRunnable;->tag:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoTagRunnable;->priority:J

    return-void
.end method


# virtual methods
.method public final getPriority()J
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoTagRunnable;->tag:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTag()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoTagRunnable;->tag:J

    return-wide v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoTagRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final setTag(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/videoplayer/biz/service/preload/download/VideoTagRunnable;->tag:J

    return-void
.end method
