.class public Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "ShoppingCardView.java"


# static fields
.field private static final KEY_ALL_DELETE_SHOPPING:Ljava/lang/String; = "key_all_delete_shopping"

.field private static final KEY_FIRST:Ljava/lang/String; = "key_first"

.field private static final KEY_SHOPPING_AUTHORIZE:Ljava/lang/String; = "key_shopping_authorize"

.field private static final KEY_SHOPPING_AUTHORIZE_CHANGED:Ljava/lang/String; = "key_shopping_authorize_changed"

.field private static final SHOPPING_DETAIL:Ljava/lang/String; = "com.miui.personalassistant.SHOPPING_DETAIL"

.field private static final SHOPPING_MAIN:Ljava/lang/String; = "com.miui.personalassistant.SHOPPING"

.field private static final SIZE_ONE:I = 0x1

.field private static final SIZE_THREE:I = 0x3

.field private static final SIZE_TWO:I = 0x2

.field private static final SIZE_ZERO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShoppingCardView"

.field private static final UPDATE_INTERVAL:J = 0xea60L

.field private static volatile sCurrTime:J

.field private static volatile sFirst:Z


# instance fields
.field private isAuthorized:Z

.field private mAppName1:Landroid/widget/TextView;

.field private mAppName2:Landroid/widget/TextView;

.field private mAppName3:Landroid/widget/TextView;

.field private mAuthorizeStub:Landroid/view/ViewStub;

.field private mAuthorizeView:Landroid/widget/LinearLayout;

.field private mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

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
            "Lcom/miui/home/launcher/assistant/module/model/Shopping;",
            ">;"
        }
    .end annotation
.end field

.field private mMore:Landroid/widget/TextView;

.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mPrice1:Landroid/widget/TextView;

.field private mPrice2:Landroid/widget/TextView;

.field private mPrice3:Landroid/widget/TextView;

.field private mRecord1:Lcom/miui/home/launcher/assistant/module/model/Shopping;

.field private mRecord2:Lcom/miui/home/launcher/assistant/module/model/Shopping;

.field private mRecord3:Lcom/miui/home/launcher/assistant/module/model/Shopping;

.field private mSourceStr:Ljava/lang/String;

.field private mSubTitle1:Landroid/widget/RelativeLayout;

.field private mSubTitle2:Landroid/widget/RelativeLayout;

.field private mSubTitle3:Landroid/widget/RelativeLayout;

.field private mTitleItem1:Landroid/widget/TextView;

.field private mTitleItem2:Landroid/widget/TextView;

.field private mTitleItem3:Landroid/widget/TextView;

.field private mTotalNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->sFirst:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->sCurrTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v3, 0x1b020167

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b03d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mSourceStr:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    sget-wide v0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->sCurrTime:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0

    sput-wide p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->sCurrTime:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mTotalNum:I

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->doStatisItemClick(I)V

    return-void
.end method

