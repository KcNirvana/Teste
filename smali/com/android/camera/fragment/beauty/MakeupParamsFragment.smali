.class public Lcom/android/camera/fragment/beauty/MakeupParamsFragment;
.super Landroid/support/v4/app/Fragment;
.source "MakeupParamsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-camera-effect-BeautyParameters$TypeSwitchesValues:[I


# instance fields
.field protected mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemWidth:I

.field mLastSelectedParam:I

.field private mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

.field private mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

.field private mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

.field mSelectedParam:I

.field private mTotalWidth:I


# direct methods
.method private static synthetic -getcom-android-camera-effect-BeautyParameters$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->-com-android-camera-effect-BeautyParameters$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->-com-android-camera-effect-BeautyParameters$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters$Type;->values()[Lcom/android/camera/effect/BeautyParameters$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->BLUSHER_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->CHIN_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->ENLARGE_EYE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->EYEBROW_DYE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->JELLY_LIPS_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->LIPS_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->NECK_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->NOSE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->PUPIL_LINE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->RISORIUS_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->SHRINK_FACE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->SLIM_NOSE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->SMILE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->SMOOTH_STRENGTH:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->WHITEN_STRENGTH:Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_e
    sput-object v0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->-com-android-camera-effect-BeautyParameters$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_e

    :catch_1
    move-exception v1

    goto :goto_d

    :catch_2
    move-exception v1

    goto :goto_c

    :catch_3
    move-exception v1

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_4

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto/16 :goto_2

    :catch_d
    move-exception v1

    goto/16 :goto_1

    :catch_e
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->scrollIfNeed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->notifyItemChanged(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLastSelectedParam:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 12

    const-wide/16 v10, 0x96

    const/4 v9, 0x0

    const v7, 0x90a0033

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    iput-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    new-instance v7, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;-><init>(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {v7, v9}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;->setOrientation(I)V

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->initItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->provideItemHorizontalMargin()I

    move-result v2

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x90900a9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mItemWidth:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mTotalWidth:I

    iget v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mTotalWidth:I

    iget v8, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mItemWidth:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v6, v7, 0x2

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v1

    if-lez v6, :cond_0

    move v4, v6

    :goto_0
    new-instance v7, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8, v3, v2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    new-instance v8, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$1;

    invoke-direct {v8, p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$1;-><init>(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;)V

    invoke-virtual {v7, v8}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->initSelectedItem()V

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    iget v8, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    invoke-virtual {v7, v8}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setSelectedPosition(I)V

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v10, v11}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    invoke-virtual {v0, v10, v11}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    invoke-virtual {v0, v10, v11}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    new-instance v8, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;

    invoke-direct {v8, p0, v1, v4}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;-><init>(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;ZI)V

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v7}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->notifyDataSetChanged()V

    iget v7, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    invoke-direct {p0, v7}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->setItemInCenter(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x90900ab

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0
.end method

.method private notifyItemChanged(II)V
    .locals 2

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->notifyItemChanged(I)V

    :cond_0
    if-le p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method private scrollIfNeed(I)Z
    .locals 4

    const/4 v3, 0x0

    move v0, p1

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    if-ne p1, v1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_4

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;->scrollToPosition(I)V

    const/4 v1, 0x1

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    if-ne p1, v1, :cond_1

    :cond_3
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {v2}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_4
    return v3
.end method

.method private setItemInCenter(I)V
    .locals 3

    iget v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mTotalWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mItemWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method


# virtual methods
.method protected beautyTypetoPosition(Lcom/android/camera/effect/BeautyParameters$Type;)I
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->-getcom-android-camera-effect-BeautyParameters$TypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/effect/BeautyParameters$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    return v2

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected initItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v2, 0x9020183

    const v3, 0x90f02b9

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v2, 0x9020181

    const v3, 0x90f02b8

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v2, 0x902018a

    const v3, 0x90f02b6

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v2, 0x902018c

    const v3, 0x90f02b7

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$3;-><init>(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;)V

    return-object v0
.end method

.method protected initSelectedItem()V
    .locals 1

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->getCurrentType()Lcom/android/camera/effect/BeautyParameters$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->beautyTypetoPosition(Lcom/android/camera/effect/BeautyParameters$Type;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const v1, 0x904000b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method protected provideItemHorizontalMargin()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90900ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected setSelectedItem(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setSelectedPosition(I)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method