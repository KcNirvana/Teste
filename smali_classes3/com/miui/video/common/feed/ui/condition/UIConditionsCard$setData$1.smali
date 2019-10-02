.class final Lcom/miui/video/common/feed/ui/condition/UIConditionsCard$setData$1;
.super Ljava/lang/Object;
.source "UIConditionsCard.kt"

# interfaces
.implements Lcom/miui/video/common/feed/ui/condition/FilterRVAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
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
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00080\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "view",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "position",
        "",
        "obj",
        "",
        "onItemClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $entity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

.field final synthetic $list:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard$setData$1;->this$0:Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard$setData$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard$setData$1;->$entity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard$setData$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard$setData$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard$setData$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "list[index]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard$setData$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "list[index]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v1, p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard$setData$1;->this$0:Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;

    sget p2, Lcom/miui/video/common/feed/R$id;->vo_action_id_filter_click:I

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard$setData$1;->$entity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/common/feed/ui/condition/UIConditionsCard;->raiseAction(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method
