.class public interface abstract Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;
.super Ljava/lang/Object;
.source "UICardChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnEditChannelListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;",
        "",
        "onAddFavor",
        "",
        "v",
        "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
        "onFavorClicked",
        "position",
        "",
        "onRemoveFavor",
        "biz_group_shortvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# virtual methods
.method public abstract onAddFavor(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)V
    .param p1    # Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onFavorClicked(I)V
.end method

.method public abstract onRemoveFavor(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)V
    .param p1    # Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
