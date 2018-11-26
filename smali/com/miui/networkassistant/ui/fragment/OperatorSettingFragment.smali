.class public Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;
.implements Lcom/miui/networkassistant/ui/view/RadioGroup$OnCheckedChangeListener;


# static fields
.field private static final ACTION_FLAG_CITY:I = 0x2

.field private static final ACTION_FLAG_OPERATOR:I = 0x3

.field private static final ACTION_FLAG_PROVINCE:I = 0x1

.field public static final BUNDLE_KEY_FROM_NOTIFICATION:Ljava/lang/String; = "bundle_key_from_other_task"

.field public static final BUNDLE_KEY_TRAFFIC_GUIDE:Ljava/lang/String; = "traffic_guide"

.field private static final TAG:Ljava/lang/String; = "OperatorSettingFragment"

.field private static final TITLE_FILED:I = 0x7f07029c

.field public static final UPDATE_OPERATOR_FROM_NOTIFICATION:Ljava/lang/String; = "update_operator"


# instance fields
.field private mAutoCorrectLayout:Landroid/view/View;

.field private mAutoCorrectSlidingButton:Lmiui/widget/SlidingButton;

.field private mBrand:I

.field private mCitieMap:Ljava/util/Map;

.field private mCity:I

.field private mCityCode:I

.field private mCityLayout:Landroid/view/View;

.field private mCityTextView:Landroid/widget/TextView;

.field private mCommonDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

.field private mCorrectLayout:Landroid/view/View;

.field private mDailyCardRadio:Lcom/miui/networkassistant/ui/view/RadioTextView;

.field private mEndButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIsTrafficGuide:Z

.field private mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mModifyCorrectionLayout:Landroid/view/View;

.field private mNomalRadio:Lcom/miui/networkassistant/ui/view/RadioTextView;

.field private mNotLimitedRadio:Lcom/miui/networkassistant/ui/view/RadioTextView;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOperator:Ljava/lang/String;

.field private mOperatorLayout:Landroid/view/View;

.field private mOperatorMap:Ljava/util/Map;

.field private mOperatorTextView:Landroid/widget/TextView;

.field private mPackageSelectView:Lcom/miui/networkassistant/ui/view/RadioGroup;

.field private mPackageSettingLayout:Landroid/view/View;

.field private mProvince:I

.field private mProvinceCode:I

.field private mProvinceLayout:Landroid/view/View;

.field private mProvinceMap:Ljava/util/Map;

.field private mProvinceTextVew:Landroid/widget/TextView;

.field private mUploadSmsLayout:Landroid/view/View;

