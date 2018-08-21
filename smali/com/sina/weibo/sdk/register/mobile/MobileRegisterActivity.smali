.class public Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;
.super Landroid/app/Activity;
.source "MobileRegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sina/weibo/sdk/component/view/ResizeableLayout$SizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;,
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;,
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;,
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;
    }
.end annotation


# static fields
.field private static final APPKEY_NOT_SET_CN:Ljava/lang/String; = "\u60a8\u7684app_key\u6ca1\u6709\u8bbe\u7f6e"

.field private static final APPKEY_NOT_SET_EN:Ljava/lang/String; = "your appkey not set"

.field private static final APPKEY_NOT_SET_TW:Ljava/lang/String; = "\u60a8\u7684app_key\u6c92\u6709\u8a2d\u7f6e"

.field private static final CANCEL_EN:Ljava/lang/String; = "Cancel"

.field private static final CANCEL_ZH_CN:Ljava/lang/String; = "\u53d6\u6d88"

.field private static final CANCEL_ZH_TW:Ljava/lang/String; = "\u53d6\u6d88"

.field private static final CHINA_CN:Ljava/lang/String; = "\u4e2d\u56fd"

.field private static final CHINA_EN:Ljava/lang/String; = "China"

.field private static final CHINA_TW:Ljava/lang/String; = "\u4e2d\u570b"

.field private static final CODE_LENGTH_CN:Ljava/lang/String; = "\u4f60\u7684\u9a8c\u8bc1\u7801\u4e0d\u662f6\u4f4d\u6570"

.field private static final CODE_LENGTH_EN:Ljava/lang/String; = "Your code isn\u2019t 6-digit long"

.field private static final CODE_LENGTH_TW:Ljava/lang/String; = "\u4f60\u7684\u9a57\u8b49\u78bc\u4e0d\u662f6\u4f4d\u6578"

.field private static final DEFAULT_BG_COLOR:I = -0xd0d0e

.field private static final DEFAULT_CLEAR_BTN:I = 0x16

.field private static final DEFAULT_TEXT_PADDING:I = 0xc

.field private static final DEFAULT_TIPS_TEXT_SIZE:I = 0xd

.field private static final DEFAULT__RIGHT_TRIANGLE:I = 0xd

.field private static final EMPTY_VIEW_TEXT_COLOR:I = -0x424243

.field private static final GET_CODE_BTN_ID:I = 0x3

.field private static final GET_CODE_CN:Ljava/lang/String; = "\u83b7\u53d6\u9a8c\u8bc1\u7801"

.field private static final GET_CODE_EN:Ljava/lang/String; = "Get code"

.field private static final GET_CODE_TW:Ljava/lang/String; = "\u7372\u53d6\u9a57\u8b49\u78bc"

.field private static final HELP_INFO_CN:Ljava/lang/String; = "\u8bf7\u786e\u8ba4\u56fd\u5bb6\u548c\u5730\u533a\u5e76\u586b\u5199\u624b\u673a\u53f7\u7801"

.field private static final HELP_INFO_EN:Ljava/lang/String; = "Confirm your country/region and enter your mobile number"

.field private static final HELP_INFO_TW:Ljava/lang/String; = "\u8acb\u78ba\u8a8d\u570b\u5bb6\u548c\u5730\u5340\u5e76\u586b\u5beb\u624b\u6a5f\u865f"

.field private static final INPUT_AUTH_CODE_CN:Ljava/lang/String; = "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

.field private static final INPUT_AUTH_CODE_EN:Ljava/lang/String; = "Verification code"

.field private static final INPUT_AUTH_CODE_TW:Ljava/lang/String; = "\u8acb\u8f38\u5165\u9a57\u8b49\u78bc"

.field private static final INPUT_PHONE_NUM_CN:Ljava/lang/String; = "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

.field private static final INPUT_PHONE_NUM_EN:Ljava/lang/String; = "Your mobile number"

.field private static final INPUT_PHONE_NUM_TW:Ljava/lang/String; = "\u8acb\u8f38\u5165\u624b\u6a5f\u865f"

