.class public Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;
.super Lmiui/app/Activity;
.source "PhoneBindingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;
    }
.end annotation


# static fields
.field private static final COUNT_DOWN_ALL_TIME:I = 0xea60

.field private static final COUNT_DOWN_INTERVAL:I = 0x3e8

.field public static final PHONE_NUMBER_PATTERN:Ljava/lang/String; = "^1[0-9]{10}$"

.field private static final REQUEST_BINDING_PHONE:I = 0x0

.field private static final REQUEST_LOGIN_CODE:I = 0x1

.field private static final REQUEST_PHONE_REGISTER:I = 0x0

.field private static final REQUEST_PHONE_VERIFY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhoneBindingActivity"

.field public static final VERIFY_CODE_PATTERN:Ljava/lang/String; = "^[0-9]{4,6}$"


# instance fields
.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneNumberText:Landroid/widget/EditText;

.field private mSaveButton:Landroid/widget/Button;

.field private mTimer:Landroid/os/CountDownTimer;

.field private mVerifyButton:Landroid/widget/Button;

.field private mVerifyCode:Ljava/lang/String;

.field private mVerifyCodeText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mVerifyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mVerifyCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method private checkLogin()V
    .locals 2

    invoke-static {p0}, Lcom/miui/personalassistant/utils/XiaomiAccount;->hasLogin(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/personalassistant/express/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private checkPhoneDuplicate(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getBindedPhones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkPhoneValid(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v2, "^1[0-9]{10}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private checkVerifyCode(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v2, "^[0-9]{4,6}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const v4, 0x1b0b01a3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mPhoneNumberText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mPhoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->checkPhoneValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mPhoneNumberText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->checkPhoneDuplicate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1b0b01a2

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mPhoneNumberText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mVerifyButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    new-instance v0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;-><init>(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$1;)V

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mPhoneNumberText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mPhoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mVerifyCodeText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mVerifyCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->checkPhoneValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mPhoneNumberText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mVerifyCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->checkVerifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x1b0b0197

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mVerifyCodeText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;-><init>(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$1;)V

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b090205
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->checkLogin()V

    const v0, 0x1b04007d

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->setContentView(I)V

    const v0, 0x1b090202

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mPhoneNumberText:Landroid/widget/EditText;

    const v0, 0x1b090204

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mVerifyCodeText:Landroid/widget/EditText;

    const v0, 0x1b090205

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mVerifyButton:Landroid/widget/Button;

    const v0, 0x1b090206

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mSaveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mVerifyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$1;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$1;-><init>(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;JJLjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method
