.class public final Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$Companion;
.super Ljava/lang/Object;
.source "ShortChannelFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;",
        "entity",
        "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
        "biz_group_shortvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;
    .locals 4
    .param p1    # Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    invoke-direct {v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "intent_entity"

    move-object v3, p1

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->isNew()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    sget p1, Lcom/miui/video/biz/shortvideo/R$drawable;->ic_channel_new_point:I

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->setTitleIconId(I)V

    :cond_1
    :goto_0
    return-object v0
.end method
