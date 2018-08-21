.class public Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "FavoriteCardView.java"


# static fields
.field private static final FAVORITE_DETAIL:Ljava/lang/String; = "com.miui.personalassistant.favorite.DETAIL"

.field private static final FAVORITE_MAIN:Ljava/lang/String; = "com.miui.personalassistant.favorite.MAIN"

.field private static final KEY_ALL_DELETE:Ljava/lang/String; = "key_all_delete"

.field private static final KEY_FAV_AUTHORIZE:Ljava/lang/String; = "key_fav_authorize"

.field public static final KEY_FAV_AUTHORIZE_CHANGED:Ljava/lang/String; = "key_fav_authorize_changed"

.field private static final SIZE_ONE:I = 0x1

.field private static final SIZE_THREE:I = 0x3

.field private static final SIZE_TWO:I = 0x2

.field private static final SIZE_ZERO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FavoriteCardView"


# instance fields
.field private isAuthorized:Z

.field private mAuthorizeStub:Landroid/view/ViewStub;

.field private mAuthorizeView:Landroid/widget/LinearLayout;

.field private mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mCategory:Ljava/lang/String;

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDateSourceItem1:Landroid/widget/TextView;

.field private mDateSourceItem2:Landroid/widget/TextView;

.field private mDateSourceItem3:Landroid/widget/TextView;

.field private mEmptyBtn:Landroid/widget/TextView;

.field private mEmptyShow:Landroid/widget/LinearLayout;

.field private mEmptyStub:Landroid/view/ViewStub;

.field private mEmptyTip:Landroid/widget/TextView;

.field private mHeader:Landroid/widget/LinearLayout;

.field private mIconItem1:Landroid/widget/ImageView;

.field private mIconItem2:Landroid/widget/ImageView;

.field private mIconItem3:Landroid/widget/ImageView;

.field private mItem1:Landroid/widget/RelativeLayout;

.field private mItem2:Landroid/widget/RelativeLayout;

.field private mItem3:Landroid/widget/RelativeLayout;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/FavoriteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMore:Landroid/widget/TextView;

.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mRecord1:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

.field private mRecord2:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

.field private mRecord3:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

.field private mSourceBottom:I

.field private mSourceTopLarge:I

.field private mSourceTopSmall:I

.field private mTitleItem1:Landroid/widget/TextView;

.field private mTitleItem2:Landroid/widget/TextView;

.field private mTitleItem3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v3, 0x1b020167

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0c0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mSourceTopLarge:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0c011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mSourceTopSmall:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0c0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mSourceBottom:I

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)Lcom/miui/home/launcher/assistant/module/FavoriteRecord;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->startFavDetail(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mSourceTopLarge:I

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mSourceTopSmall:I

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mSourceBottom:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->doStatisItemClick(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)Lcom/miui/home/launcher/assistant/module/FavoriteRecord;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord2:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)Lcom/miui/home/launcher/assistant/module/FavoriteRecord;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord3:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->doViewAll()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->doOpenAuth()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->checkLogin()V

    return-void
.end method

