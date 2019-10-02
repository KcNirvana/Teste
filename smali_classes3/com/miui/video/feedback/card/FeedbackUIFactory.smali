.class public final Lcom/miui/video/feedback/card/FeedbackUIFactory;
.super Lcom/miui/video/common/feed/BaseUIFactory;
.source "FeedbackUIFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/feedback/card/FeedbackUIFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003H\u0016J&\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J.\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u0014\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/miui/video/feedback/card/FeedbackUIFactory;",
        "Lcom/miui/video/common/feed/BaseUIFactory;",
        "itemType",
        "",
        "(Ljava/lang/String;)V",
        "getItemType",
        "()Ljava/lang/String;",
        "getUILayoutType",
        "",
        "type",
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
        "biz_feedback_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/feedback/card/FeedbackUIFactory$Companion;

.field public static final LAYOUT_FEEDBACK_DETAIL_TEXT:I = 0x8c

.field public static final LAYOUT_FEEDBACK_TOPICS:I = 0x8e

.field public static final TYPE_FEEDBACK_DETAIL_TEXT:Ljava/lang/String; = "user_feedback_text"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_FEEDBACK_TOPICS:Ljava/lang/String; = "feedback_topic"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final itemType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/feedback/card/FeedbackUIFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/feedback/card/FeedbackUIFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/feedback/card/FeedbackUIFactory;->Companion:Lcom/miui/video/feedback/card/FeedbackUIFactory$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/video/common/feed/BaseUIFactory;-><init>()V

    iput-object p1, p0, Lcom/miui/video/feedback/card/FeedbackUIFactory;->itemType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getItemType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/feedback/card/FeedbackUIFactory;->itemType:Ljava/lang/String;

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

    const v1, -0x12765c0b

    if-eq v0, v1, :cond_2

    const v1, 0x72553c33

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "user_feedback_text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x8c

    invoke-virtual {p0, p1}, Lcom/miui/video/feedback/card/FeedbackUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    goto :goto_1

    :cond_2
    const-string v0, "feedback_topic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x8e

    invoke-virtual {p0, p1}, Lcom/miui/video/feedback/card/FeedbackUIFactory;->getLayoutTypeWithOffset(I)I

    move-result p1

    goto :goto_1

    :cond_3
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

    invoke-virtual {p0, p2}, Lcom/miui/video/feedback/card/FeedbackUIFactory;->retriveLayoutType(I)I

    move-result p2

    const/16 v1, 0x8c

    if-eq p2, v1, :cond_1

    const/16 v1, 0x8e

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/miui/video/feedback/card/UICardFeedBackTopics;

    invoke-virtual {p0}, Lcom/miui/video/feedback/card/FeedbackUIFactory;->getStyle()I

    move-result v0

    invoke-direct {p2, p1, p3, v0}, Lcom/miui/video/feedback/card/UICardFeedBackTopics;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    move-object v0, p2

    check-cast v0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/miui/video/feedback/card/UICardFeedBackDetail;

    iget-object v0, p0, Lcom/miui/video/feedback/card/FeedbackUIFactory;->itemType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/feedback/card/FeedbackUIFactory;->getStyle()I

    move-result v1

    invoke-direct {p2, v0, p1, p3, v1}, Lcom/miui/video/feedback/card/UICardFeedBackDetail;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;I)V

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