.field private mVirtualOperatorTask:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoCorrectSlidingButton:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityCode:I

    return v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    return v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceCode:I

    return v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    return v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperator:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->initData()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->initOperator(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->initSimLocation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->onProvinceSelected(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->toggleDataUsageAutoCorrection(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;-><init>()V

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperator:Ljava/lang/String;

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mBrand:I

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityCode:I

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method private addTipsTitleToMap(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string/jumbo v1, "\u8bf7\u9009\u62e9"

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method private buildLocationAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCommonDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCommonDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0702aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setNagetiveText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCommonDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCommonDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCommonDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    return-void
.end method

.method private cancelVirtualOperatorTask()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mVirtualOperatorTask:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mVirtualOperatorTask:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mVirtualOperatorTask:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private checkValidate()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mBrand:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private exeGetVirtualOperatorTask()V
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mVirtualOperatorTask:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mVirtualOperatorTask:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getCityMapByProvinceId(I)Ljava/util/Map;
    .locals 4

    const/4 v1, 0x0

    if-lez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getCities(I)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->addTipsTitleToMap(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "OperatorSettingFragment"

    const-string/jumbo v3, "getCityMapByProvinceId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private getOperatorMap()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getOperators()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorMap:Ljava/util/Map;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->addTipsTitleToMap(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorMap:Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "OperatorSettingFragment"

    const-string/jumbo v2, "get operator map failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getPosByTag(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private getProvinceMap()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getProvinces()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceMap:Ljava/util/Map;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->addTipsTitleToMap(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceMap:Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "OperatorSettingFragment"

    const-string/jumbo v2, "get province map failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getSimCardLocation(II)Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, ""

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "OperatorSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "location : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->getCityMapByProvinceId(I)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initCardStuff()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "sim_slot_num_tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sim_slot_num_tag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    :goto_0
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    invoke-static {v0}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    goto :goto_0
.end method

.method private initData()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mServiceConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->initCardStuff()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->finish()V

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->initProvinceAndOperatorData()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoCorrectSlidingButton:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$4;

    invoke-direct {v3, p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;ILandroid/os/Handler;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->initSimLocation(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initOperator(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperatorStr(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperator:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperator:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->onOperatorSelected(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initProvinceAndOperatorData()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->getProvinceMap()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->getOperatorMap()V

    return-void
.end method

.method private initSimLocation(Ljava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperator:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mBrand:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/a/c/b;->btI(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityCode:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityCode:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getProvinceCodeByCityCode(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceCode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceCode:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceCode:I

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    :cond_1
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityCode:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityCode:I

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    :cond_2
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->onProvinceSelected(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mBrand:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->onPackageSelected(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aMa(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isMiMobileOperatorModify()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->exeGetVirtualOperatorTask()V

    :goto_1
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceCode:I

    if-le v0, v3, :cond_3

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityCode:I

    if-le v0, v3, :cond_3

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceCode:I

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityCode:I

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->showSimLocationErrorDialog()V

    :cond_3
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->checkValidate()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "OperatorSettingFragment"

    const-string/jumbo v2, "get area location failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "OperatorSettingFragment"

    const-string/jumbo v2, "parse city code exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->initOperator(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private navigateToMainActivity()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "sim_slot_num_tag"

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "bundle_key_from_other_task"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x10008000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNATipsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TrafficUpdateUtil;->broadCastTrafficUpdated(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private onNegativeButtonClick()V
    .locals 3

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveProvince(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCity(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveOperator(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBrand(I)Z

    return-void
.end method

.method private onOperatorSelected(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperator:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onPackageSelected(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mPackageSelectView:Lcom/miui/networkassistant/ui/view/RadioGroup;

    const v1, 0x7f0a02e1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/RadioGroup;->check(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mPackageSelectView:Lcom/miui/networkassistant/ui/view/RadioGroup;

    const v1, 0x7f0a02e2

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/RadioGroup;->check(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mPackageSelectView:Lcom/miui/networkassistant/ui/view/RadioGroup;

    const v1, 0x7f0a02e3

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/RadioGroup;->check(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mPackageSelectView:Lcom/miui/networkassistant/ui/view/RadioGroup;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method private onPositiveButtonClick()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->saveTrafficCorrectionInfo()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->startCorrection()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->finish()V

    return-void

    :cond_1
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mBrand:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->startCorrection()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->navigateToMainActivity()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mBrand:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private onProvinceSelected(I)V
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceTextVew:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceMap:Ljava/util/Map;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->getCityMapByProvinceId(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCitieMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCitieMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCitieMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCitieMap:Ljava/util/Map;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private resetSimLocationAlert()V
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setSimLocationAlertIgnore(Z)Z

    :cond_1
    return-void
.end method

.method private saveTrafficCorrectionInfo()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->resetSimLocationAlert()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveProvince(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCity(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveOperator(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setMiMobileOperatorModify(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const-wide/16 v2, -0x2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkTime(J)Z

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mBrand:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBrand(I)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficTcResultCode(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillTcResultCode(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSmsDetail(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSmsDetail(Ljava/lang/String;)Z

    return-void
.end method

.method private showSimLocationErrorDialog()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "update_operator"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    invoke-direct {p0, v2, v3}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->getSimCardLocation(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OperatorSettingFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mProvinceCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",mCityCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceCode:I

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityCode:I

    invoke-direct {p0, v3, v4}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->getSimCardLocation(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    const v4, 0x7f0702df

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->buildLocationAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private startCorrection()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    xor-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    invoke-interface {v2, v1, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->toggleDataUsageAutoCorrection(ZI)V

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "OperatorSettingFragment"

    const-string/jumbo v2, "stat Correction exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private toggleDataUsageAutoCorrection(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mSlotNum:I

    invoke-interface {v0, p1, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->toggleDataUsageAutoCorrection(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "OperatorSettingFragment"

    const-string/jumbo v2, "toggleDataUsageAutoCorrection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected initView()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0702a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0a02d9

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceLayout:Landroid/view/View;

    const v0, 0x7f0a02da

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceTextVew:Landroid/widget/TextView;

    const v0, 0x7f0a02db

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityLayout:Landroid/view/View;

    const v0, 0x7f0a02dc

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityTextView:Landroid/widget/TextView;

    const v0, 0x7f0a02dd

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorLayout:Landroid/view/View;

    const v0, 0x7f0a02de

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorTextView:Landroid/widget/TextView;

    const v0, 0x7f0a02e0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/RadioGroup;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mPackageSelectView:Lcom/miui/networkassistant/ui/view/RadioGroup;

    const v0, 0x7f0a02e1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/RadioTextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNomalRadio:Lcom/miui/networkassistant/ui/view/RadioTextView;

    const v0, 0x7f0a02e2

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/RadioTextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mDailyCardRadio:Lcom/miui/networkassistant/ui/view/RadioTextView;

    const v0, 0x7f0a02e3

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/RadioTextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNotLimitedRadio:Lcom/miui/networkassistant/ui/view/RadioTextView;

    const v0, 0x7f0a02e4

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCorrectLayout:Landroid/view/View;

    const v0, 0x7f0a02ea

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mUploadSmsLayout:Landroid/view/View;

    const v0, 0x7f0a02e8

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mModifyCorrectionLayout:Landroid/view/View;

    const v0, 0x7f0a02e5

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoCorrectLayout:Landroid/view/View;

    const v0, 0x7f0a02e7

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoCorrectSlidingButton:Lmiui/widget/SlidingButton;

    const v0, 0x7f0a02df

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mPackageSettingLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceTextVew:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mUploadSmsLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mModifyCorrectionLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoCorrectLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoCorrectSlidingButton:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNomalRadio:Lcom/miui/networkassistant/ui/view/RadioTextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0702ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNomalRadio:Lcom/miui/networkassistant/ui/view/RadioTextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0702ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mDailyCardRadio:Lcom/miui/networkassistant/ui/view/RadioTextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0702ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mDailyCardRadio:Lcom/miui/networkassistant/ui/view/RadioTextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0702af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNotLimitedRadio:Lcom/miui/networkassistant/ui/view/RadioTextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0702b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNotLimitedRadio:Lcom/miui/networkassistant/ui/view/RadioTextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0702b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setSummary(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCorrectLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mPackageSettingLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mPackageSelectView:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setOnCheckedChangeListener(Lcom/miui/networkassistant/ui/view/RadioGroup$OnCheckedChangeListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCorrectLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mPackageSettingLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "traffic_guide"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "bundle_key_from_other_task"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/view/View;Landroid/view/View;ZI)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    const v0, 0x7f07029e

    packed-switch p4, :pswitch_data_0

    :goto_0
    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->checkValidate()V

    return-void

    :pswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mBrand:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mBrand:I

    const v0, 0x7f0702b2

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mBrand:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a02e1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->onNegativeButtonClick()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->onPositiveButtonClick()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0702a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceMap:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->getPosByTag(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0702a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCitieMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCitieMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCitieMap:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->getPosByTag(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0702a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperator:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorMap:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->getPosByTag(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoCorrectSlidingButton:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoCorrectSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_0
        0x102001a -> :sswitch_1
        0x7f0a02d9 -> :sswitch_2
        0x7f0a02db -> :sswitch_3
        0x7f0a02dd -> :sswitch_4
        0x7f0a02e5 -> :sswitch_6
        0x7f0a02e8 -> :sswitch_5
        0x7f0a02ea -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f030104

    return v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 3

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    sget v0, Lmiui/R$layout;->edit_mode_title:I

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f07029c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1020019

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f07029d

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x102001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mEndButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mEndButton:Landroid/widget/Button;

    const v1, 0x7f07029e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mEndButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->cancelVirtualOperatorTask()V

    return-void
.end method

.method public onSelectItemUpdate(II)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvinceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvince:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->onProvinceSelected(I)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->checkValidate()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCitieMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCitieMap:Ljava/util/Map;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->checkValidate()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperator:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperator:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->onOperatorSelected(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->checkValidate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f07029c

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$3;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Landroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method