.method private analysisAppOpen(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v2, "fav_app_open"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkLogin()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.personalassistant.LOGIN_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private doOpenAuth()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "key_fav_authorize_changed"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "key_fav_authorize"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->isAuthorized:Z

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->loadCardData(Z)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->openFavoriteCatcher()V

    return-void
.end method

.method private doStatisItemClick(I)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_item_click_favorite"

    const-string/jumbo v2, "13"

    const-string/jumbo v3, "FavoriteCardView"

    const-string/jumbo v4, ""

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doViewAll()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant.favorite.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "favorite_home_view"

    const-string/jumbo v2, "card_more_button"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "card_button_click_favorite"

    const-string/jumbo v3, "13"

    const-string/jumbo v4, "FavoriteCardView"

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mMore:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private goActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V
    .locals 1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/assistant/util/IntentUtil;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p4}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->analysisAppOpen(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->openDialog(Ljava/lang/String;Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V

    goto :goto_0
.end method

.method private openDialog(Ljava/lang/String;Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V
    .locals 3

    const-string/jumbo v1, "1"

    invoke-virtual {p2}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getIsPartner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "AppName"

    invoke-virtual {p2}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "PackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant.FAV_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->openWebDetail(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V

    goto :goto_0
.end method

.method private openFavoriteCatcher()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Favorite"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v1

    const-string/jumbo v2, "catcher_switch"

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openWebDetail(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant.favorite.DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Type"

    const-string/jumbo v2, "CardView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "key_url"

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private resetHeight(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setBlankCard(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mMore:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyBtn:Landroid/widget/TextView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    const v1, 0x1b090155

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b00f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyBtn:Landroid/widget/TextView;

    const v1, 0x1b0200e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyTip:Landroid/widget/TextView;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    const v1, 0x1b0900ef

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyTip:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b00f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mMore:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private startFavDetail(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V
    .locals 9

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getOriginalUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v6, v0

    if-lez v6, :cond_3

    const/4 v6, 0x0

    aget-object v4, v0, v6

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    aget-object v7, v0, v8

    invoke-direct {v6, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-direct {p0, v2, v5, v4, p1}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->goActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v6, v0

    if-ne v6, v8, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getIntentAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v2, v5, v4, p1}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->goActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4, p1}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->openDialog(Ljava/lang/String;Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->openWebDetail(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V

    goto :goto_0
.end method

.method private updateItem1(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V
    .locals 14

    const/16 v13, 0x8

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v7

    :cond_0
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mTitleItem1:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getCtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "null"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_2
    const-string/jumbo v5, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "null"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_3
    const-string/jumbo v3, ""

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " \u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem1:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem1:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getThumbnails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    array-length v8, v4

    if-lez v8, :cond_8

    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v4, v9

    const-string/jumbo v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem1:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v8, v9, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem1:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem1:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mTitleItem1:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem1:Landroid/widget/ImageView;

    invoke-direct {p0, v8, v9, v10}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->resetHeight(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void

    :cond_5
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getTimeIntervalStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_6
    move-object v3, v0

    goto :goto_1

    :cond_7
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem1:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v8, "FavoriteCardView"

    const-string/jumbo v9, "UnsupportedEncodingException"

    invoke-static {v8, v9, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem1:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem1:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateItem2(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V
    .locals 14

    const/16 v13, 0x8

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v7

    :cond_0
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mTitleItem2:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getCtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "null"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_2
    const-string/jumbo v5, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "null"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_3
    const-string/jumbo v3, ""

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " \u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem2:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem2:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getThumbnails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    array-length v8, v4

    if-lez v8, :cond_8

    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v4, v9

    const-string/jumbo v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem2:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v8, v9, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem2:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem2:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mTitleItem2:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem2:Landroid/widget/ImageView;

    invoke-direct {p0, v8, v9, v10}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->resetHeight(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void

    :cond_5
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getTimeIntervalStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_6
    move-object v3, v0

    goto :goto_1

    :cond_7
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem2:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v8, "FavoriteCardView"

    const-string/jumbo v9, "UnsupportedEncodingException"

    invoke-static {v8, v9, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem2:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem2:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateItem3(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V
    .locals 14

    const/16 v13, 0x8

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v7

    :cond_0
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mTitleItem3:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getCtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "null"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_2
    const-string/jumbo v5, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "null"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_3
    const-string/jumbo v3, ""

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " \u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem3:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem3:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->getThumbnails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    array-length v8, v4

    if-lez v8, :cond_8

    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v4, v9

    const-string/jumbo v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem3:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v8, v9, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem3:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem3:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mTitleItem3:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem3:Landroid/widget/ImageView;

    invoke-direct {p0, v8, v9, v10}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->resetHeight(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void

    :cond_5
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->getTimeIntervalStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_6
    move-object v3, v0

    goto :goto_1

    :cond_7
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem3:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v8, "FavoriteCardView"

    const-string/jumbo v9, "UnsupportedEncodingException"

    invoke-static {v8, v9, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem3:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem3:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateItemBg(Landroid/widget/RelativeLayout;)V
    .locals 2

    const v1, 0x1b020131

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const v0, 0x1b020134

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public getItemQuantity()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->isAuthorized:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public isItemAuthorized()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->isAuthorized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    const v2, 0x1b090184

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v0, 0x1b0900d6

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1b0b0089

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1b090183

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mHeader:Landroid/widget/LinearLayout;

    const v0, 0x1b0900a3

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContent:Landroid/widget/LinearLayout;

    const v0, 0x1b090113

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mMore:Landroid/widget/TextView;

    const v0, 0x1b090173

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem1:Landroid/widget/RelativeLayout;

    const v0, 0x1b090177

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem2:Landroid/widget/RelativeLayout;

    const v0, 0x1b09017b

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem3:Landroid/widget/RelativeLayout;

    const v0, 0x1b090174

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem1:Landroid/widget/ImageView;

    const v0, 0x1b090178

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem2:Landroid/widget/ImageView;

    const v0, 0x1b09017c

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mIconItem3:Landroid/widget/ImageView;

    const v0, 0x1b090175

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mTitleItem1:Landroid/widget/TextView;

    const v0, 0x1b090179

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mTitleItem2:Landroid/widget/TextView;

    const v0, 0x1b09017d

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mTitleItem3:Landroid/widget/TextView;

    const v0, 0x1b090176

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem1:Landroid/widget/TextView;

    const v0, 0x1b09017a

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem2:Landroid/widget/TextView;

    const v0, 0x1b09017e

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mDateSourceItem3:Landroid/widget/TextView;

    const v0, 0x1b090018

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyStub:Landroid/view/ViewStub;

    const v0, 0x1b09017f

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mAuthorizeStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem1:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem2:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem3:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mMore:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mMore:Landroid/widget/TextView;

    const v1, 0x1b0200e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0202c8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0202c7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public bridge synthetic queryItemData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->queryItemData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryItemData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/FavoriteRecord;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v0, "FavoriteCardView"

    const-string/jumbo v1, "queryItemData"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "key_fav_authorize_changed"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->isAuthorized:Z

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->isAuthorized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "key_all_delete"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/FavoriteItem;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/FavoriteItem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/FavoriteItem;->queryItem(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 13

    const/16 v12, 0x21

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string/jumbo v6, "FavoriteCardView"

    const-string/jumbo v7, "refreshView"

    invoke-static {v6, v7}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->isAuthorized:Z

    if-eqz v6, :cond_2

    if-eqz p1, :cond_1

    instance-of v6, p1, Ljava/util/List;

    if-eqz v6, :cond_1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mList:Ljava/util/List;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0, v10}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->setBlankCard(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0, v9}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->setBlankCard(Z)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->updateItem1(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->updateItemBg(Landroid/widget/RelativeLayout;)V

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0, v9}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->setBlankCard(Z)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mList:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord2:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->updateItem1(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord2:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->updateItem2(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->updateItemBg(Landroid/widget/RelativeLayout;)V

    goto :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0, v9}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->setBlankCard(Z)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mList:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord2:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mList:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord3:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->updateItem1(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord2:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->updateItem2(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mRecord3:Lcom/miui/home/launcher/assistant/module/FavoriteRecord;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->updateItem3(Lcom/miui/home/launcher/assistant/module/FavoriteRecord;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->updateItemBg(Landroid/widget/RelativeLayout;)V

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0, v10}, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->setBlankCard(Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mMore:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mAuthorizeStub:Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    const v7, 0x1b090158

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    const v8, 0x1b0b0089

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    const v7, 0x1b090157

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x1b020171

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    const v7, 0x1b09015a

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v6, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v6, :cond_4

    const v6, 0x1b0200e2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    const v7, 0x1b090018

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v7, 0x1b020316

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_4
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    const v7, 0x1b090159

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    const v7, 0x1b0b0039

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableString;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v9

    const-string/jumbo v7, "\n"

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    const v8, 0x1b0b012f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    const v8, 0x1b0b012f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v1, v6, 0x1

    new-instance v6, Landroid/text/style/URLSpan;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/FavoriteCardView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/miui/home/launcher/assistant/util/Util;->getGuidePrivacy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v2, v1, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v7, "#80000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v6, v2, v1, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