.method static synthetic access$110(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)I
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mTotalNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mTotalNum:I

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Lcom/miui/home/launcher/assistant/module/model/Shopping;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord2:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Lcom/miui/home/launcher/assistant/module/model/Shopping;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord3:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->doViewAll()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->doOpenAuth()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->isMiShop(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->getProductIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->parsePrice(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->saveData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Lcom/miui/home/launcher/assistant/module/model/Shopping;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;Lcom/miui/home/launcher/assistant/module/model/Shopping;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->startFavDetail(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    return-void
.end method

.method private analysisAppOpen(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v2, "shopping_app_open"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doOpenAuth()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "key_shopping_authorize_changed"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "key_shopping_authorize"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->isAuthorized:Z

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->loadCardData(Z)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->openShoppingCatcher()V

    return-void
.end method

.method private doStatisItemClick(I)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_item_click_shopping"

    const-string/jumbo v2, "20"

    const-string/jumbo v3, "ShoppingCardView"

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

    const-string/jumbo v1, "com.miui.personalassistant.SHOPPING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "shopping_home_view"

    const-string/jumbo v2, "card_more_button"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "card_button_click_shopping"

    const-string/jumbo v3, "20"

    const-string/jumbo v4, "ShoppingCardView"

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mMore:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getProductIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v3, "\\?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    aget-object v3, v0, v4

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v0, v3

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ShoppingCardView"

    const-string/jumbo v4, "StringIndexOutOfBoundsException"

    invoke-static {v3, v4, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private goActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/assistant/module/model/Shopping;)V
    .locals 1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/assistant/util/IntentUtil;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p4}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->analysisAppOpen(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p4}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->openWebDetail(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    goto :goto_0
.end method

.method private isMiShop(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.xiaomi.shop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private openShoppingCatcher()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Shopping"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v1

    const-string/jumbo v2, "catcher_switch"

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openWebDetail(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant.SHOPPING_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Type"

    const-string/jumbo v2, "CardView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "key_url"

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "key_title"

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private parsePrice(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string/jumbo v6, "ShoppingCardView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isMiShop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",response price result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo v6, "productPrice"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    invoke-virtual {v4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string/jumbo v6, "price"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const-string/jumbo v6, "price"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "ShoppingCardView"

    const-string/jumbo v7, "JSONException"

    invoke-static {v6, v7, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private reqCurrPrice(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/Shopping;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v1

    const-string/jumbo v2, "shoppingUpdate"

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBlankCard(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mMore:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyBtn:Landroid/widget/TextView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    const v1, 0x1b090155

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b03bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyBtn:Landroid/widget/TextView;

    const v1, 0x1b0200e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyTip:Landroid/widget/TextView;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    const v1, 0x1b0900ef

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyTip:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b03c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mMore:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private startFavDetail(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V
    .locals 9

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getOriginalUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getComponentName()Ljava/lang/String;

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

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

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

    invoke-direct {p0, v2, v5, v4, p1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->goActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v6, v0

    if-ne v6, v8, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getIntentAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v2, v5, v4, p1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->goActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->openWebDetail(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->openWebDetail(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    goto :goto_0
.end method

.method private updateItem1(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mTitleItem1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAppName1:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mSourceStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mPrice1:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getThumbnails()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    aget-object v4, v2, v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mIconItem1:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mPrice1:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "ShoppingCardView"

    const-string/jumbo v5, "UnsupportedEncodingException"

    invoke-static {v4, v5, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mIconItem1:Landroid/widget/ImageView;

    const v5, 0x1b020167

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private updateItem2(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mTitleItem2:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAppName2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mSourceStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mPrice2:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getThumbnails()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    aget-object v4, v2, v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mIconItem2:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mPrice2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "ShoppingCardView"

    const-string/jumbo v5, "UnsupportedEncodingException"

    invoke-static {v4, v5, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mIconItem2:Landroid/widget/ImageView;

    const v5, 0x1b020167

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private updateItem3(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mTitleItem3:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAppName3:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mSourceStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mPrice3:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Shopping;->getThumbnails()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    aget-object v4, v2, v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mIconItem3:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mPrice3:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "ShoppingCardView"

    const-string/jumbo v5, "UnsupportedEncodingException"

    invoke-static {v4, v5, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mIconItem3:Landroid/widget/ImageView;

    const v5, 0x1b020167

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private updateItemBg(Landroid/widget/RelativeLayout;)V
    .locals 2

    const v1, 0x1b020131

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const v0, 0x1b020134

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public getItemQuantity()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->isAuthorized:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public isItemAuthorized()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->isAuthorized:Z

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

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1b0b03c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1b090183

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mHeader:Landroid/widget/LinearLayout;

    const v0, 0x1b0900a3

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContent:Landroid/widget/LinearLayout;

    const v0, 0x1b090113

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mMore:Landroid/widget/TextView;

    const v0, 0x1b090173

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem1:Landroid/widget/RelativeLayout;

    const v0, 0x1b090177

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem2:Landroid/widget/RelativeLayout;

    const v0, 0x1b09017b

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem3:Landroid/widget/RelativeLayout;

    const v0, 0x1b0901c9

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mSubTitle1:Landroid/widget/RelativeLayout;

    const v0, 0x1b0901cc

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mSubTitle2:Landroid/widget/RelativeLayout;

    const v0, 0x1b0901cf

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mSubTitle3:Landroid/widget/RelativeLayout;

    const v0, 0x1b090174

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mIconItem1:Landroid/widget/ImageView;

    const v0, 0x1b090178

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mIconItem2:Landroid/widget/ImageView;

    const v0, 0x1b09017c

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mIconItem3:Landroid/widget/ImageView;

    const v0, 0x1b090175

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mTitleItem1:Landroid/widget/TextView;

    const v0, 0x1b090179

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mTitleItem2:Landroid/widget/TextView;

    const v0, 0x1b09017d

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mTitleItem3:Landroid/widget/TextView;

    const v0, 0x1b0901ca

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mPrice1:Landroid/widget/TextView;

    const v0, 0x1b0901cd

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mPrice2:Landroid/widget/TextView;

    const v0, 0x1b0901d0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mPrice3:Landroid/widget/TextView;

    const v0, 0x1b0901cb

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAppName1:Landroid/widget/TextView;

    const v0, 0x1b0901ce

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAppName2:Landroid/widget/TextView;

    const v0, 0x1b0901d1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAppName3:Landroid/widget/TextView;

    const v0, 0x1b090018

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyStub:Landroid/view/ViewStub;

    const v0, 0x1b09017f

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAuthorizeStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem1:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem2:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem3:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mMore:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mMore:Landroid/widget/TextView;

    const v1, 0x1b0200e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0202d8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0202d7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public bridge synthetic queryItemData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->queryItemData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryItemData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/Shopping;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v1, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->sFirst:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_first"

    invoke-static {v1, v2, v4}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_fav_authorize_changed"

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_shopping_authorize_changed"

    invoke-static {v1, v2, v4}, Lcom/miui/home/launcher/assistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_shopping_authorize"

    invoke-static {v1, v2, v4}, Lcom/miui/home/launcher/assistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->openShoppingCatcher()V

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_first"

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    sput-boolean v3, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->sFirst:Z

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_shopping_authorize_changed"

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->isAuthorized:Z

    iget-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->isAuthorized:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_all_delete_shopping"

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/miui/home/launcher/assistant/module/carditem/ShoppingItem;->queryItem(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mTotalNum:I

    :cond_2
    return-object v0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 13

    const/16 v12, 0x21

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v7, 0x8

    const/4 v9, 0x0

    iget-boolean v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->isAuthorized:Z

    if-eqz v6, :cond_2

    if-eqz p1, :cond_1

    instance-of v6, p1, Ljava/util/List;

    if-eqz v6, :cond_1

    move-object v6, p1

    check-cast v6, Ljava/util/List;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mList:Ljava/util/List;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_0
    iget v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mTotalNum:I

    if-lez v6, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->reqCurrPrice(Ljava/util/List;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0, v10}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->setBlankCard(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0, v9}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->setBlankCard(Z)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/assistant/module/model/Shopping;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->updateItem1(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->updateItemBg(Landroid/widget/RelativeLayout;)V

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0, v9}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->setBlankCard(Z)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/assistant/module/model/Shopping;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mList:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/assistant/module/model/Shopping;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord2:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->updateItem1(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord2:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->updateItem2(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->updateItemBg(Landroid/widget/RelativeLayout;)V

    goto :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0, v9}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->setBlankCard(Z)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/assistant/module/model/Shopping;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mList:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/assistant/module/model/Shopping;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord2:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mList:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/assistant/module/model/Shopping;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord3:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord1:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->updateItem1(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord2:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->updateItem2(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mRecord3:Lcom/miui/home/launcher/assistant/module/model/Shopping;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->updateItem3(Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->updateItemBg(Landroid/widget/RelativeLayout;)V

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem2:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mItem3:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0, v10}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->setBlankCard(Z)V

    goto/16 :goto_1

    :cond_2
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mMore:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAuthorizeStub:Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    const v7, 0x1b090158

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const v8, 0x1b0b03c5

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    const v7, 0x1b090157

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x1b0201ed

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    const v7, 0x1b09015a

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v6, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v6, :cond_4

    const v6, 0x1b0200e2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    const v7, 0x1b090018

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v7, 0x1b020316

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_4
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mAuthorizeView:Landroid/widget/LinearLayout;

    const v7, 0x1b090159

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const v7, 0x1b0b03cb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableString;

    new-array v6, v11, [Ljava/lang/String;

    aput-object v3, v6, v9

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const v8, 0x1b0b012f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

    const v8, 0x1b0b012f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int v1, v6, v7

    new-instance v6, Landroid/text/style/URLSpan;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->mContext:Landroid/content/Context;

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

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
