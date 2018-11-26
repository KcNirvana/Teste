.class public Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;
.super Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;
.source ""


# static fields
.field public static PACKAGENAME:Ljava/lang/String;

.field private static REQUESTCODE_SETTINGS:I

.field public static RESULTCODE_RETURN:I


# instance fields
.field private back:Landroid/view/View;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private imgLuckyAlarmIcon:Landroid/widget/ImageView;

.field private listAdapter:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;

.field private listItem:Ljava/util/ArrayList;

.field private listView:Landroid/widget/ListView;

.field private movableLayout:Lcom/miui/common/customview/MovableLayout;

.field private onBackClickListener:Landroid/view/View$OnClickListener;

.field private onScrollListener:Lcom/miui/common/customview/e;

.field private onSettingClickListener:Landroid/view/View$OnClickListener;

.field private setting:Landroid/view/View;

.field private txvBack:Landroid/widget/TextView;

.field private txvLuckyAlarmApp:Landroid/widget/TextView;

.field private txvLuckyAlarmCountDown:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->countDownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->imgLuckyAlarmIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listAdapter:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onBackClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvBack:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvLuckyAlarmApp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvLuckyAlarmCountDown:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;Ljava/util/ArrayList;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->getCurrentCountDownItemIndex(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->REQUESTCODE_SETTINGS:I

    const/16 v0, 0xcc

    sput v0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->RESULTCODE_RETURN:I

    const-string/jumbo v0, "packageName"

    sput-object v0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->PACKAGENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;-><init>()V

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$1;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onBackClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$2;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onSettingClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private checkItem(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    iget-object v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->intent:Landroid/content/Intent;

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->intent:Landroid/content/Intent;

    invoke-static {v4, v5, v6}, Lcom/miui/luckymoney/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->appIcon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/luckymoney/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->appIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private getCurrentCountDownItemIndex(Ljava/util/ArrayList;)I
    .locals 8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    iget-wide v6, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private initAfterView()V
    .locals 2

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->setContentView(I)V

    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvBack:Landroid/widget/TextView;

    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->back:Landroid/view/View;

    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->setting:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->back:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvBack:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->setting:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onSettingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initBeforeView()V
    .locals 2

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->setContentView(I)V

    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvBack:Landroid/widget/TextView;

    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->back:Landroid/view/View;

    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->setting:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->back:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvBack:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->setting:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onSettingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initCloseView()V
    .locals 2

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->setContentView(I)V

    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvBack:Landroid/widget/TextView;

    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->back:Landroid/view/View;

    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->setting:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->back:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvBack:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->setting:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onSettingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$3;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDefaultView()V
    .locals 8

    const v6, 0x7f070192

    const/4 v1, 0x0

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->setContentView(I)V

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->back:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotchUtil;->setNotchToolbarMarginTop(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvBack:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotchUtil;->setNotchToolbarMarginTop(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->setting:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotchUtil;->setNotchToolbarMarginTop(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listView:Landroid/widget/ListView;

    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/MovableLayout;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->movableLayout:Lcom/miui/common/customview/MovableLayout;

    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvLuckyAlarmApp:Landroid/widget/TextView;

    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvLuckyAlarmCountDown:Landroid/widget/TextView;

    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->imgLuckyAlarmIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvBack:Landroid/widget/TextView;

    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->back:Landroid/view/View;

    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->setting:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->back:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvBack:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->setting:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onSettingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->movableLayout:Lcom/miui/common/customview/MovableLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/MovableLayout;->aGa(Z)V

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onScrollListener:Lcom/miui/common/customview/e;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->movableLayout:Lcom/miui/common/customview/MovableLayout;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->onScrollListener:Lcom/miui/common/customview/e;

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/MovableLayout;->aFZ(Lcom/miui/common/customview/e;)V

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listAdapter:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listAdapter:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$Adapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listView:Landroid/widget/ListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listView:Landroid/widget/ListView;

    const v4, 0x7f0300cc

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->getCurrentCountDownItemIndex(Ljava/util/ArrayList;)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvLuckyAlarmApp:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->imgLuckyAlarmIcon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->imgLuckyAlarmIcon:Landroid/widget/ImageView;

    new-instance v3, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$4;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;

    iget-wide v4, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    invoke-direct {v1, p0, v4, v5}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$MyCountDownTimer;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;J)V

    iput-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->countDownTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$5;

    invoke-direct {v1, p0, v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$5;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    iget-wide v0, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->endTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->txvLuckyAlarmApp:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->imgLuckyAlarmIcon:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    sget v0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->REQUESTCODE_SETTINGS:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->RESULTCODE_RETURN:I

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;

    invoke-static {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmConfig()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->checkItem(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->initBeforeView()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    iget-wide v0, v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->endTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->initAfterView()V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmEnable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->initCloseView()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->initDefaultView()V

    return-void
.end method
