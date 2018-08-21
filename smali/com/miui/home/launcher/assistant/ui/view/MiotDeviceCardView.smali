.class public Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "MiotDeviceCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTION_CTA_NOT_PASSED:Ljava/lang/String; = "action_cta_not_passed"

.field public static final ACTION_DEVICE_STATUS_CHANGED:Ljava/lang/String; = "com.xiaomi.smarthome.refresh_device"

.field public static final ACTION_OTHER_STATUS:Ljava/lang/String; = "action_other_status"

.field public static final ACTION_REFRESH_FINISHED:Ljava/lang/String; = "action_refresh_finished"

.field private static final MIJIA_PRIVATE_URL:Ljava/lang/String; = "https://home.mi.com/userprotocol/\u7c73\u5bb6\u9690\u79c1\u653f\u7b560326.html"

.field public static final MIJIA_USER_URL:Ljava/lang/String; = "https://home.mi.com/userprotocol/\u7c73\u5bb6\u8f6f\u4ef6\u8bb8\u53ef\u53ca\u670d\u52a1\u534f\u8bae0313.html"

.field public static final VIEW_TYPE:Ljava/lang/String; = "MiotDeviceView"


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

.field private mAddDeviceBtn:Landroid/widget/TextView;

.field private mAddDeviceSingleBtn:Landroid/widget/TextView;

.field private mAllDeviceBtn:Landroid/widget/TextView;

.field private mAuthorizeStub:Landroid/view/ViewStub;

.field private mAuthorizeView:Landroid/view/View;

.field private mCardViewIcon:Landroid/widget/ImageView;

.field private mCardViewName:Landroid/widget/TextView;

.field private mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

.field private mDeviceView:Landroid/view/View;

.field private mDeviceViewStub:Landroid/view/ViewStub;

.field private mErrorBtn:Landroid/widget/TextView;

.field private mErrorText:Landroid/widget/TextView;

.field private mErrorView:Landroid/view/View;

.field private mErrorViewStub:Landroid/view/ViewStub;

.field private mGridView:Landroid/widget/GridView;

.field private mHeadView:Landroid/view/View;

.field private mListener:Lmiui/accounts/MiuiOnAccountsUpdateListener;

.field private mNetUnavailView:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mListener:Lmiui/accounts/MiuiOnAccountsUpdateListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->showDeviceView()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->showCTAView()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->showErrorView()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    return-object v0
.end method

