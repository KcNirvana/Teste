.class public Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;
.source ""


# static fields
.field private static final ACTION_SMS_DIRECTION:I = 0x2

.field private static final ACTION_SMS_NUM:I = 0x1

.field private static final ACTION_SMS_RECEIVE_NUM:I = 0x3

.field private static final TITLE_FILED:I = 0x7f070301


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mGetAgainAndReportLayout:Landroid/widget/LinearLayout;

.field private mGetSmsAgainButton:Landroid/widget/Button;

.field private mGetSmsButton:Landroid/widget/Button;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

.field private mReportButton:Landroid/widget/Button;

.field private mReturnSmsTextView:Landroid/widget/TextView;

.field private mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

.field private mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

.field private mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

.field private mSmsReportListener:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

.field private mSmsReportSelected:I

.field private mSmsReportString:[Ljava/lang/String;

.field private mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

.field private mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mSortedChoiceDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

.field private mTextInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

.field private mTipsResultTextView:Landroid/widget/TextView;

.field private mUploadType:I


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportListener:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    return-object v0
.end method

.method static synthetic -get11(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportSelected:I

    return v0
.end method

.method static synthetic -get12(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportString:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    return-object v0
.end method

.method static synthetic -get14(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    return-object v0
.end method

.method static synthetic -get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    return-object v0
.end method

.method static synthetic -get16(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTipsResultTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get17(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    return v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetAgainAndReportLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mReturnSmsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSlotNum:I

    return v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportSelected:I

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->isSmsAndDirectionOk()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->isTcServiceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->tcSmsReportDeclare()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getSmsButtonText()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->parseReportType(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->checkAndApplyStatus()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getPreDirectionAndNumber()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->initData()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Lcom/miui/common/a/b/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->reportSms()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->setToolbarItemEnable(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportSelected:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSortedChoiceDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTextInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportListener:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    return-void
.end method

.method private bindTcSmsReportService()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mAppContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private checkAndApplyStatus()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->isTcServiceConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Landroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method

.method private getPreDirectionAndNumber()V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mServiceConnected:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getInstructions(I)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsNum()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSlotNum:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsContent()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v0, v3, v5

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v2, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    aget-object v1, v3, v6

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method private getSmsButtonText()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f070308

    return v0

    :pswitch_1
    const v0, 0x7f070309

    return v0

    :pswitch_2
    const v0, 0x7f07030a

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initData()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->isTcServiceConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getCurrentSlotNum()I

    move-result v0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSlotNum:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->reset()V

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "correction_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "correction_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "correction_type"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getReportSmsType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getReportSmsType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    :cond_4
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->parseReportSelected(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportString:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportSelected:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->setToolbarItemEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getSmsButtonText()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetAgainAndReportLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mReturnSmsTextView:Landroid/widget/TextView;

    const v1, 0x7f070307

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getPreDirectionAndNumber()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->checkAndApplyStatus()V

    return-void
.end method

.method private initToolbarListItem()V
    .locals 2

    const v0, 0x7f0a01c1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v0, 0x7f0a01c2

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v0, 0x7f0a01c3

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v0, 0x7f0a01c4

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v1, 0x7f070321

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v1, 0x7f070303

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v1, 0x7f070304

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v1, 0x7f070305

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isSmsAndDirectionOk()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isTcServiceConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseReportSelected(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private parseReportType(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private reportSms()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->isTcServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->report(I)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->finish()V

    :cond_0
    return-void
.end method

.method private setToolbarItemEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setItemEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setItemEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setItemEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setItemEnabled(Z)V

    return-void
.end method

.method private tcSmsReportDeclare()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070322

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070327

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070325

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$6;

    invoke-direct {v5, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$6;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    invoke-direct {v3, v4, v5}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unBindTcSmsReportService()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->initToolbarListItem()V

    const v0, 0x7f0a01c7

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsButton:Landroid/widget/Button;

    const v0, 0x7f0a01c8

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetAgainAndReportLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01c9

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsAgainButton:Landroid/widget/Button;

    const v0, 0x7f0a01ca

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mReportButton:Landroid/widget/Button;

    const v0, 0x7f0a01cb

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mReturnSmsTextView:Landroid/widget/TextView;

    const v0, 0x7f0a01c6

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTipsResultTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsAgainButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mReportButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportString:[Ljava/lang/String;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSortedChoiceDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTextInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onAttach(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->bindTcSmsReportService()V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f030095

    return v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 4

    const/16 v0, 0x10

    const/4 v3, -0x2

    invoke-virtual {p1, v0, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    sget v1, Lmiui/R$drawable;->icon_info_light:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const v2, 0x800015

    invoke-direct {v1, v3, v3, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onDetach()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportListener:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->unRegisterSmsReportListener(Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->unBindTcSmsReportService()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onPause()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportListener:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->unRegisterSmsReportListener(Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportListener:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->registerSmsReportListener(Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelTcSmsReceivedNotify(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelTcSmsTimeOutOrFailureNotify(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageCorrectionTimeOutOrFailureNotify(Landroid/content/Context;)V

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f070301

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$8;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$8;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Landroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method
