.class public Lcom/miui/personalassistant/ui/CommonSettingActivity;
.super Lcom/miui/personalassistant/ui/BaseSettingActivity;
.source "CommonSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final SETTING_TPYE:Ljava/lang/String; = "setting_type"

.field private static final STATE_BTN_ADD:I = 0x0

.field private static final STATE_BTN_ADDED:I = 0x2

.field private static final STATE_BTN_DEFAULT:I = 0x1

.field private static final STATE_BTN_SPORT_AUTO:I = 0x3

.field private static final STATE_BTN_SPORT_INSTALL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CommonSettingActivity"

.field private static mBtnState:I


# instance fields
.field private mBackIcon:Landroid/widget/ImageView;

.field private mBriefImgId:I

.field private mBriefIv:Landroid/widget/ImageView;

.field private mBtnManage:Landroid/widget/Button;

.field private mCardKey:Ljava/lang/String;

.field private mHasDetailPage:Z

.field private mHeaderBg:Landroid/widget/LinearLayout;

.field private mIconId:I

.field private mIvIcon:Landroid/widget/ImageView;

.field private mLightBgForClock:Z

.field private mLlTitleBarContainerShade:Landroid/widget/LinearLayout;

.field private mManageDesc:Ljava/lang/String;

.field private mTitleBar:Landroid/widget/LinearLayout;

.field private mTitleBarStr:Ljava/lang/String;

.field private mTitleBarTitle:Landroid/widget/TextView;

.field private mTvManageDesc:Landroid/widget/TextView;

.field private mTvManageName:Landroid/widget/TextView;

.field private mTvRemove:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseSettingActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mLightBgForClock:Z

    return-void
.end method

