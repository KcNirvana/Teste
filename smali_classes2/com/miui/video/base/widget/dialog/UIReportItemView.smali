.class public final Lcom/miui/video/base/widget/dialog/UIReportItemView;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIReportItemView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\tJF\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fJ\u001e\u0010!\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020\tR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/miui/video/base/widget/dialog/UIReportItemView;",
        "Lcom/miui/video/framework/base/ui/UIBase;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "vRadioGroup",
        "Landroid/widget/RadioGroup;",
        "vTitle",
        "Landroid/widget/TextView;",
        "vUIOkCancelBar",
        "Lcom/miui/video/common/library/widget/UIOkCancelBar;",
        "initFindViews",
        "",
        "setContentView",
        "baseUIEntity",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "leftDrawableResId",
        "setOnCancelBar",
        "leftRes",
        "leftColorRes",
        "leftBg",
        "rightRes",
        "rightColorRes",
        "rightBg",
        "leftListener",
        "Landroid/view/View$OnClickListener;",
        "rightListener",
        "setViewTitle",
        "title",
        "",
        "titleColorRes",
        "titleSize",
        "video_service_base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private vRadioGroup:Landroid/widget/RadioGroup;

.field private vTitle:Landroid/widget/TextView;

.field private vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/base/R$layout;->ui_report_item_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->inflateView(I)V

    sget v0, Lcom/miui/video/base/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/base/R$id;->v_content:I

    invoke-virtual {p0, v0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vRadioGroup:Landroid/widget/RadioGroup;

    sget v0, Lcom/miui/video/base/R$id;->ui_ok_cancel_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/UIOkCancelBar;

    iput-object v0, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    iget-object v0, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    if-eqz v0, :cond_0

    sget v1, Lcom/miui/video/base/R$color;->c_black_10:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setLineRes(I)V

    :cond_0
    return-void
.end method

.method public final setContentView(Lcom/miui/video/framework/base/ui/BaseUIEntity;I)V
    .locals 9
    .param p1    # Lcom/miui/video/framework/base/ui/BaseUIEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getKvList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getKvList()Ljava/util/List;

    move-result-object v2

    const-string v3, "baseUIEntity.kvList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getKvList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;

    new-instance v4, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/widget/RadioButton;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setId(I)V

    const/4 v5, 0x0

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/miui/video/base/R$dimen;->dp_13:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/miui/video/base/R$dimen;->dp_11:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/miui/video/base/R$dimen;->dp_13:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/miui/video/base/R$dimen;->dp_11:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/widget/RadioButton;->setPaddingRelative(IIII)V

    :cond_0
    new-instance v3, Lcom/miui/video/base/widget/dialog/UIReportItemView$setContentView$1;

    invoke-direct {v3, p1, v1}, Lcom/miui/video/base/widget/dialog/UIReportItemView$setContentView$1;-><init>(Lcom/miui/video/framework/base/ui/BaseUIEntity;I)V

    check-cast v3, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-nez v1, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    iget-object v3, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v3, :cond_2

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final setOnCancelBar(IIIIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p7    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "leftListener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightListener"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/video/base/widget/dialog/UIReportItemView$setOnCancelBar$1;

    invoke-direct {v1, p7}, Lcom/miui/video/base/widget/dialog/UIReportItemView$setOnCancelBar$1;-><init>(Landroid/view/View$OnClickListener;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    new-instance p7, Lcom/miui/video/base/widget/dialog/UIReportItemView$setOnCancelBar$2;

    invoke-direct {p7, p8}, Lcom/miui/video/base/widget/dialog/UIReportItemView$setOnCancelBar$2;-><init>(Landroid/view/View$OnClickListener;)V

    check-cast p7, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p4, v1, p7}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setViews(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setOkBackgroundDrawableRes(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p6}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setCancelBackgroundDrawableRes(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setOkColorRes(I)V

    :cond_3
    iget-object p1, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vUIOkCancelBar:Lcom/miui/video/common/library/widget/UIOkCancelBar;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p5}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->setCancelColorRes(I)V

    :cond_4
    return-void
.end method

.method public final setViewTitle(Ljava/lang/String;II)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-lez p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    if-lez p3, :cond_3

    iget-object p1, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/base/widget/dialog/UIReportItemView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    return-void

    :cond_4
    iget-object p1, p0, Lcom/miui/video/base/widget/dialog/UIReportItemView;->vTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method
