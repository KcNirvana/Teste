.class final Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor$setData$2;
.super Ljava/lang/Object;
.source "UICardDetailAuthor.kt"

# interfaces
.implements Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "onSubscribe"
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

.field final synthetic this$0:Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor$setData$2;->this$0:Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor$setData$2;->$tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubscribe(Z)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor$setData$2;->this$0:Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;

    sget v0, Lcom/miui/video/common/feed/R$id;->vo_action_id_subscribe_author_btn_click:I

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor$setData$2;->$tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->raiseAction(ILjava/lang/Object;)V

    return-void
.end method