.method private gotoSettingDetail()V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v2, "key_payment"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/miui/payment/utils/PaymentUtil;->startSettingsActivity(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v2, "key_stock"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/miui/personalassistant/stock/utils/StockUtils;->startStockSettingActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "setting_type"

    iget-object v2, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initData(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/personalassistant/model/SettingCardManager;->getSettingItemByKey(Ljava/lang/String;)Lcom/miui/personalassistant/model/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getTitleId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTitleBarStr:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getResContentDetailId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getDetailBriefImage()I

    move-result v1

    iput v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBriefImgId:I

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getResIconId()I

    move-result v1

    iput v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIconId:I

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->hasSettingDetailPage()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mHasDetailPage:Z

    iput-boolean p2, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mLightBgForClock:Z

    return-void

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "item null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initView()V
    .locals 6

    const v5, 0x1b0f013d

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/miui/personalassistant/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const v1, 0x1b0901ec

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTitleBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTitleBar:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v1, 0x1b0901e9

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mLlTitleBarContainerShade:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mLlTitleBarContainerShade:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mLlTitleBarContainerShade:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mLlTitleBarContainerShade:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v1, 0x1b0901ea

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/ui/CommonSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity$1;-><init>(Lcom/miui/personalassistant/ui/CommonSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1b0900ec

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x1b0901ed

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBackIcon:Landroid/widget/ImageView;

    const v1, 0x1b0901eb

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTitleBarStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTitleBarTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTitleBarStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x1b0901ee

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/ui/widget/CustomScrollView;

    invoke-virtual {v1, p0}, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->setOnScrollListener(Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;)V

    const v1, 0x1b0901e8

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->updateSetingUI()V

    const v1, 0x1b0902c1

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mHeaderBg:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mLightBgForClock:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/miui/personalassistant/util/StatusBarUtil;->darkWordBar(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTitleBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0f0067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBackIcon:Landroid/widget/ImageView;

    const/high16 v2, 0x1b020000

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mHeaderBg:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private setCardStatus(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/personalassistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->updateUI()V

    const-string/jumbo v0, "key_favorite"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p2}, Lcom/miui/personalassistant/favorite/util/FavUtil;->setStatusFromSettings(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "key_shopping"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p2}, Lcom/miui/personalassistant/shopping/util/ShoppingUtil;->setStatusFromSettings(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "key_payment"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/miui/payment/PaymentPrefs;->onPaymentCardEnabledChanged(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private updateSetingUI()V
    .locals 12

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v10, "key_step"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/miui/personalassistant/util/Steps;->supportStepsProvider()Z

    move-result v9

    if-nez v9, :cond_3

    const v9, 0x1b0201c4

    iput v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBriefImgId:I

    const v9, 0x1b0201eb

    iput v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIconId:I

    const v9, 0x1b0b0104

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v10, "key_stock"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {p0}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->getColorSchema(Landroid/content/Context;)I

    move-result v9

    if-nez v9, :cond_5

    iget v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIconId:I

    const v10, 0x1b0201f0

    if-eq v9, v10, :cond_5

    const v9, 0x1b0201f0

    iput v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIconId:I

    const v9, 0x1b0201c6

    iput v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBriefImgId:I

    :cond_1
    :goto_1
    const v9, 0x1b0902c2

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBriefIv:Landroid/widget/ImageView;

    iget v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBriefImgId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBriefIv:Landroid/widget/ImageView;

    iget v10, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBriefImgId:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBriefIv:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    const v9, 0x1b0902c6

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIvIcon:Landroid/widget/ImageView;

    iget v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIconId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIvIcon:Landroid/widget/ImageView;

    iget v10, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIconId:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIvIcon:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    const v9, 0x1b0902c7

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvManageName:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTitleBarStr:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvManageName:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTitleBarStr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvManageName:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    const v9, 0x1b0902c8

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvManageDesc:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvManageDesc:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v10, "key_express"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v10, "key_favorite"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v10, "key_shopping"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v10, "key_payment"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_2
    const v9, 0x1b0b038e

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v10, "key_favorite"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    new-instance v6, Landroid/text/SpannableString;

    if-eqz v2, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_5
    invoke-direct {v6, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_a

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v1, v9, 0x1

    :goto_6
    if-eqz v2, :cond_b

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v0, v9, 0x1

    :goto_7
    new-instance v9, Landroid/text/style/URLSpan;

    const-string/jumbo v10, "https://api.assistant.miui.com/guide/privacy"

    invoke-direct {v9, v10}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x21

    invoke-virtual {v6, v9, v1, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v10, "#cc000000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v6, v9, v1, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvManageDesc:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvManageDesc:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_8
    const v9, 0x1b0902cb

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnManage:Landroid/widget/Button;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnManage:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x1b0902ca

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->findView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvRemove:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvRemove:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    const-string/jumbo v9, "key_step_type"

    const-string/jumbo v10, ""

    invoke-static {p0, v9, v10}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "com.xiaomi.hm.health"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    const v9, 0x1b0201c4

    iput v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBriefImgId:I

    const v9, 0x1b0201eb

    iput v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIconId:I

    const v9, 0x1b0b0104

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const v9, 0x1b0201c3

    iput v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBriefImgId:I

    const v9, 0x1b0201ee

    iput v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIconId:I

    const v9, 0x1b0b0103

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    invoke-static {p0}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->getColorSchema(Landroid/content/Context;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    iget v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIconId:I

    const v10, 0x1b0201ef

    if-eq v9, v10, :cond_1

    const v9, 0x1b0201ef

    iput v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIconId:I

    const v9, 0x1b0201c5

    iput v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBriefImgId:I

    goto/16 :goto_1

    :cond_6
    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBriefIv:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mIvIcon:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_8
    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvManageName:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    :cond_a
    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    goto/16 :goto_6

    :cond_b
    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int v0, v9, v10

    goto/16 :goto_7

    :cond_c
    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v10, "key_miot_device"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    const v9, 0x1b0b0294

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v9, 0x1b0b0291

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v9, 0x1b0b0293

    invoke-virtual {p0, v9}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/text/SpannableString;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-static {v9}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int v0, v1, v9

    new-instance v9, Lcom/miui/personalassistant/ui/CommonSettingActivity$2;

    invoke-direct {v9, p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity$2;-><init>(Lcom/miui/personalassistant/ui/CommonSettingActivity;)V

    const/16 v10, 0x21

    invoke-virtual {v6, v9, v1, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v10, "#80000000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v6, v9, v1, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int v0, v1, v9

    new-instance v9, Lcom/miui/personalassistant/ui/CommonSettingActivity$3;

    invoke-direct {v9, p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity$3;-><init>(Lcom/miui/personalassistant/ui/CommonSettingActivity;)V

    const/16 v10, 0x21

    invoke-virtual {v6, v9, v1, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v10, "#80000000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v6, v9, v1, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvManageDesc:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvManageDesc:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_8

    :cond_d
    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvManageDesc:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mManageDesc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_e
    iget-object v9, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvManageDesc:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method private updateUI()V
    .locals 6

    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v4, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mTvRemove:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mHasDetailPage:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnManage:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    const-string/jumbo v2, "key_step"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/miui/personalassistant/util/Steps;->supportStepsProvider()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.xiaomi.hm.health"

    invoke-static {p0, v1}, Lcom/miui/personalassistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnManage:Landroid/widget/Button;

    const v2, 0x1b0b03f4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    const/4 v1, 0x3

    sput v1, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnState:I

    :goto_1
    const-string/jumbo v1, "key_step_type"

    const-string/jumbo v2, "com.xiaomi.hm.health"

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnManage:Landroid/widget/Button;

    const v2, 0x1b0b03f5

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    sput v3, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnState:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnManage:Landroid/widget/Button;

    const v2, 0x1b0b038b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    sput v5, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnState:I

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnManage:Landroid/widget/Button;

    const v3, 0x1b0b0389

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnManage:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnManage:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnManage:Landroid/widget/Button;

    const v3, 0x1b0b0388

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    sput v2, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnState:I

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->setCardStatus(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mBtnState:I

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mCardKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->setCardStatus(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->updateUI()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->gotoSettingDetail()V

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "com.miui.securitycenter"

    const-string/jumbo v1, "com.miui.permcenter.autostart.AutoStartManagementActivity"

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Util;->startAppByPackageNameAndClassName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "com.xiaomi.hm.health"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/Util;->openInMarket(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b0902ca
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x1b040070

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    const-string/jumbo v4, "setting_type"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hasLightBgForClock"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->initData(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->initView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "CommonSettingActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseSettingActivity;->onResume()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->updateUI()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/CommonSettingActivity;->updateSetingUI()V

    return-void
.end method

.method public onScroll(I)F
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseSettingActivity;->onScroll(I)F

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CommonSettingActivity;->mLlTitleBarContainerShade:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return v0
.end method
