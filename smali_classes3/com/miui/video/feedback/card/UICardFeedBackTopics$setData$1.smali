.class final Lcom/miui/video/feedback/card/UICardFeedBackTopics$setData$1;
.super Ljava/lang/Object;
.source "UICardFeedBackTopics.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/feedback/card/UICardFeedBackTopics;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

.field final synthetic this$0:Lcom/miui/video/feedback/card/UICardFeedBackTopics;


# direct methods
.method constructor <init>(Lcom/miui/video/feedback/card/UICardFeedBackTopics;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics$setData$1;->this$0:Lcom/miui/video/feedback/card/UICardFeedBackTopics;

    iput-object p2, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics$setData$1;->$tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics$setData$1;->$tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v0, "tinyCardEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setRedPoint(I)V

    iget-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics$setData$1;->this$0:Lcom/miui/video/feedback/card/UICardFeedBackTopics;

    invoke-static {p1}, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->access$getVRedPoint$p(Lcom/miui/video/feedback/card/UICardFeedBackTopics;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string p1, "intent_title"

    iget-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics$setData$1;->$tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v1, "tinyCardEntity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "intent_type"

    iget-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics$setData$1;->$tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v1, "tinyCardEntity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    iget-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics$setData$1;->this$0:Lcom/miui/video/feedback/card/UICardFeedBackTopics;

    invoke-static {p1}, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->access$getVContainer$p(Lcom/miui/video/feedback/card/UICardFeedBackTopics;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics$setData$1;->$tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v0, "tinyCardEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    return-void
.end method
