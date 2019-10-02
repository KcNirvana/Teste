.class public final Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;
.super Lcom/miui/video/common/feed/BaseUIFactory;
.source "ChannelUiFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J.\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0015\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;",
        "Lcom/miui/video/common/feed/BaseUIFactory;",
        "listener",
        "Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;",
        "(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;)V",
        "getListener",
        "()Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;",
        "getUILayoutType",
        "",
        "type",
        "",
        "getUIRecyclerView",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "context",
        "Landroid/content/Context;",
        "layoutTypeWithOffset",
        "parent",
        "Landroid/view/ViewGroup;",
        "getUIView",
        "Lcom/miui/video/framework/base/ui/UIBase;",
        "position",
        "getViewTypeCount",
        "Companion",
        "biz_group_shortvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory$Companion;

.field public static final LAYOUT_CHANNEL:I = 0x96

.field public static final TYPE_CHANNEL:Ljava/lang/String; = "top_channel_link"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final listener:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;->Companion:Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/video/common/feed/BaseUIFactory;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;->listener:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;

    return-void
.end method


# virtual methods
.method public final getListener()Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;->listener:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;

    return-object v0
.end method

.method public getUILayoutType(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7b09d060

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "top_channel_link"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x96

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;->retriveLayoutType(I)I

    move-result p2

    const/16 v1, 0x96

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;->listener:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/ui/ChannelUiFactory;->getStyle()I

    move-result v1

    invoke-direct {p2, v0, p1, p3, v1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;-><init>(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    move-object v0, p2

    check-cast v0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    :goto_0
    return-object v0
.end method

.method public getUIView(Landroid/content/Context;IILandroid/view/ViewGroup;)Lcom/miui/video/framework/base/ui/UIBase;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
