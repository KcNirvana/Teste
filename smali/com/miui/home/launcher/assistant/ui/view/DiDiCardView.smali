.class public Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "DiDiCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;
    }
.end annotation


# static fields
.field private static final VIEW_TYPE:Ljava/lang/String; = "didiTripView"

.field public static isSuccessLast:Z

.field public static mLastMills:J


# instance fields
.field private mCardEndCompany:Landroid/widget/RelativeLayout;

.field private mCardEndHome:Landroid/widget/RelativeLayout;

.field private mCardLast:Landroid/widget/RelativeLayout;

.field private mCompanyAddr:Ljava/lang/String;

.field private mCompanyLat:Ljava/lang/String;

.field private mCompanyLng:Ljava/lang/String;

.field private mCompanyName:Ljava/lang/String;

.field private mCompanyPrice:Landroid/widget/LinearLayout;

.field private mCompanyPriceTaxi:Landroid/widget/TextView;

.field private mCompanyWhereTip:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCurrLat:Ljava/lang/String;

.field private mCurrLng:Ljava/lang/String;

.field private mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeAddr:Ljava/lang/String;

.field private mHomeLat:Ljava/lang/String;

.field private mHomeLng:Ljava/lang/String;

.field private mHomeName:Ljava/lang/String;

.field private mHomePrice:Landroid/widget/LinearLayout;

.field private mHomePriceTaxi:Landroid/widget/TextView;

.field private mItem:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

.field private mNetUnavailView:Landroid/widget/TextView;

.field private mOtherWhereTip:Landroid/widget/TextView;

.field private mPriceCompany:Landroid/widget/TextView;

.field private mPriceHome:Landroid/widget/TextView;

.field private mPriceUnit:Ljava/lang/String;

.field private mTargetCompany:Landroid/widget/TextView;

.field private mTargetHome:Landroid/widget/TextView;

.field private mUpdateLisener:Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$IUpdateLisener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mItem:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mUpdateLisener:Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$IUpdateLisener;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mPriceUnit:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mUpdateLisener:Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$IUpdateLisener;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$IUpdateLisener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->getShowPrice(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomePrice:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomeLat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomeLng:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomeAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyLat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyLng:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mPriceUnit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mPriceHome:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyPrice:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mPriceCompany:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCurrLng:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCurrLng:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCurrLat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCurrLat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getShowPrice(I)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x1

    if-ge p1, v3, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public getItemQuantity()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardEndHome:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardEndCompany:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardLast:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public isItemContentEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    const v4, 0x1b090184

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v2, 0x1b090148

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mTargetHome:Landroid/widget/TextView;

    const v2, 0x1b09014f

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mTargetCompany:Landroid/widget/TextView;

    const v2, 0x1b090146

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mPriceHome:Landroid/widget/TextView;

    const v2, 0x1b09014d

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mPriceCompany:Landroid/widget/TextView;

    const v2, 0x1b09014a

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyWhereTip:Landroid/widget/TextView;

    const v2, 0x1b090151

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mOtherWhereTip:Landroid/widget/TextView;

    const v2, 0x1b090140

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x1b090142

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardEndHome:Landroid/widget/RelativeLayout;

    const v2, 0x1b090149

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardEndCompany:Landroid/widget/RelativeLayout;

    const v2, 0x1b090150

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardLast:Landroid/widget/RelativeLayout;

    const v2, 0x1b090145

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomePrice:Landroid/widget/LinearLayout;

    const v2, 0x1b09014c

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyPrice:Landroid/widget/LinearLayout;

    const v2, 0x1b090147

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomePriceTaxi:Landroid/widget/TextView;

    const v2, 0x1b09014e

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyPriceTaxi:Landroid/widget/TextView;

    const v2, 0x1b090185

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mNetUnavailView:Landroid/widget/TextView;

    const v2, 0x1b0900d6

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x1b0b00df

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$MViewOnclickListener;-><init>(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardEndHome:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardEndCompany:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardLast:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v2, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardLast:Landroid/widget/RelativeLayout;

    const v3, 0x1b0200dd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1b0202c4

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1b0202c3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public bridge synthetic queryItemData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->queryItemData()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public queryItemData()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "didiTripView"

    const-string/jumbo v1, "queryItemData"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mItem:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mItem:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mItem:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->queryItem(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string/jumbo v1, "didiTripView"

    const-string/jumbo v4, "refreshView"

    invoke-static {v1, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mNetUnavailView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_4

    instance-of v1, p1, Ljava/util/HashMap;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mDataMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mDataMap:Ljava/util/HashMap;

    const-string/jumbo v4, "key_home_name"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomeName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mDataMap:Ljava/util/HashMap;

    const-string/jumbo v4, "key_home_lat"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomeLat:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mDataMap:Ljava/util/HashMap;

    const-string/jumbo v4, "key_home_lng"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomeLng:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mDataMap:Ljava/util/HashMap;

    const-string/jumbo v4, "key_home_add"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomeAddr:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mDataMap:Ljava/util/HashMap;

    const-string/jumbo v4, "key_company_name"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mDataMap:Ljava/util/HashMap;

    const-string/jumbo v4, "key_company_lat"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyLat:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mDataMap:Ljava/util/HashMap;

    const-string/jumbo v4, "key_company_lng"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyLng:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mDataMap:Ljava/util/HashMap;

    const-string/jumbo v4, "key_company_add"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyAddr:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomeLat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomeLng:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardEndHome:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyWhereTip:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyLat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyLng:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardEndCompany:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mOtherWhereTip:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mTargetHome:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomeName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mTargetCompany:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "didi_biz_key"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/home/launcher/assistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyPriceTaxi:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomePriceTaxi:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyPrice:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomePrice:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    move v1, v3

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardEndHome:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyWhereTip:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mOtherWhereTip:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCardEndCompany:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mOtherWhereTip:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mCompanyPriceTaxi:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mHomePriceTaxi:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method
