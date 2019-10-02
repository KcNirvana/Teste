.class public Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UISortTypeDialogView.java"


# instance fields
.field private mListener:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;

.field private mSortType:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

.field private vImg:Landroid/widget/ImageView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->NONE:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mSortType:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->NONE:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mSortType:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->NONE:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mSortType:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    return-void
.end method

.method public static synthetic lambda$initViewsEvent$66(Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mSortType:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->NONE:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mSortType:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mSortType:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setDown(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mListener:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mListener:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-interface {p1, p0, v1, v0}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;->onCallback(Landroid/view/View;ZLcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setUp(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mListener:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mListener:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    invoke-interface {p1, p0, v1, v0}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;->onCallback(Landroid/view/View;ZLcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setDown(Z)V
    .locals 1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->vImg:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_sort_descending_big:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object p1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mSortType:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    return-void
.end method

.method private setUp(Z)V
    .locals 1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->vImg:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_sort_ascending_big:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object p1, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mSortType:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_plus_sort_type:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_icon:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->vImg:Landroid/widget/ImageView;

    return-void
.end method

.method public initViewsEvent()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortTypeDialogView$KoJTWo63Dcr5OObpACVzyGmm9kQ;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortTypeDialogView$KoJTWo63Dcr5OObpACVzyGmm9kQ;-><init>(Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public resetNone()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->vImg:Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_sort_unselected_big:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->NONE:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mSortType:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    return-void
.end method

.method public setOnCallbackListener(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->mListener:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;

    return-void
.end method

.method public setSortStatus(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView$1;->$SwitchMap$com$miui$video$biz$videoplus$app$interfaces$ISortOnCallbackListener$SortType:[I

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->resetNone()V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setUp(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->setDown(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->vTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortTypeDialogView;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
