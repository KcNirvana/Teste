.class public final Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$2;
.super Ljava/lang/Object;
.source "UIConditions.kt"

# interfaces
.implements Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/feed/ui/condition/UIConditions;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUIConditions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIConditions.kt\ncom/miui/video/common/feed/ui/condition/UIConditions$setData$2\n*L\n1#1,105:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/miui/video/common/feed/ui/condition/UIConditions$setData$2",
        "Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "selectItemView",
        "Landroid/view/View;",
        "select",
        "",
        "preSelect",
        "common_feed_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $entity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

.field final synthetic $list:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/miui/video/common/feed/ui/condition/UIConditions;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/ui/condition/UIConditions;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$2;->this$0:Lcom/miui/video/common/feed/ui/condition/UIConditions;

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$2;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$2;->$entity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;II)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$2;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    if-ltz p3, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$2;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "list[preSelect]"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$2;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "list[select]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$2;->this$0:Lcom/miui/video/common/feed/ui/condition/UIConditions;

    sget p2, Lcom/miui/video/common/feed/R$id;->vo_action_id_filter_click:I

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$2;->$entity:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/common/feed/ui/condition/UIConditions;->raiseAction(ILjava/lang/Object;)V

    return-void
.end method