.method private hideAllView()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mSettingView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAuthorizeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAuthorizeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private showCTAView()V
    .locals 14

    const v13, 0x1b09015a

    const/4 v12, 0x0

    const/16 v11, 0x21

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->hideAllView()V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAuthorizeView:Landroid/view/View;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAuthorizeStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAuthorizeView:Landroid/view/View;

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAuthorizeView:Landroid/view/View;

    const v9, 0x1b090158

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    const v10, 0x1b0b0290

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAuthorizeView:Landroid/view/View;

    const v9, 0x1b090157

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x1b020263

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAuthorizeView:Landroid/view/View;

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAuthorizeView:Landroid/view/View;

    const v9, 0x1b090159

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    const v9, 0x1b0b0292

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    const v9, 0x1b0b0294

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    const v9, 0x1b0b0291

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    const v9, 0x1b0b0293

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/text/SpannableString;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    aput-object v2, v8, v12

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    aput-object v4, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int v0, v1, v8

    new-instance v8, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$3;

    invoke-direct {v8, p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$3;-><init>(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V

    invoke-virtual {v6, v8, v1, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v9, "#80000000"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v8, v1, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int v0, v1, v8

    new-instance v8, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$4;

    invoke-direct {v8, p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$4;-><init>(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V

    invoke-virtual {v6, v8, v1, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v9, "#80000000"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v8, v1, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget-boolean v8, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAuthorizeView:Landroid/view/View;

    const v9, 0x1b090018

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x1b020316

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAuthorizeView:Landroid/view/View;

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x1b0200e2

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mHeadView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAuthorizeView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showDeviceView()V
    .locals 6

    const v5, 0x40aa8f5c    # 5.33f

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->hideAllView()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceView:Landroid/view/View;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Z)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    const v0, 0x1b0901a3

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/miui/home/launcher/assistant/util/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/miui/home/launcher/assistant/util/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceView:Landroid/view/View;

    const v1, 0x1b09013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAllDeviceBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAllDeviceBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceView:Landroid/view/View;

    const v1, 0x1b0901a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAddDeviceBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAddDeviceBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceView:Landroid/view/View;

    const v1, 0x1b0901ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAddDeviceSingleBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAddDeviceSingleBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mHeadView:Landroid/view/View;

    const v1, 0x1b09018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b020316

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAllDeviceBtn:Landroid/widget/TextView;

    const v1, 0x1b0202eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAddDeviceBtn:Landroid/widget/TextView;

    const v1, 0x1b0202ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAddDeviceSingleBtn:Landroid/widget/TextView;

    const v1, 0x1b0200e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->getDeviceInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->getDeviceInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->showErrorView()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mSettingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->getDeviceInfos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->setDeviceInfo(Ljava/util/List;I)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getAllDeviceInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAllDeviceBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAddDeviceBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAddDeviceSingleBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAllDeviceBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAddDeviceBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAddDeviceSingleBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private showErrorView()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->hideAllView()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorView:Landroid/view/View;

    const v1, 0x1b0900ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorView:Landroid/view/View;

    const v1, 0x1b090155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorBtn:Landroid/widget/TextView;

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mHeadView:Landroid/view/View;

    const v1, 0x1b09018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b020316

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorBtn:Landroid/widget/TextView;

    const v1, 0x1b0200e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorText:Landroid/widget/TextView;

    const v1, 0x1b0b0296

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorBtn:Landroid/widget/TextView;

    const v1, 0x1b0b028d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getAllDeviceInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/miot/DeviceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->getDeviceInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceItem()Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    return-object v0
.end method

.method public getItemSource()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "miot_device"

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onAttachedToWindow()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "action_refresh_finished"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "action_other_status"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "action_cta_not_passed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiui/accounts/ExtraAccountManager;->getInstance(Landroid/content/Context;)Lmiui/accounts/ExtraAccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mListener:Lmiui/accounts/MiuiOnAccountsUpdateListener;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lmiui/accounts/ExtraAccountManager;->addOnAccountsUpdatedListener(Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/os/Handler;Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.xiaomi.smarthome.refresh_device"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->getInstance()Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->initSoundPool(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "miui_negativeone"

    const-string/jumbo v5, "21"

    const-string/jumbo v6, "MiotDeviceCardView"

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->getCurrentState()Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    move-result-object v2

    sget-object v7, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->CTA_NOT_PASSED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    if-ne v2, v7, :cond_1

    :cond_0
    const-string/jumbo v2, ""

    :goto_0
    invoke-static {v3, v4, v5, v6, v2}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v2, "passed"

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->passCTA()V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->expandDeviceCardView(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "miui_negativeone_click"

    const-string/jumbo v3, "21"

    const-string/jumbo v4, "MiotDeviceCardView"

    const-string/jumbo v5, "miot_device_more_deivce"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.xiaomi.smarthome"

    const-string/jumbo v3, "com.xiaomi.smarthome.device.choosedevice.ChooseDeviceActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "from_miui"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "category"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "miui_negativeone_click"

    const-string/jumbo v3, "21"

    const-string/jumbo v4, "MiotDeviceCardView"

    const-string/jumbo v5, "miot_device_add_device_click"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->onEmptyButtonClick()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1b09013a -> :sswitch_1
        0x1b090155 -> :sswitch_3
        0x1b09015a -> :sswitch_0
        0x1b0901a6 -> :sswitch_2
        0x1b0901ab -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getInstance(Landroid/content/Context;)Lmiui/accounts/ExtraAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mListener:Lmiui/accounts/MiuiOnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Lmiui/accounts/ExtraAccountManager;->removeOnAccountsUpdatedListener(Lmiui/accounts/MiuiOnAccountsUpdateListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->getInstance()Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->destroy()V

    return-void
.end method

.method public onDeviceChanged(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->onDeviceUpdated(Landroid/content/Intent;)V

    return-void
.end method

.method public onDeviceChanged(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->onDeviceUpdated(Landroid/os/Bundle;)V

    return-void
.end method

.method onEmptyButtonClick()V
    .locals 8

    const v7, 0x1b0b029f

    const v6, 0x10008000

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "miui_negativeone_click"

    const-string/jumbo v3, "21"

    const-string/jumbo v4, "MiotDeviceCardView"

    const-string/jumbo v5, "miot_device_add_device_click"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$6;->$SwitchMap$com$miui$home$launcher$assistant$module$carditem$MiotDeviceItem$LoginState:[I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->getCurrentState()Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.xiaomi.smarthome"

    const-string/jumbo v3, "com.xiaomi.smarthome.device.choosedevice.ChooseDeviceActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "from_miui"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "category"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/assistant/util/IntentUtil;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    const v2, 0x1b0b0299

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.personalassistant.LOGIN_BLANK_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "action_install_mihome"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.personalassistant.LOGIN_BLANK_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "action_login"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v0, 0x1b09018a

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mHeadView:Landroid/view/View;

    const v0, 0x1b090184

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mCardViewIcon:Landroid/widget/ImageView;

    const v0, 0x1b0900d6

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mCardViewName:Landroid/widget/TextView;

    const v0, 0x1b090186

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mSettingView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mCardViewName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1b0b0290

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mCardViewIcon:Landroid/widget/ImageView;

    const v1, 0x1b020264

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x1b0901a0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mErrorViewStub:Landroid/view/ViewStub;

    const v0, 0x1b09019f

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceViewStub:Landroid/view/ViewStub;

    const v0, 0x1b0901a1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mAuthorizeStub:Landroid/view/ViewStub;

    const v0, 0x1b090185

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mNetUnavailView:Landroid/widget/TextView;

    return-void
.end method

.method protected onMenuClick()V
    .locals 7

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.xiaomi.smarthome"

    const-string/jumbo v4, "com.xiaomi.smarthome.miui.CommonDeviceEditActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.personalassistant"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$5;-><init>(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V

    const-string/jumbo v2, "extra"

    new-instance v3, Lcom/xiaomi/miot/BinderParcel;

    invoke-virtual {v0}, Lcom/xiaomi/miot/service/ICallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/xiaomi/miot/BinderParcel;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/home/launcher/assistant/util/IntentUtil;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "miui_negativeone_click"

    const-string/jumbo v4, "21"

    const-string/jumbo v5, "MiotDeviceCardView"

    const-string/jumbo v6, "miot_device_edit_click"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryItemData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mNetUnavailView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDisableMenu:Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->startRefreshData()V

    sget-object v0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$6;->$SwitchMap$com$miui$home$launcher$assistant$module$carditem$MiotDeviceItem$LoginState:[I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->mDeviceItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->getCurrentState()Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->showErrorView()V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->showCTAView()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->showDeviceView()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
