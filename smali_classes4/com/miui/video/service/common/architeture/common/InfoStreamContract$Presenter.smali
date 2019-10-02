.class public interface abstract Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;
.super Ljava/lang/Object;
.source "InfoStreamContract.kt"

# interfaces
.implements Lcom/miui/video/service/common/architeture/base/InfoStreamBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/common/architeture/common/InfoStreamContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;",
        "Lcom/miui/video/service/common/architeture/base/InfoStreamBasePresenter;",
        "load",
        "",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "loadMore",
        "refresh",
        "force",
        "",
        "video_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# virtual methods
.method public abstract load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .param p1    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .param p2    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
