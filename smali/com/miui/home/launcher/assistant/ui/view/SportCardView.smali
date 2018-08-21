.class public Lcom/miui/home/launcher/assistant/ui/view/SportCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "SportCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static CARD_PACKAGE_NAME:Ljava/lang/String; = null

.field private static MISPORT_ICON:Landroid/graphics/drawable/Drawable; = null

.field private static SPORT_ICON:Landroid/graphics/drawable/Drawable; = null

.field public static final VIEW_TYPE:Ljava/lang/String; = "sportView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmptyBtn:Landroid/widget/TextView;

.field private mEmptyShow:Landroid/widget/LinearLayout;

.field private mLine:Landroid/view/View;

.field private mSportDisView:Landroid/widget/TextView;

.field private mSportEnergyView:Landroid/widget/TextView;

.field private mSportIcon:Landroid/widget/ImageView;

.field private mSportItem:Landroid/widget/LinearLayout;

.field private mStepsNumView:Landroid/widget/TextView;

.field private mUnitView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.xiaomi.hm.health"

    sput-object v0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->CARD_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b02020a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->SPORT_ICON:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b020206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->MISPORT_ICON:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private initSportView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportItem:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    const v1, 0x1b0901d2

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_1
    const v1, 0x1b0901d4

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportItem:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1b0901d6

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mStepsNumView:Landroid/widget/TextView;

    const v1, 0x1b0901d8

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportDisView:Landroid/widget/TextView;

    const v1, 0x1b0901d9

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportEnergyView:Landroid/widget/TextView;

    const v1, 0x1b0901d7

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mUnitView:Landroid/widget/TextView;

    const v1, 0x1b09013f

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mLine:Landroid/view/View;

    const v1, 0x1b0901d5

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-boolean v1, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportItem:Landroid/widget/LinearLayout;

    const v2, 0x1b0200db

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setSportEmpty(Z)V
    .locals 5

    const v4, 0x1b0b00f8

    const v3, 0x1b0900ef

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportItem:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportItem:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const v1, 0x1b0901d3

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_1
    const v1, 0x1b090152

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mEmptyShow:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x1b09015c

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mEmptyBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mEmptyBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.xiaomi.hm.health"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mEmptyBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1b0b00fc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mEmptyBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1b0b00fd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mEmptyBtn:Landroid/widget/TextView;

    const v2, 0x1b0b00f7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1b0b00fa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mEmptyBtn:Landroid/widget/TextView;

    const v2, 0x1b0b00f9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1b0b00fb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0
.end method

.method private setSportItem(Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mStepsNumView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mUnitView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->unit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportItem:Landroid/widget/LinearLayout;

    iget-object v2, p1, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->contentUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportDisView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportDisView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportEnergyView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportEnergyView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->cal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->pkgName:Ljava/lang/String;

    const-string/jumbo v1, "com.xiaomi.vip"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportDisView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mLine:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportIcon:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->SPORT_ICON:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mLine:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportIcon:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->MISPORT_ICON:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemSource()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/Steps;->supportStepsProvider()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "key_step_type"

    const-string/jumbo v4, "0"

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.xiaomi.hm.health"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v2, "misport"

    :goto_0
    return-object v2

    :cond_1
    const-string/jumbo v2, "phone"

    goto :goto_0
.end method

.method public isItemContentEmpty()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mStepsNumView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mStepsNumView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mStepsNumView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_button_click_sport"

    const-string/jumbo v2, "9"

    const-string/jumbo v3, "sportView"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mEmptyBtn:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.xiaomi.hm.health"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.xiaomi.hm.health"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->openInMarket(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.xiaomi.hm.health"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->startAppByPackageName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1b09015c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    return-void
.end method

.method public queryItemData()Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "sportView"

    const-string/jumbo v1, "queryItemData"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/SportItem;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->CARD_PACKAGE_NAME:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/SportItem;->queryItem(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 11

    const v10, 0x1b090184

    const/16 v9, 0x8

    const-string/jumbo v6, "sportView"

    const-string/jumbo v7, "refreshView"

    invoke-static {v6, v7}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/Steps;->supportStepsProvider()Z

    move-result v3

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "key_step_type"

    const-string/jumbo v8, "0"

    invoke-static {v6, v7, v8}, Lcom/miui/home/launcher/assistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    instance-of v6, p1, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->initSportView()V

    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->setSportItem(Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;)V

    :goto_0
    const-string/jumbo v6, "com.xiaomi.hm.health"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v3, :cond_5

    :cond_0
    invoke-virtual {p0, v10}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget-boolean v6, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v6, :cond_4

    const v6, 0x1b0202d4

    :goto_1
    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    const v6, 0x1b0900d6

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x1b0b008c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1
    if-eqz v3, :cond_2

    const-string/jumbo v6, "com.xiaomi.hm.health"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "com.xiaomi.vip"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "key_step_type"

    const-string/jumbo v8, "com.xiaomi.vip"

    invoke-static {v6, v7, v8}, Lcom/miui/home/launcher/assistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    const-string/jumbo v6, "com.xiaomi.vip"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->initSportView()V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mContext:Landroid/content/Context;

    const v7, 0x1b0b03f3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "http://vipaccount.miui.com/event/detail?record=3&actionbartitle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mContext:Landroid/content/Context;

    const v8, 0x1b0b03f2

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mStepsNumView:Landroid/widget/TextView;

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mUnitView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportItem:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportDisView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportEnergyView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1b0b03f0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportEnergyView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mLine:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->mSportIcon:Landroid/widget/ImageView;

    sget-object v7, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->SPORT_ICON:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->setSportEmpty(Z)V

    goto/16 :goto_0

    :cond_4
    const v6, 0x1b0202d3

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0, v10}, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget-boolean v6, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v6, :cond_6

    const v6, 0x1b0202da

    :goto_3
    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_6
    const v6, 0x1b0202d9

    goto :goto_3
.end method