.field private static final LINK_TEXT_COLOR:I = -0x7d7d7e

.field private static final MIAN_LINK_TEXT_COLOR:I = -0xaf8251

.field private static final NETWORK_ERROR_CN:Ljava/lang/String; = "\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e"

.field private static final NETWORK_ERROR_EN:Ljava/lang/String; = "your network is  disabled  try again later"

.field private static final NETWORK_ERROR_TW:Ljava/lang/String; = "\u60a8\u7684\u7db2\u7d61\u4e0d\u53ef\u7528\uff0c\u8acb\u7a0d\u5f8c"

.field private static final OK_EN:Ljava/lang/String; = "OK"

.field private static final OK_ZH_CN:Ljava/lang/String; = "\u786e\u5b9a"

.field private static final OK_ZH_TW:Ljava/lang/String; = "\u78ba\u5b9a"

.field private static final PHONE_ERROR_CN:Ljava/lang/String; = "\u60a8\u7684\u624b\u673a\u53f7\u4e0d\u662f11\u4f4d\u6570"

.field private static final PHONE_ERROR_EN:Ljava/lang/String; = "Your phone number isn\u2019t 11-digit long"

.field private static final PHONE_ERROR_TW:Ljava/lang/String; = "\u60a8\u7684\u624b\u6a5f\u865f\u4e0d\u662f11\u4f4d\u6578"

.field private static final PHONE_NUM_CLEAR_BTN_ID:I = 0x4

.field public static final REGISTER_TITLE:Ljava/lang/String; = "register_title"

.field private static final RESIZEABLE_INPUTMETHODHIDE:I = 0x0

.field private static final RESIZEABLE_INPUTMETHODSHOW:I = 0x1

.field public static final RESPONSE_EXPIRES:Ljava/lang/String; = "expires"

.field public static final RESPONSE_OAUTH_TOKEN:Ljava/lang/String; = "oauth_token"

.field private static final SELECT_COUNTRY_REQUEST_CODE:I = 0x0

.field private static final SEND_MSG:Ljava/lang/String; = "http://api.weibo.com/oauth2/sms_authorize/send"

.field private static final SEND_SUBMIT:Ljava/lang/String; = "http://api.weibo.com/oauth2/sms_authorize/submit"

.field private static final SERVER_ERROR_CN:Ljava/lang/String; = "\u670d\u52a1\u5668\u5fd9,\u8bf7\u7a0d\u540e\u518d\u8bd5"

.field private static final SERVER_ERROR_EN:Ljava/lang/String; = "the server is busy, please  wait"

.field private static final SERVER_ERROR_TW:Ljava/lang/String; = "\u670d\u52d9\u5668\u5fd9,\u8acb\u7a0d\u5f8c\u518d\u8a66"

.field private static final SINA_NOTICE_EN:Ljava/lang/String; = "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy"

.field private static final SINA_NOTICE_ZH_CN:Ljava/lang/String; = "\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u8868\u793a\u4f60\u540c\u610f\u670d\u52a1\u4f7f\u7528\u534f\u8bae\u548c\u9690\u79c1\u6761\u6b3e\u3002"

.field private static final SINA_NOTICE_ZH_TW:Ljava/lang/String; = "\u9ede\u64ca\u201c\u78ba\u5b9a\u201d\u6a19\u793a\u4f60\u540c\u610f\u670d\u52d9\u4f7f\u7528\u5354\u8b70\u548c\u96b1\u79c1\u689d\u6b3e\u3002"

.field private static final SINA_PRIVATE_URL:Ljava/lang/String; = "http://m.weibo.cn/reg/privacyagreement?from=h5&wm=3349"

.field private static final SINA_PROTOCOL_URL:Ljava/lang/String; = "http://weibo.cn/dpool/ttt/h5/regagreement.php?from=h5"

.field private static final SINA_SERVICE_EN:Ljava/lang/String; = "Service By Sina WeiBo"

.field private static final SINA_SERVICE_ZH_CN:Ljava/lang/String; = "\u6b64\u670d\u52a1\u7531\u5fae\u535a\u63d0\u4f9b"

