.class public Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;
.super Lcom/android/camera/fragment/beauty/MakeupParamsFragment;
.source "RemodelingParamsFragment.java"


# static fields
.field private static final MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/camera/effect/BeautyParameters$Type;",
            "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/camera/effect/BeautyParameters$Type;",
            "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBeautyTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/BeautyParameters$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;Lcom/android/camera/effect/BeautyParameters$Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->onBeautyTypeSelected(Lcom/android/camera/effect/BeautyParameters$Type;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->saveSelectedPosition(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->SHRINK_FACE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x9020183

    const v4, 0x90f02b9

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->ENLARGE_EYE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x9020181

    const v4, 0x90f02b8

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->NOSE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x9020187

    const v4, 0x90f02bb

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->RISORIUS_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x9020189

    const v4, 0x90f02bc

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->LIPS_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x9020185

    const v4, 0x90f02bd

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->CHIN_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x9020180

    const v4, 0x90f02be

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->NECK_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x9020186

    const v4, 0x90f02bf

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->SMILE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x902018a

    const v4, 0x90f02c0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->SLIM_NOSE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x902018b

    const v4, 0x90f02c1

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->EYEBROW_DYE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x9020182

    const v4, 0x90f02c3

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->PUPIL_LINE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x9020188

    const v4, 0x90f02c4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->JELLY_LIPS_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x9020184

    const v4, 0x90f02c5

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->BLUSHER_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x902017f

    const v4, 0x90f02c6

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    return-void
.end method

.method private getPageNameId()I
    .locals 3

    const v1, 0x90f02b4

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private loadSelectedPosition()I
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->getPageNameId()I

    move-result v1

    const v2, 0x90f02b5

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "beauty_3d_makeup_select_item"

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_0
    const-string/jumbo v0, "beauty_3d_remodeling_select_item"

    goto :goto_0
.end method

.method private onBeautyTypeSelected(Lcom/android/camera/effect/BeautyParameters$Type;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/BeautyParameters;->setType(Lcom/android/camera/effect/BeautyParameters$Type;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected()V

    :cond_0
    return-void
.end method

.method private saveSelectedPosition(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->getPageNameId()I

    move-result v1

    const v2, 0x90f02b5

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "beauty_3d_makeup_select_item"

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void

    :cond_0
    const-string/jumbo v0, "beauty_3d_remodeling_select_item"

    goto :goto_0
.end method

.method private updateFocusBeautyItem()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mSelectedParam:I

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mSelectedParam:I

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mSelectedParam:I

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->setSelectedItem(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    iget v1, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mSelectedParam:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->onBeautyTypeSelected(Lcom/android/camera/effect/BeautyParameters$Type;)V

    return-void
.end method


# virtual methods
.method protected beautyTypetoPosition(Lcom/android/camera/effect/BeautyParameters$Type;)I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected initItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->getPageNameId()I

    move-result v3

    const v4, 0x90f02b5

    if-ne v3, v4, :cond_1

    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;

    :goto_0
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/BeautyParameters;->getAdjustableTypes()[Lcom/android/camera/effect/BeautyParameters$Type;

    move-result-object v5

    const/4 v3, 0x0

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v2, v5, v4

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;-><init>(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;)V

    return-object v0
.end method

.method protected initSelectedItem()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->loadSelectedPosition()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mSelectedParam:I

    iget v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mSelectedParam:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mSelectedParam:I

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    iput v2, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mSelectedParam:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    iget v2, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mSelectedParam:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/BeautyParameters;->setType(Lcom/android/camera/effect/BeautyParameters$Type;)V

    :cond_2
    return-void
.end method

.method protected provideItemHorizontalMargin()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90900ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90900ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->updateFocusBeautyItem()V

    :cond_0
    return-void
.end method
