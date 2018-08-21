.class public Lcom/miui/home/launcher/assistant/ui/view/MapCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "MapCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/view/MapCardView$tagHolder;
    }
.end annotation


# static fields
.field private static final TIME_VALID:J = 0x2710L

.field private static final TSMCLIENT_PACKAGE_NAME:Ljava/lang/String; = "com.miui.tsmclient"

.field public static final VIEW_TYPE:Ljava/lang/String; = "MapCardView"


# instance fields
.field private DISPLAY_WIDTH:I

.field private mBtnGroup:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDes:Landroid/widget/TextView;

.field private mDetailBtn:Landroid/widget/TextView;

.field private mEmpty:Landroid/widget/LinearLayout;

.field private mEmptyBtn:Landroid/widget/TextView;

.field private mHome:Landroid/widget/RelativeLayout;

.field private mIcon:Landroid/widget/ImageView;

.field private mLeftBtn:Landroid/widget/TextView;

.field private mLineView:Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;

.field private mLoadingHome:Landroid/widget/TextView;

.field private mLoadingOffice:Landroid/widget/TextView;

.field private volatile mMapItem:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

.field private mNetUnavailView:Landroid/widget/TextView;

.field private mOffice:Landroid/widget/RelativeLayout;

.field private mOfficeDes:Landroid/widget/TextView;

.field private mOfficeLineView:Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;

.field private mOfficeTitle:Landroid/widget/TextView;

.field private mOfficeType:Landroid/widget/TextView;

.field private mRightBtn:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mType:Landroid/widget/TextView;