.field private static final SINA_SERVICE_ZH_TW:Ljava/lang/String; = "\u6b64\u670d\u52d9\u7531\u5fae\u535a\u63d0\u4f9b"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_BAR_ID:I = 0x1

.field private static final TITLE_CN:Ljava/lang/String; = "\u9a8c\u8bc1\u7801\u767b\u5f55"

.field private static final TITLE_EN:Ljava/lang/String; = "Login"

.field private static final TITLE_TW:Ljava/lang/String; = "\u9a57\u8b49\u78bc\u767b\u9304"

.field private static final TRIANGLE_ID:I = 0x2

.field private static final WAIT_CN:Ljava/lang/String; = "\u6b63\u5728\u5904\u7406\u4e2d....."

.field private static final WAIT_EN:Ljava/lang/String; = "please wait .... "

.field private static final WAIT_TW:Ljava/lang/String; = "\u6b63\u5728\u8655\u7406\u4e2d....."


# instance fields
.field private cfrom:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mBtnRegist:Landroid/widget/Button;

.field private mCheckCode:Landroid/widget/EditText;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCountryCode:Landroid/widget/TextView;

.field private mCountryCodeStr:Ljava/lang/String;

.field private mCountryLayout:Landroid/widget/RelativeLayout;

.field private mCountryName:Landroid/widget/TextView;

.field private mCountryNameStr:Ljava/lang/String;

.field private mGetCodeBtn:Landroid/widget/Button;

.field private mInfoText:Landroid/widget/TextView;

.field private mInputHandler:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;

.field private mKeyHash:Ljava/lang/String;

.field private mLoadingDlg:Landroid/app/ProgressDialog;

.field private mMaxHeight:I

.field private mPackageName:Ljava/lang/String;

.field private mPhoneNum:Landroid/widget/EditText;

.field private mPhoneNumClearBtn:Landroid/widget/ImageView;

.field private mRegistScrollview:Landroid/widget/ScrollView;

.field private mRegiter_llt:Landroid/widget/LinearLayout;

.field private mSpecifyTitle:Ljava/lang/String;

.field private mTips:Landroid/widget/TextView;

.field private titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInputHandler:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mMaxHeight:I

    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->cfrom:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->disableRegisterBtn()V

    return-void
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->enableRegisterBtn()V

    return-void
.end method

