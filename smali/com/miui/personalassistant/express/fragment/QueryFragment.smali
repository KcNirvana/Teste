.class public Lcom/miui/personalassistant/express/fragment/QueryFragment;
.super Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;
.source "QueryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/express/fragment/QueryFragment$OrderNumberChangedListener;,
        Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_SCAN_QR:I = 0x2

.field public static final TAG:Ljava/lang/String; = "QueryFragment"

.field private static sIllegalSequencePattern:Ljava/util/regex/Pattern;


# instance fields
.field private mClipboardRemindDialog:Landroid/app/Dialog;

.field private mCompanyCode:Ljava/lang/String;

.field private mCompanyName:Ljava/lang/String;

.field private mFrom:Ljava/lang/String;

.field private mListener:Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;

.field private mNumber:Ljava/lang/String;

.field private mOrderNumber:Landroid/widget/EditText;

.field private mPrefNumber:Ljava/lang/String;

.field private mQueryButton:Landroid/widget/Button;

.field private mQueryMode:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

.field private mScanButton:Landroid/widget/Button;

.field private mShouldRefreshInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "[^0-9a-zA-Z-\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->sIllegalSequencePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;-><init>()V

    sget-object v0, Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;->UNKNOWN:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mQueryMode:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/express/fragment/QueryFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/personalassistant/express/fragment/QueryFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/express/fragment/QueryFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mOrderNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/express/fragment/QueryFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->query()V

    return-void
.end method

.method static synthetic access$400()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->sIllegalSequencePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/express/fragment/QueryFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mQueryButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getNumberFromClipboard()Ljava/lang/CharSequence;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    const-string/jumbo v6, "clipboard"

    invoke-virtual {v5, v6}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move-object v3, v4

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/miui/personalassistant/express/fragment/QueryFragment;->sIllegalSequencePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    move-object v3, v4

    goto :goto_0
.end method

.method private hideScanQRButton()V
    .locals 4

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mOrderNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mOrderNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mOrderNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mOrderNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mScanButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private initArguments()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v1, "companyCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    const-string/jumbo v1, "companyName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyName:Ljava/lang/String;

    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mFrom:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;->LOGISTICS_UNSPECIFIED:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mQueryMode:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;->LOGISTICS_SPECIFIED:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mQueryMode:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    goto :goto_0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 1

    const v0, 0x1b0901ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mQueryButton:Landroid/widget/Button;

    const v0, 0x1b0901fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mScanButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mQueryButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isStoredNumber()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private needToRemind(Ljava/lang/CharSequence;)Z
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/express/Preferences;->getLastClipboardNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onResultScanQR(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mShouldRefreshInfo:Z

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->query()V

    :cond_0
    return-void
.end method

.method private query()V
    .locals 6

    sget-object v3, Lcom/miui/personalassistant/express/fragment/QueryFragment;->sIllegalSequencePattern:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->removeBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mOrderNumber:Landroid/widget/EditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->showSoftInputPanel(Landroid/content/Context;Landroid/view/View;Z)V

    new-instance v0, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-direct {v0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;-><init>()V

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mQueryMode:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    sget-object v4, Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;->LOGISTICS_SPECIFIED:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    if-eq v3, v4, :cond_3

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->isStoredNumber()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setCompanyCode(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mShouldRefreshInfo:Z

    :cond_3
    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->storeSerialNumber()V

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->removeBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setOrderNumber(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v3, "yellowpage"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v3, "inquiry_history"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v3, "express"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    goto :goto_1
.end method

.method private removeBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private retrieveOrderNumber()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/express/Preferences;->getLastQueryNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mQueryMode:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    sget-object v2, Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;->LOGISTICS_SPECIFIED:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method private setupOrderNumber()V
    .locals 4

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mFrom:Ljava/lang/String;

    const-string/jumbo v1, "pa"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mOrderNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mOrderNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/personalassistant/express/fragment/QueryFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment$2;-><init>(Lcom/miui/personalassistant/express/fragment/QueryFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private shouldHideScanQRButton()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.scanbarcode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {v1, v0}, Lcom/miui/personalassistant/util/IntentUtil;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showClipboardRemindDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b0134

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b0133

    new-instance v3, Lcom/miui/personalassistant/express/fragment/QueryFragment$3;

    invoke-direct {v3, p0, p1}, Lcom/miui/personalassistant/express/fragment/QueryFragment$3;-><init>(Lcom/miui/personalassistant/express/fragment/QueryFragment;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static showSoftInputPanel(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private storeClipboardNumber(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/Preferences;->setLastClipboardNumber(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private storeSerialNumber()V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/Preferences;->setLastQueryNumber(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mPrefNumber:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/Preferences;->setLastQueryNumber(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->onResultScanQR(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mListener:Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;

    :goto_0
    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->initArguments()V

    return-void

    :cond_0
    const-string/jumbo v0, "QueryFragment"

    const-string/jumbo v1, "parent activity is not an instance of ExpressInquiryListener"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mOrderNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->query()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.scanbarcode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {v1, v0}, Lcom/miui/personalassistant/util/IntentUtil;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.scanbarcode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "isBackToThirdApp"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "miref"

    const-string/jumbo v2, "PersonalAssistant"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b0901fe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const v3, 0x1b04007b

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v3, "companyCode"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v3, "companyName"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyName:Ljava/lang/String;

    const-string/jumbo v3, "query_mode"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mQueryMode:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    :cond_1
    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mQueryMode:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    sget-object v4, Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;->UNKNOWN:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;->LOGISTICS_UNSPECIFIED:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    iput-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mQueryMode:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    iget-object v4, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-direct {p0, v2}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->initViews(Landroid/view/View;)V

    const v3, 0x1b090200

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mOrderNumber:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mOrderNumber:Landroid/widget/EditText;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mOrderNumber:Landroid/widget/EditText;

    new-instance v4, Lcom/miui/personalassistant/express/fragment/QueryFragment$OrderNumberChangedListener;

    invoke-direct {v4, p0, v5}, Lcom/miui/personalassistant/express/fragment/QueryFragment$OrderNumberChangedListener;-><init>(Lcom/miui/personalassistant/express/fragment/QueryFragment;Lcom/miui/personalassistant/express/fragment/QueryFragment$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mOrderNumber:Landroid/widget/EditText;

    new-instance v4, Lcom/miui/personalassistant/express/fragment/QueryFragment$1;

    invoke-direct {v4, p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment$1;-><init>(Lcom/miui/personalassistant/express/fragment/QueryFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->retrieveOrderNumber()V

    :cond_4
    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->setupOrderNumber()V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->getNumberFromClipboard()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->needToRemind(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->storeClipboardNumber(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->showClipboardRemindDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mClipboardRemindDialog:Landroid/app/Dialog;

    :cond_5
    const-string/jumbo v3, "express_search_view"

    invoke-static {v3, v5}, Lcom/miui/personalassistant/express/util/StatUtil;->recordViewEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_6
    sget-object v3, Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;->LOGISTICS_SPECIFIED:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    iput-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mQueryMode:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;->onPause()V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mClipboardRemindDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mClipboardRemindDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mClipboardRemindDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mClipboardRemindDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    const v1, 0x1b0b0132

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->setTitle(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "companyCode"

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "companyName"

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mCompanyName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "query_mode"

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mQueryMode:Lcom/miui/personalassistant/express/fragment/QueryFragment$QueryMode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;->onStart()V

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mShouldRefreshInfo:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->retrieveOrderNumber()V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->setupOrderNumber()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment;->mShouldRefreshInfo:Z

    :cond_0
    return-void
.end method