.field private mUpdateListener:Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate$ViewUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mMapItem:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/MapCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mUpdateListener:Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate$ViewUpdateListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/DisplayUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->DISPLAY_WIDTH:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;->resetQueryTime(J)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mUpdateListener:Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate$ViewUpdateListener;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;->setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate$ViewUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/MapCardView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/MapCardView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/MapCardView;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->updateView(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private doMiStatisBtnClick(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_button_click_map"

    const-string/jumbo v2, "4"

    const-string/jumbo v3, "MapCardView"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initBtnGroup()V
    .locals 13

    const v12, 0x1b0b0268

    const v11, 0x1b0b0262

    const v10, 0x1b0b0267

    const v9, 0x1b0b0261

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mBtnGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$tagHolder;

    iget-object v2, v1, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$tagHolder;->uri:Ljava/lang/String;

    iget-boolean v7, v1, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$tagHolder;->around:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$tagHolder;

    iget-object v4, v3, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$tagHolder;->uri:Ljava/lang/String;

    iget-boolean v7, v3, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$tagHolder;->around:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    if-ne v0, v5, :cond_2

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLeftBtn:Landroid/widget/TextView;

    const-string/jumbo v8, "didi_home"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mRightBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mRightBtn:Landroid/widget/TextView;

    const-string/jumbo v8, "didi_office"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "didi_home"

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9, v2}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->showBtnGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "didi_office"

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9, v4}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->showBtnGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "didi_home"

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9, v2}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->showBtnGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "didi_office"

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9, v4}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->showBtnGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mBtnGroup:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initHomeView()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const v5, 0x1b020134

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLoadingHome:Landroid/widget/TextView;

    invoke-direct {p0, v4, v7}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mEmpty:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, v7}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    if-nez v4, :cond_1

    const v4, 0x1b09018b

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v4, 0x1b090195

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mTime:Landroid/widget/TextView;

    if-nez v4, :cond_2

    const v4, 0x1b090197

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mTime:Landroid/widget/TextView;

    :cond_2
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mType:Landroid/widget/TextView;

    if-nez v4, :cond_3

    const v4, 0x1b090196

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mType:Landroid/widget/TextView;

    :cond_3
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mDes:Landroid/widget/TextView;

    if-nez v4, :cond_4

    const v4, 0x1b090198

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mDes:Landroid/widget/TextView;

    :cond_4
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLineView:Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;

    if-nez v4, :cond_5

    const v4, 0x1b090199

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;

    iput-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLineView:Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;

    :cond_5
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLoadingOffice:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLoadingOffice:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLoadingOffice:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLoadingOffice:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLoadingOffice:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v2, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_7
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private initOfficeView()V
    .locals 3

    const/16 v2, 0x8

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLoadingOffice:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mEmpty:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    const v1, 0x1b09018d

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x1b09019a

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    const v2, 0x1b020134

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const v1, 0x1b09019c

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeTitle:Landroid/widget/TextView;

    const v1, 0x1b09019b

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeType:Landroid/widget/TextView;

    const v1, 0x1b09019d

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeDes:Landroid/widget/TextView;

    const v1, 0x1b09019e

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeLineView:Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    const v2, 0x1b020131

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private setViewVisibility(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showBtnGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mRightBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mRightBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "means_of_trans_key"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.miui.tsmclient"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mRightBtn:Landroid/widget/TextView;

    const v2, 0x1b0b0269

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mRightBtn:Landroid/widget/TextView;

    const-string/jumbo v2, "subway"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private showEmptyView()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLoadingHome:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLoadingOffice:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mBtnGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mEmpty:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    const v1, 0x1b09018f

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v1, 0x1b090193

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mEmpty:Landroid/widget/LinearLayout;

    const v1, 0x1b090155

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mEmptyBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mEmptyBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mEmptyBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mIcon:Landroid/widget/ImageView;

    const v2, 0x1b0202cd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    sget-boolean v1, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mEmptyBtn:Landroid/widget/TextView;

    const v2, 0x1b0200e2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private trackOnClickItemEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_item_click_map"

    const-string/jumbo v2, "4"

    const-string/jumbo v3, "MapCardView"

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateView(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/ColorLine;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x27

    const/16 v6, 0x8

    const/16 v5, 0xa

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$tagHolder;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, p0, p5, v1}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$tagHolder;-><init>(Lcom/miui/home/launcher/assistant/ui/view/MapCardView;Ljava/lang/String;Z)V

    const-string/jumbo v1, "home"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->initHomeView()V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mType:Landroid/widget/TextView;

    const v4, 0x1b0b0275

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v3, v3, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mDes:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz p6, :cond_4

    invoke-virtual {p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLineView:Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLineView:Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->DISPLAY_WIDTH:I

    invoke-virtual {v1, p6, v4}, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->setData(Ljava/util/List;I)V

    :cond_0
    :goto_2
    const-string/jumbo v1, "office"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->initOfficeView()V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeType:Landroid/widget/TextView;

    const v4, 0x1b0b0279

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeDes:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    if-eqz p6, :cond_6

    invoke-virtual {p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeLineView:Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeLineView:Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/DisplayUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, p6, v2}, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->setData(Ljava/util/List;I)V

    :cond_1
    :goto_4
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->initBtnGroup()V

    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mDes:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mDes:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLineView:Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;

    invoke-virtual {v1, v6}, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeDes:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeDes:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOfficeLineView:Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;

    invoke-virtual {v1, v6}, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public isItemContentEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mEmpty:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$tagHolder;

    iget-object v0, v1, Lcom/miui/home/launcher/assistant/ui/view/MapCardView$tagHolder;->uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mMapItem:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mMapItem:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->isInstallMapApp()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/assistant/util/Util;->startActivityNoHistory(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1b090195

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "home"

    const-string/jumbo v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->trackOnClickItemEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "office"

    const-string/jumbo v2, "1"

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->trackOnClickItemEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_map"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/util/Util;->gotoCardSettingActivity(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mEmptyBtn:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->doMiStatisBtnClick(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mMapItem:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mMapItem:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->clickBtnGroup(Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->doMiStatisBtnClick(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1b090155 -> :sswitch_1
        0x1b090191 -> :sswitch_2
        0x1b090192 -> :sswitch_2
        0x1b090195 -> :sswitch_0
        0x1b09019a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    const v2, 0x1b090184

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v0, 0x1b090190

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mBtnGroup:Landroid/widget/LinearLayout;

    const v0, 0x1b090191

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLeftBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b090192

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mRightBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mRightBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b09018c

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLoadingHome:Landroid/widget/TextView;

    const v0, 0x1b09018e

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLoadingOffice:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x1b090185

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mNetUnavailView:Landroid/widget/TextView;

    const v0, 0x1b0900d6

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1b0b026e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLeftBtn:Landroid/widget/TextView;

    const v1, 0x1b0202eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mRightBtn:Landroid/widget/TextView;

    const v1, 0x1b0202ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0202ce

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0202cd

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public declared-synchronized queryItemData()Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "MapCardView"

    const-string/jumbo v1, "queryItemData"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;->getQueryTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/receiver/MapUpdate;->resetQueryTime(J)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mMapItem:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mMapItem:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mMapItem:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    const-string/jumbo v1, "MapCardView"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->queryItem(Ljava/lang/String;I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 6

    const/16 v4, 0x8

    const-string/jumbo v3, "MapCardView"

    const-string/jumbo v5, "refreshView"

    invoke-static {v3, v5}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mNetUnavailView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mMapItem:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    if-eqz v3, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_HOME:I

    if-ge v2, v3, :cond_2

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->showEmptyView()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mEmpty:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v4}, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->setViewVisibility(Landroid/view/View;I)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    sget v3, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_ALL:I

    if-lt v2, v3, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_3
    :goto_2
    sget v3, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_BAIDU_INSTALL:I

    and-int/2addr v3, v2

    if-nez v3, :cond_4

    sget v3, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_AUTO_INSTALL:I

    and-int/2addr v3, v2

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mIcon:Landroid/widget/ImageView;

    const v4, 0x1b0202cd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_4
    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mHome:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    const/16 v0, 0x8

    :cond_5
    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mOffice:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    const/16 v1, 0x8

    :cond_6
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLoadingHome:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MapCardView;->mLoadingOffice:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    sget v3, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->MAP_INFO_OFFICE:I

    if-lt v2, v3, :cond_3

    const/16 v0, 0x8

    const/4 v1, 0x0

    goto :goto_2
.end method