.method static synthetic access$4(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->enableGetCodeBtn()V

    return-void
.end method

.method static synthetic access$9()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private disableGetCodeBtn()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    const v1, -0x424243

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private disableRegisterBtn()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    const v1, 0x4dffffff    # 5.3687088E8f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private doCheckOnGetMsg(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->showNetFail()V

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->verifyPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "Your phone number isn\u2019t 11-digit long"

    const-string/jumbo v5, "\u60a8\u7684\u624b\u673a\u53f7\u4e0d\u662f11\u4f4d\u6570"

    const-string/jumbo v6, "\u60a8\u7684\u624b\u6a5f\u865f\u4e0d\u662f11\u4f4d\u6578"

    invoke-static {v3, v4, v5, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private doCheckOnSubmit(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->showNetFail()V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->verifyCheckCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "Your code isn\u2019t 6-digit long"

    const-string/jumbo v4, "\u4f60\u7684\u9a8c\u8bc1\u7801\u4e0d\u662f6\u4f4d\u6570"

    const-string/jumbo v5, "\u4f60\u7684\u9a57\u8b49\u78bc\u4e0d\u662f6\u4f4d\u6578"

    invoke-static {v2, v3, v4, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "Your code isn\u2019t 6-digit long"

    const-string/jumbo v4, "\u4f60\u7684\u9a8c\u8bc1\u7801\u4e0d\u662f6\u4f4d\u6570"

    const-string/jumbo v5, "\u4f60\u7684\u9a57\u8b49\u78bc\u4e0d\u662f6\u4f4d\u6578"

    invoke-static {v2, v3, v4, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sina/weibo/sdk/utils/UIUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private enableGetCodeBtn()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    const v1, -0xaf8251

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private enableRegisterBtn()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private genOKBtn()Landroid/widget/Button;
    .locals 5

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "common_button_big_blue.9.png"

    const-string/jumbo v3, "common_button_big_blue_highlighted.9.png"

    const-string/jumbo v4, "common_button_big_blue_disable.9.png"

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x2e

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-string/jumbo v2, "OK"

    const-string/jumbo v3, "\u786e\u5b9a"

    const-string/jumbo v4, "\u78ba\u5b9a"

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private genProtocalInfoTv()Landroid/widget/TextView;
    .locals 15

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x2

    const/high16 v13, 0x41500000    # 13.0f

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v2, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x8

    invoke-static {p0, v12}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v12

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v12, 0xc

    invoke-static {p0, v12}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v12

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v12, 0xc

    invoke-static {p0, v12}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v12

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v12, 0x41500000    # 13.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    const v12, -0x7d7d7e

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getLanguage()Ljava/util/Locale;

    move-result-object v1

    const/4 v8, -0x1

    const/4 v7, -0x1

    const/4 v5, -0x1

    const/4 v4, -0x1

    const-string/jumbo v3, "\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u8868\u793a\u4f60\u540c\u610f\u670d\u52a1\u4f7f\u7528\u534f\u8bae\u548c\u9690\u79c1\u6761\u6b3e\u3002"

    const-string/jumbo v0, "zh_CN"

    sget-object v12, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v12, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string/jumbo v3, "\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u8868\u793a\u4f60\u540c\u610f\u670d\u52a1\u4f7f\u7528\u534f\u8bae\u548c\u9690\u79c1\u6761\u6b3e\u3002"

    const-string/jumbo v9, "\u670d\u52a1\u4f7f\u7528\u534f\u8bae"

    const-string/jumbo v6, "\u9690\u79c1\u6761\u6b3e"

    const-string/jumbo v12, "\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u8868\u793a\u4f60\u540c\u610f\u670d\u52a1\u4f7f\u7528\u534f\u8bae\u548c\u9690\u79c1\u6761\u6b3e\u3002"

    invoke-virtual {v12, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int v7, v8, v12

    const-string/jumbo v12, "\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u8868\u793a\u4f60\u540c\u610f\u670d\u52a1\u4f7f\u7528\u534f\u8bae\u548c\u9690\u79c1\u6761\u6b3e\u3002"

    invoke-virtual {v12, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int v4, v5, v12

    :goto_0
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v12, -0x1

    if-eq v8, v12, :cond_0

    const/4 v12, -0x1

    if-eq v7, v12, :cond_0

    new-instance v12, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "http://weibo.cn/dpool/ttt/h5/regagreement.php?from=h5&lang="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, p0, p0, v13}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Landroid/content/Context;Ljava/lang/String;)V

    const/16 v13, 0x21

    invoke-interface {v10, v12, v8, v7, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    const/4 v12, -0x1

    if-eq v5, v12, :cond_1

    const/4 v12, -0x1

    if-eq v4, v12, :cond_1

    new-instance v12, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "http://m.weibo.cn/reg/privacyagreement?from=h5&wm=3349&lang="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, p0, p0, v13}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Landroid/content/Context;Ljava/lang/String;)V

    const/16 v13, 0x21

    invoke-interface {v10, v12, v5, v4, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setFocusable(Z)V

    return-object v11

    :cond_2
    sget-object v12, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v12, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v3, "\u9ede\u64ca\u201c\u78ba\u5b9a\u201d\u6a19\u793a\u4f60\u540c\u610f\u670d\u52d9\u4f7f\u7528\u5354\u8b70\u548c\u96b1\u79c1\u689d\u6b3e\u3002"

    const-string/jumbo v0, "zh_HK"

    const-string/jumbo v9, "\u670d\u52d9\u4f7f\u7528\u5354\u8b70"

    const-string/jumbo v6, "\u96b1\u79c1\u689d\u6b3e"

    const-string/jumbo v12, "\u9ede\u64ca\u201c\u78ba\u5b9a\u201d\u6a19\u793a\u4f60\u540c\u610f\u670d\u52d9\u4f7f\u7528\u5354\u8b70\u548c\u96b1\u79c1\u689d\u6b3e\u3002"

    invoke-virtual {v12, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int v7, v8, v12

    const-string/jumbo v12, "\u9ede\u64ca\u201c\u78ba\u5b9a\u201d\u6a19\u793a\u4f60\u540c\u610f\u670d\u52d9\u4f7f\u7528\u5354\u8b70\u548c\u96b1\u79c1\u689d\u6b3e\u3002"

    invoke-virtual {v12, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int v4, v5, v12

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v3, "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy"

    const-string/jumbo v0, "en_US"

    const-string/jumbo v9, "Service Agreement"

    const-string/jumbo v6, "Privacy Policy"

    const-string/jumbo v12, "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy"

    invoke-virtual {v12, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int v7, v8, v12

    const-string/jumbo v12, "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy"

    invoke-virtual {v12, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int v4, v5, v12

    goto/16 :goto_0
.end method

.method private genSinaServiceTv()Landroid/widget/TextView;
    .locals 5

    const/16 v4, 0xc

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const v2, -0x7d7d7e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v2, "Service By Sina WeiBo"

    const-string/jumbo v3, "\u6b64\u670d\u52a1\u7531\u5fae\u535a\u63d0\u4f9b"

    const-string/jumbo v4, "\u6b64\u670d\u52d9\u7531\u5fae\u535a\u63d0\u4f9b"

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private initLoadingDlg()V
    .locals 4

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    const-string/jumbo v1, "please wait .... "

    const-string/jumbo v2, "\u6b63\u5728\u5904\u7406\u4e2d....."

    const-string/jumbo v3, "\u6b63\u5728\u8655\u7406\u4e2d....."

    invoke-static {p0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView()V
    .locals 32

    new-instance v24, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;-><init>(Landroid/content/Context;)V

    new-instance v27, Landroid/view/ViewGroup$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x1

    invoke-direct/range {v27 .. v29}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v27, -0xd0d0e

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->setBackgroundColor(I)V

    new-instance v27, Lcom/sina/weibo/sdk/component/view/TitleBar;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/component/view/TitleBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;

    move-object/from16 v27, v0

    const-string/jumbo v28, "Cancel"

    const-string/jumbo v29, "\u53d6\u6d88"

    const-string/jumbo v30, "\u53d6\u6d88"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setLeftBtnText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mSpecifyTitle:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setTitleBarText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;

    move-object/from16 v27, v0

    new-instance v28, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$2;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    invoke-virtual/range {v27 .. v28}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setTitleBarClickListener(Lcom/sina/weibo/sdk/component/view/TitleBar$ListenerOnTitleBtnClicked;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v25, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string/jumbo v27, "weibosdk_common_shadow_top.9.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v27, 0x3

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->addView(Landroid/view/View;)V

    new-instance v27, Landroid/widget/ScrollView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegistScrollview:Landroid/widget/ScrollView;

    new-instance v26, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, -0x1

    invoke-direct/range {v26 .. v28}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v27, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegistScrollview:Landroid/widget/ScrollView;

    move-object/from16 v27, v0

    const v28, -0xd0d0e

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegistScrollview:Landroid/widget/ScrollView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, -0x2

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    const/high16 v29, 0x41500000    # 13.0f

    invoke-virtual/range {v27 .. v29}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x11

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const v28, -0x7d7d7e

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const-string/jumbo v28, "Confirm your country/region and enter your mobile number"

    const-string/jumbo v29, "\u8bf7\u786e\u8ba4\u56fd\u5bb6\u548c\u5730\u533a\u5e76\u586b\u5199\u624b\u673a\u53f7\u7801"

    const-string/jumbo v30, "\u8acb\u78ba\u8a8d\u570b\u5bb6\u548c\u5730\u5340\u5e76\u586b\u5beb\u624b\u6a5f\u865f"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v27, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const-string/jumbo v28, "login_country_background.9.png"

    const-string/jumbo v29, "login_country_background_highlighted.9.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    const/high16 v29, 0x41880000    # 17.0f

    invoke-virtual/range {v27 .. v29}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const-string/jumbo v28, "0086"

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const v28, -0xadadae

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x10

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x2

    const/16 v28, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v27, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v27, 0x9

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v27, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    const-string/jumbo v27, "triangle.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    const/16 v28, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v28

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v27, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v27, 0xb

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v27, 0xf

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    const/high16 v29, 0x41880000    # 17.0f

    invoke-virtual/range {v27 .. v29}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const v28, -0xadadae

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryNameStr:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x10

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x2

    const/16 v28, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v27, 0x76

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v27, 0x0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v27, 0xf

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v27, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v16, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v28

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v27, 0x10

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const-string/jumbo v27, "login_top_background.9.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v27, Landroid/widget/ImageView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    const-string/jumbo v28, "search_clear_btn_normal.png"

    const-string/jumbo v29, "search_clear_btn_down.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    const/16 v28, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v27, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v27, 0xb

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v27, 0xf

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v27, Landroid/widget/EditText;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    const/high16 v29, 0x41800000    # 16.0f

    invoke-virtual/range {v27 .. v29}, Landroid/widget/EditText;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const/high16 v28, -0x1000000

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const-string/jumbo v28, "Your mobile number"

    const-string/jumbo v29, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    const-string/jumbo v30, "\u8acb\u8f38\u5165\u624b\u6a5f\u865f"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const v28, -0x424243

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->setHintTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->setSelected(Z)V

    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v28

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v27, 0x0

    const/16 v28, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string/jumbo v27, "login_bottom_background.9.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v27, Landroid/widget/Button;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    move-object/from16 v27, v0

    const-string/jumbo v28, "get_code_button.9.png"

    const-string/jumbo v29, "get_code_button_highlighted.9.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x2

    const/16 v28, 0x1d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v27, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v27, 0xb

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v27, 0xf

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    move-object/from16 v27, v0

    const/16 v28, 0x12

    const/16 v29, 0x0

    const/16 v30, 0x12

    const/16 v31, 0x0

    invoke-virtual/range {v27 .. v31}, Landroid/widget/Button;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    move-object/from16 v27, v0

    const-string/jumbo v28, "Get code"

    const-string/jumbo v29, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    const-string/jumbo v30, "\u7372\u53d6\u9a57\u8b49\u78bc"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    move-object/from16 v27, v0

    const/high16 v28, 0x41700000    # 15.0f

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setTextSize(F)V

    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->enableGetCodeBtn()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v27, Landroid/widget/EditText;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    const/high16 v29, 0x41800000    # 16.0f

    invoke-virtual/range {v27 .. v29}, Landroid/widget/EditText;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const/high16 v28, -0x1000000

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const v28, -0x424243

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->setHintTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const-string/jumbo v28, "Verification code"

    const-string/jumbo v29, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    const-string/jumbo v30, "\u8acb\u8f38\u5165\u9a57\u8b49\u78bc"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v27, 0x0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    const/high16 v29, 0x41500000    # 13.0f

    invoke-virtual/range {v27 .. v29}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const v28, -0x1ebedd

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const-string/jumbo v28, ""

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, 0x24

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v28

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v27, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x10

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->genOKBtn()Landroid/widget/Button;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->disableRegisterBtn()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->genSinaServiceTv()Landroid/widget/TextView;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->genProtocalInfoTv()Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegistScrollview:Landroid/widget/ScrollView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegistScrollview:Landroid/widget/ScrollView;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->initLoadingDlg()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    move-object/from16 v27, v0

    new-instance v28, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    move-object/from16 v27, v0

    new-instance v28, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->setSizeChangeListener(Lcom/sina/weibo/sdk/component/view/ResizeableLayout$SizeChangeListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private showNetFail()V
    .locals 5

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "your network is  disabled  try again later"

    const-string/jumbo v3, "\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e"

    const-string/jumbo v4, "\u60a8\u7684\u7db2\u7d61\u4e0d\u53ef\u7528\uff0c\u8acb\u7a0d\u5f8c"

    invoke-static {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/utils/UIUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private verifyCheckCode(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyPhoneNum(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "0086"

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCodeStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mAppkey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "appkey"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mAppkey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "packagename"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "key_hash"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mKeyHash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "phone"

    const-string/jumbo v2, "0086"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    const-string/jumbo v2, "0031405000"

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "http://api.weibo.com/oauth2/sms_authorize/send"

    const-string/jumbo v2, "GET"

    new-instance v3, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$3;

    invoke-direct {v3, p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$3;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    invoke-static {p0, v1, v0, v2, v3}, Lcom/sina/weibo/sdk/net/NetUtils;->internalHttpRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_0

    const-string/jumbo v0, "code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCodeStr:Ljava/lang/String;

    const-string/jumbo v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryNameStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCodeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryNameStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    if-ne p1, v5, :cond_1

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->doCheckOnGetMsg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->disableGetCodeBtn()V

    invoke-virtual {p0, v4, v2}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getMsg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_2

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    if-ne p1, v5, :cond_3

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->doCheckOnSubmit(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->submit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Pass wrong params!!"

    invoke-static {v0, v1, v4}, Lcom/sina/weibo/sdk/utils/UIUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->finish()V

    :cond_0
    const-string/jumbo v0, "appKey"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mAppkey:Ljava/lang/String;

    const-string/jumbo v0, "packagename"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, "key_hash"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mKeyHash:Ljava/lang/String;

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mAppkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "your appkey not set"

    const-string/jumbo v2, "\u60a8\u7684app_key\u6ca1\u6709\u8bbe\u7f6e"

    const-string/jumbo v3, "\u60a8\u7684app_key\u6c92\u6709\u8a2d\u7f6e"

    invoke-static {p0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/sina/weibo/sdk/utils/UIUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->finish()V

    :cond_1
    const-string/jumbo v0, "register_title"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Login"

    const-string/jumbo v1, "\u9a8c\u8bc1\u7801\u767b\u5f55"

    const-string/jumbo v2, "\u9a57\u8b49\u78bc\u767b\u9304"

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    iput-object v7, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mSpecifyTitle:Ljava/lang/String;

    const-string/jumbo v0, "0086"

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCodeStr:Ljava/lang/String;

    const-string/jumbo v0, "China"

    const-string/jumbo v1, "\u4e2d\u56fd"

    const-string/jumbo v2, "\u4e2d\u570b"

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryNameStr:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->initView()V

    new-instance v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$1;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$1;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;JJ)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->verifyPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const-string/jumbo v2, "Your phone number isn\u2019t 11-digit long"

    const-string/jumbo v3, "\u60a8\u7684\u624b\u673a\u53f7\u4e0d\u662f11\u4f4d\u6570"

    const-string/jumbo v4, "\u60a8\u7684\u624b\u6a5f\u865f\u4e0d\u662f11\u4f4d\u6578"

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 4

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mMaxHeight:I

    if-ge v2, p2, :cond_2

    move v2, p2

    :goto_0
    iput v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mMaxHeight:I

    const/4 v0, 0x0

    if-ge p2, p4, :cond_3

    const/4 v0, 0x1

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInputHandler:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;

    invoke-virtual {v2, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mMaxHeight:I

    goto :goto_0

    :cond_3
    if-le p2, p4, :cond_4

    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mMaxHeight:I

    if-ge p2, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    if-ne p2, p4, :cond_0

    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mMaxHeight:I

    if-eq p2, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public submit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mAppkey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "appkey"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mAppkey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "packagename"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "key_hash"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mKeyHash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    const-string/jumbo v2, "0031405000"

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "cfrom"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->cfrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    const-string/jumbo v1, "http://api.weibo.com/oauth2/sms_authorize/submit"

    const-string/jumbo v2, "GET"

    new-instance v3, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;

    invoke-direct {v3, p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Ljava/lang/String;)V

    invoke-static {p0, v1, v0, v2, v3}, Lcom/sina/weibo/sdk/net/NetUtils;->internalHttpRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    return-void
.end method
