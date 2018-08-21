.class public Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;
.super Landroid/widget/LinearLayout;
.source "AUPhoneInputBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;
    }
.end annotation


# static fields
.field private static final a:[C


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

.field private d:Lcom/ali/user/mobile/login/rds/RDSWraper;

.field private e:Lcom/ali/user/mobile/base/BaseActivity;

.field private f:Lcom/ali/user/mobile/ui/widget/an;

.field private g:Ljava/lang/String;

.field private h:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;

.field protected mPhoneInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->a:[C

    return-void

    :array_0
    .array-data 2
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->h:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->h:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getInputAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getInputPhoneNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_layout_phone_input_box:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->phone_num:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->mPhoneInput:Landroid/widget/EditText;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_region:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->reg_region_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ali/user/mobile/ui/widget/an;

    invoke-direct {v0}, Lcom/ali/user/mobile/ui/widget/an;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->f:Lcom/ali/user/mobile/ui/widget/an;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->f:Lcom/ali/user/mobile/ui/widget/an;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/an;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->mPhoneInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->f:Lcom/ali/user/mobile/ui/widget/an;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->mPhoneInput:Landroid/widget/EditText;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/ag;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/ag;-><init>(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->mPhoneInput:Landroid/widget/EditText;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/ah;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/ah;-><init>(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->mPhoneInput:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/view/View;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_dp_16:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->mPhoneInput:Landroid/widget/EditText;

    invoke-static {v2, v3, v1, v0}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/content/res/Resources;Landroid/widget/EditText;II)I

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "UC-ZC-161215-04"

    const-string/jumbo v1, "success"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->h:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;

    return-object v0
.end method

.method static synthetic access$200()[C
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->a:[C

    return-object v0
.end method

.method static synthetic access$300(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)Lcom/ali/user/mobile/base/BaseActivity;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->e:Lcom/ali/user/mobile/base/BaseActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->a()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    if-nez p1, :cond_3

    const-string/jumbo v0, ""

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->alipay_phoneNumber:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->alipay_china:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    move v1, v2

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "alipay_country_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_phoneNumber:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_china:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    move v1, v2

    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_phoneNumber:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    new-instance v2, Lcom/ali/user/mobile/ui/widget/c/b;

    const-string/jumbo v3, "3,8"

    invoke-direct {v2, v3}, Lcom/ali/user/mobile/ui/widget/c/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setTextFormatter(Lcom/ali/user/mobile/ui/widget/c/a;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    :cond_3
    const-string/jumbo v0, "+"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setTextFormatter(Lcom/ali/user/mobile/ui/widget/c/a;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getInputPhoneNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private getCountryCode()V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/ui/widget/ai;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/ui/widget/ai;-><init>(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addNeedEnabledButton(Landroid/widget/Button;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->f:Lcom/ali/user/mobile/ui/widget/an;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/an;->a(Landroid/widget/Button;)V

    return-void
.end method

.method public attatchActivity(Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->e:Lcom/ali/user/mobile/base/BaseActivity;

    return-void
.end method

.method public autoFill()V
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "UC-ZC-161215-03"

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->b(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    :goto_0
    const-string/jumbo v0, "AUPhoneInputBox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "got phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AUPhoneInputBox"

    const-string/jumbo v1, "empty id"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/ali/user/mobile/security/ui/R$array;->alipay_CountryCodes:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    move v0, v6

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_3

    aget-object v5, v4, v0

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    aget-object v0, v5, v0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "AUPhoneInputBox"

    const-string/jumbo v1, "no local id"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AUPhoneInputBox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to fetch phone number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-direct {p0, v3, v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_3

    :cond_4
    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_0
.end method

.method public final getCountryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getInputAreaCode()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "+"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getInputPhoneNo()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getPhoneInput()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->mPhoneInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_region:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->d:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "OverseaBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->e:Lcom/ali/user/mobile/base/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->e:Lcom/ali/user/mobile/base/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/base/BaseActivity;->closeInputMethod(Landroid/view/View;)V

    :cond_0
    const-string/jumbo v0, "UC-ZC-150512-02"

    const-string/jumbo v1, "zchaiwai"

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->g:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getCountryCode()V

    :cond_1
    return-void
.end method

.method public requestPhoneChanged()V
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->h:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->h:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getInputAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getInputPhoneNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->c:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->mPhoneInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->g:Ljava/lang/String;

    return-void
.end method

.method public setPhoneChangeListener(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->h:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;

    return-void
.end method

.method public setRdsWrapper(Lcom/ali/user/mobile/login/rds/RDSWraper;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->d:Lcom/ali/user/mobile/login/rds/RDSWraper;

    return-void
.end method
