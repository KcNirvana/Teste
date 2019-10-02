.class final Lcom/miui/video/common/feed/ui/card/UICardDetailAction$setData$3;
.super Ljava/lang/Object;
.source "UICardDetailAction.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
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
.field final synthetic $baseUIEntity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

.field final synthetic this$0:Lcom/miui/video/common/feed/ui/card/UICardDetailAction;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/ui/card/UICardDetailAction;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction$setData$3;->this$0:Lcom/miui/video/common/feed/ui/card/UICardDetailAction;

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction$setData$3;->$baseUIEntity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction$setData$3;->this$0:Lcom/miui/video/common/feed/ui/card/UICardDetailAction;

    sget v0, Lcom/miui/video/common/feed/R$id;->vo_action_id_share_click:I

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction$setData$3;->$baseUIEntity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    check-cast v1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->raiseAction(ILjava/lang/Object;)V

    return-void
.end method
