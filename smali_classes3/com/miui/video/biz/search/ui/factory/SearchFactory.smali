.class public final Lcom/miui/video/biz/search/ui/factory/SearchFactory;
.super Lcom/miui/video/common/feed/BaseUIFactory;
.source "SearchFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/search/ui/factory/SearchFactory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchFactory.kt\ncom/miui/video/biz/search/ui/factory/SearchFactory\n*L\n1#1,120:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\"\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J*\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0016\u001a\u00020\tH\u0016J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\tH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/miui/video/biz/search/ui/factory/SearchFactory;",
        "Lcom/miui/video/common/feed/BaseUIFactory;",
        "()V",
        "mUIRecyclerListener",
        "Lcom/miui/video/common/feed/IUIRecyclerCreateListener;",
        "SearchFactory",
        "",
        "l",
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
        "setStyle",
        "style",
        "Companion",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/biz/search/ui/factory/SearchFactory$Companion;

.field public static final LAYOUT_SEARCH_HISTORY:I = 0x67

.field public static final LAYOUT_SEARCH_RESULT_NULL_DATA:I = 0x69

.field public static final LAYOUT_SEARCH_RESULT_TITLE:I = 0x68

.field public static final LAYOUT_SINGLE_TEXT_ITEM:I = 0x65

.field public static final LAYOUT_TAG_LIST:I = 0x66

.field public static final TYPE_SEARCH_HISTORY:Ljava/lang/String; = "search_history"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_SEARCH_RESULT_NULL_DATA:Ljava/lang/String; = "result_not_found"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_SEARCH_RESULT_TITLE:Ljava/lang/String; = "title_link"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_SINGLE_TEXT_ITEM:Ljava/lang/String; = "single_text_item"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_TAG_LIST:Ljava/lang/String; = "row_tag_list"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UI_VIEW_LANGUAGE_TAG:I = 0x62

.field private static UI_VIEW_TYPE:[I = null

.field public static final UI_VIEW_TYPE_IMAGE:I = 0x63

.field public static final UI_VIEW_TYPE_TAG:I = 0x64


# instance fields
.field private mUIRecyclerListener:Lcom/miui/video/common/feed/IUIRecyclerCreateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/search/ui/factory/SearchFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/search/ui/factory/SearchFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->Companion:Lcom/miui/video/biz/search/ui/factory/SearchFactory$Companion;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->UI_VIEW_TYPE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x63
        0x64
        0x62
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/feed/BaseUIFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final SearchFactory(Lcom/miui/video/common/feed/IUIRecyclerCreateListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/common/feed/IUIRecyclerCreateListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->mUIRecyclerListener:Lcom/miui/video/common/feed/IUIRecyclerCreateListener;

    return-void
.end method

.method public getUILayoutType(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "single_text_item"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string v0, "row_tag_list"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const-string v0, "search_history"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x67

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    goto :goto_0

    :cond_2
    const-string v0, "title_link"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x68

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    goto :goto_0

    :cond_3
    const-string v0, "result_not_found"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x69

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->retriveLayoutType(I)I

    move-result v0

    const/4 v1, 0x0

    check-cast v1, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    iget-object v2, p0, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->mUIRecyclerListener:Lcom/miui/video/common/feed/IUIRecyclerCreateListener;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->mUIRecyclerListener:Lcom/miui/video/common/feed/IUIRecyclerCreateListener;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->getStyle()I

    move-result v2

    invoke-interface {v1, p1, v0, p3, v2}, Lcom/miui/video/common/feed/IUIRecyclerCreateListener;->onCreateUI(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/common/feed/BaseUIFactory;->getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    move-result-object p1

    move-object v1, p1

    goto :goto_1

    :pswitch_0
    new-instance p2, Lcom/miui/video/biz/search/ui/card/UICardNullResult;

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->getStyle()I

    move-result v0

    invoke-direct {p2, p1, p3, v0}, Lcom/miui/video/biz/search/ui/card/UICardNullResult;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    check-cast p2, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    goto :goto_0

    :pswitch_1
    new-instance p2, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->getStyle()I

    move-result v0

    invoke-direct {p2, p1, p3, v0}, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    check-cast p2, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    goto :goto_0

    :pswitch_2
    new-instance p2, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->getStyle()I

    move-result v0

    invoke-direct {p2, p1, p3, v0}, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    check-cast p2, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    goto :goto_0

    :pswitch_3
    new-instance p2, Lcom/miui/video/biz/search/ui/card/UICardHotWords;

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->getStyle()I

    move-result v0

    invoke-direct {p2, p1, p3, v0}, Lcom/miui/video/biz/search/ui/card/UICardHotWords;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    check-cast p2, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    goto :goto_0

    :pswitch_4
    new-instance p2, Lcom/miui/video/biz/search/ui/card/UICardSingleTextItem;

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->getStyle()I

    move-result v0

    invoke-direct {p2, p1, p3, v0}, Lcom/miui/video/biz/search/ui/card/UICardSingleTextItem;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    check-cast p2, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    :goto_0
    move-object v1, p2

    :cond_2
    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUIView(Landroid/content/Context;IILandroid/view/ViewGroup;)Lcom/miui/video/framework/base/ui/UIBase;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parent"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    check-cast p3, Lcom/miui/video/framework/base/ui/UIBase;

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->retriveLayoutType(I)I

    move-result p2

    const/16 p3, 0x63

    if-ne p3, p2, :cond_0

    new-instance p2, Lcom/miui/video/common/feed/ui/card/UITinyImage;

    invoke-direct {p2, p1}, Lcom/miui/video/common/feed/ui/card/UITinyImage;-><init>(Landroid/content/Context;)V

    check-cast p2, Lcom/miui/video/framework/base/ui/UIBase;

    goto :goto_0

    :cond_0
    const/16 p3, 0x62

    if-ne p3, p2, :cond_1

    new-instance p2, Lcom/miui/video/biz/search/ui/UILanguageTag;

    invoke-direct {p2, p1}, Lcom/miui/video/biz/search/ui/UILanguageTag;-><init>(Landroid/content/Context;)V

    check-cast p2, Lcom/miui/video/framework/base/ui/UIBase;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/miui/video/biz/search/ui/UITag;

    invoke-direct {p2, p1}, Lcom/miui/video/biz/search/ui/UITag;-><init>(Landroid/content/Context;)V

    check-cast p2, Lcom/miui/video/framework/base/ui/UIBase;

    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    sget-object v0, Lcom/miui/video/biz/search/ui/factory/SearchFactory;->UI_VIEW_TYPE:[I

    array-length v0, v0

    return v0
.end method

.method public setStyle(I)V
    .locals 0

    return-void
.end method
