.class public Lcom/flybird/FBInput;
.super Lcom/flybird/FBView;
.source "FBInput.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/alipay/android/app/template/FBFocusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flybird/FBInput$NumberOnlyKeyListener;,
        Lcom/flybird/FBInput$DecorViewInfo;
    }
.end annotation


# instance fields
.field private isCleanIconShowing:Z

.field private mBgImgs:[Ljava/lang/String;

.field private mBottom:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCleanDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditText:Landroid/widget/EditText;

.field private mIsFocus:Z

.field private mKeyboard:Ljava/lang/String;

.field private mLastText:Ljava/lang/String;

.field private mLeft:I

.field private mMonthDialog:Landroid/app/Dialog;

.field private mNotify:Z

.field private mPlaceHolderSize:Ljava/lang/String;

.field private mRight:I

.field private mTop:I

.field private mType:Ljava/lang/String;

.field private mValiMonth:Ljava/lang/String;

.field private mValiYear:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/flybird/FBBorderInput;

    invoke-direct {v0, p1}, Lcom/flybird/FBBorderInput;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    iput-object v2, p0, Lcom/flybird/FBInput;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v4, p0, Lcom/flybird/FBInput;->isCleanIconShowing:Z

    iput-boolean v1, p0, Lcom/flybird/FBInput;->mNotify:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBInput;->mValiYear:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBInput;->mValiMonth:Ljava/lang/String;

    iput-object v2, p0, Lcom/flybird/FBInput;->mMonthDialog:Landroid/app/Dialog;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/flybird/FBInput;->mIsFocus:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBInput;->mKeyboard:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBInput;->mLastText:Ljava/lang/String;

    iput-object v2, p0, Lcom/flybird/FBInput;->mBgImgs:[Ljava/lang/String;

    iput-object v2, p0, Lcom/flybird/FBInput;->mPlaceHolderSize:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/flybird/FBInput;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    iput-boolean v1, v0, Lcom/flybird/FBDocument;->mHasInput:Z

    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string/jumbo v1, "mCursorDrawableRes"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, -0x1

    const-string/jumbo v1, "template_clean_icon"

    const-string/jumbo v2, "drawable"

    const-string/jumbo v3, "com.alipay.android.app.template"

    invoke-static {p1, v1, v2, v3}, Lcom/alipay/birdnest/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/alipay/birdnest/a/i;->a(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBInput;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/flybird/FBInput;->initTextWatcher()V

    invoke-direct {p0}, Lcom/flybird/FBInput;->initOnEditorActionListener()V

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/flybird/FBInput;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/flybird/FBInput$3;

    invoke-direct {v1, p0}, Lcom/flybird/FBInput$3;-><init>(Lcom/flybird/FBInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/flybird/FBInput;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBInput;->mNotify:Z

    return v0
.end method

.method static synthetic access$100(Lcom/flybird/FBInput;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flybird/FBInput;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBInput;->mLastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/flybird/FBInput;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBInput;->mLastText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/flybird/FBInput;)V
    .locals 0

    invoke-direct {p0}, Lcom/flybird/FBInput;->setCleanIcon()V

    return-void
.end method

.method static synthetic access$400(Lcom/flybird/FBInput;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flybird/FBInput;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/flybird/FBInput;->checkKeyboardParent(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/flybird/FBInput;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/flybird/FBInput;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBInput;->mValiMonth:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/flybird/FBInput;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBInput;->mValiMonth:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/flybird/FBInput;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBInput;->mValiYear:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/flybird/FBInput;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBInput;->mValiYear:Ljava/lang/String;

    return-object p1
.end method

.method private checkKeyboardParent(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "flybird_main_layout"

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "com.alipay.android.app"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/birdnest/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/flybird/FBDocument;->setKeyboardParent(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getKeyboardParentView()Landroid/widget/LinearLayout;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getCurrentDecorView()Lcom/flybird/FBInput$DecorViewInfo;
    .locals 3

    new-instance v2, Lcom/flybird/FBInput$DecorViewInfo;

    invoke-direct {v2, p0}, Lcom/flybird/FBInput$DecorViewInfo;-><init>(Lcom/flybird/FBInput;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/flybird/FBInput$DecorViewInfo;->decorView:Landroid/view/View;

    iput-boolean v1, v2, Lcom/flybird/FBInput$DecorViewInfo;->isDialog:Z

    return-object v2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private initOnEditorActionListener()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/flybird/FBInput$1;

    invoke-direct {v1, p0}, Lcom/flybird/FBInput$1;-><init>(Lcom/flybird/FBInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0
.end method

.method private initTextWatcher()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/flybird/FBInput$2;

    invoke-direct {v1, p0}, Lcom/flybird/FBInput$2;-><init>(Lcom/flybird/FBInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private setCleanIcon()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    const-string/jumbo v1, "payspwd"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBInput;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBInput;->isCleanIconShowing:Z

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/flybird/FBInput;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/FBInput;->isCleanIconShowing:Z

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setHint(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBInput;->mPlaceHolderSize:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<font size=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBInput;->mPlaceHolderSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/tag/html/a;->a(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method private setSystemSoftInput(Landroid/widget/EditText;)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alipay/birdnest/a/i;->a(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method private showMonthDialog()V
    .locals 5

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/flybird/FBInput;->mMonthDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mMonthDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput;->mValiYear:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/flybird/FBInput;->mValiYear:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/flybird/FBInput;->mValiMonth:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/flybird/FBInput;->mValiMonth:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/flybird/FBInput;->getFBDocument()Lcom/flybird/FBDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->i()Lcom/alipay/birdnest/api/BirdNestEngine$l;

    move-result-object v2

    iget-object v3, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    iget-object v3, v3, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/flybird/FBInput$6;

    invoke-direct {v4, p0}, Lcom/flybird/FBInput$6;-><init>(Lcom/flybird/FBInput;)V

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/alipay/birdnest/api/BirdNestEngine$l;->a(Landroid/content/Context;IILcom/alipay/birdnest/api/BirdNestEngine$l$b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public doDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplatePasswordService;->clear(I)V

    :cond_0
    invoke-super {p0}, Lcom/flybird/FBView;->doDestroy()V

    iput-object v2, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/flybird/FBInput;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flybird/FBInput;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    const-string/jumbo v1, "month"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/flybird/FBInput;->showMonthDialog()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    const-string/jumbo v1, "checkbox"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/flybird/FBInput;->showKeyboard()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/flybird/FBView;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/flybird/FBInput;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->getOpacity()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    iget-object v1, p0, Lcom/flybird/FBInput;->mKeyboard:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isDefaultKeyboard()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    invoke-direct {p0}, Lcom/flybird/FBInput;->getCurrentDecorView()Lcom/flybird/FBInput$DecorViewInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/flybird/FBInput$DecorViewInfo;->decorView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/flybird/FBInput;->showKeyboard()V

    :cond_3
    invoke-direct {p0}, Lcom/flybird/FBInput;->setCleanIcon()V

    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->onFocusChange(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public onLoadFinish()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/flybird/FBInput;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/flybird/FBView;->onLoadFinish()V

    invoke-direct {p0}, Lcom/flybird/FBInput;->setCleanIcon()V

    iget-object v0, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    const-string/jumbo v1, "checkbox"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    const-string/jumbo v1, "month"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/flybird/FBInput;->mIsFocus:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0, p0}, Lcom/flybird/FBDocument;->setAutoFocusInput(Lcom/flybird/FBInput;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_2
    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    const-string/jumbo v1, "checkbox"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flybird/FBInput;->mBgImgs:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    iget v3, p0, Lcom/flybird/FBInput;->mWidth:I

    iget v4, p0, Lcom/flybird/FBInput;->mHeight:I

    iget-object v5, p0, Lcom/flybird/FBInput;->mBgImgs:[Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alipay/birdnest/a/i;->a(Landroid/content/Context;Ljava/lang/String;II[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    const-string/jumbo v1, "month"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v7, p0, Lcom/flybird/FBInput;->mNotify:Z

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iput-boolean v6, p0, Lcom/flybird/FBInput;->mNotify:Z

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/flybird/FBInput;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/flybird/FBInput;->isCleanIconShowing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flybird/FBInput;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/flybird/FBInput;->mWidth:I

    iget v2, p0, Lcom/flybird/FBInput;->mHeight:I

    iget-object v3, p0, Lcom/flybird/FBInput;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/flybird/FBInput;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v1, v3

    div-int/lit8 v5, v3, 0x4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/flybird/FBInput;->mLeft:I

    sub-int v1, v2, v4

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/flybird/FBInput;->mTop:I

    iget v1, p0, Lcom/flybird/FBInput;->mLeft:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/flybird/FBInput;->mRight:I

    iget v1, p0, Lcom/flybird/FBInput;->mTop:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/flybird/FBInput;->mBottom:I

    :cond_2
    iget v1, p0, Lcom/flybird/FBInput;->mLeft:I

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcom/flybird/FBInput;->isCleanIconShowing:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/flybird/FBInput;->mLeft:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/flybird/FBInput;->mRight:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/flybird/FBInput;->mTop:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/flybird/FBInput;->mBottom:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/flybird/FBInput;->mValiMonth:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/flybird/FBInput;->mValiYear:Ljava/lang/String;

    iget-object v1, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/alipay/android/app/template/TemplatePasswordService;->clear(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public requestFocus()V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    invoke-virtual {p0}, Lcom/flybird/FBInput;->showKeyboard()V

    return-void
.end method

.method showKeyboard()V
    .locals 9

    const/16 v7, 0x258

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flybird/FBInput;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isDefaultKeyboard()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    iget-object v1, p0, Lcom/flybird/FBInput;->mKeyboard:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isDefaultKeyboard()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    invoke-direct {p0}, Lcom/flybird/FBInput;->getCurrentDecorView()Lcom/flybird/FBInput$DecorViewInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/flybird/FBInput$DecorViewInfo;->decorView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    :cond_3
    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-nez v0, :cond_c

    move v6, v7

    :goto_1
    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    move-object v3, v2

    move-object v4, v2

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/flybird/FBInput;->getCurrentDecorView()Lcom/flybird/FBInput$DecorViewInfo;

    move-result-object v0

    iget-object v4, v0, Lcom/flybird/FBInput$DecorViewInfo;->decorView:Landroid/view/View;

    iget-boolean v6, v0, Lcom/flybird/FBInput$DecorViewInfo;->isDialog:Z

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v0

    :goto_2
    if-nez v6, :cond_6

    iget-object v1, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v3, 0x1

    :goto_3
    if-nez v6, :cond_8

    iget-object v1, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getKeyboardParentView()Landroid/widget/LinearLayout;

    move-result-object v2

    :goto_4
    iget-object v1, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v8, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/flybird/FBInput$4;

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/flybird/FBInput$4;-><init>(Lcom/flybird/FBInput;Landroid/view/View;ZLandroid/view/View;Z)V

    int-to-long v2, v7

    invoke-virtual {v8, v0, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_5
    move v0, v5

    goto :goto_2

    :cond_6
    move v3, v5

    goto :goto_3

    :cond_7
    const v1, 0x1020002

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "dialog_linear_layout"

    invoke-static {v1, v2}, Lcom/alipay/birdnest/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_b

    const/16 v7, 0x1f4

    :goto_5
    if-nez v3, :cond_a

    invoke-direct {p0, v2, v4}, Lcom/flybird/FBInput;->checkKeyboardParent(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    :goto_6
    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/birdnest/a/i;->a(Ljava/lang/String;)Lcom/alipay/android/app/template/KeyboardType;

    move-result-object v3

    invoke-interface/range {v1 .. v7}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z

    invoke-static {}, Lcom/alipay/birdnest/a/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/flybird/FBInput$5;

    invoke-direct {v1, p0}, Lcom/flybird/FBInput$5;-><init>(Lcom/flybird/FBInput;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_a
    move-object v5, v2

    goto :goto_6

    :cond_b
    move v7, v5

    goto :goto_5

    :cond_c
    move v6, v5

    goto/16 :goto_1
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/flybird/FBInput;->mNotify:Z

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBInput;->mLastText:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/flybird/FBInput;->mNotify:Z

    const-string/jumbo v0, ""

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/flybird/FBInput;->isCleanIconShowing:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "autofocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flybird/FBInput;->mIsFocus:Z

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0, p0}, Lcom/flybird/FBDocument;->setAutoFocusable(Lcom/alipay/android/app/template/FBFocusable;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "keyboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p2, p0, Lcom/flybird/FBInput;->mKeyboard:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "placeholder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/alipay/birdnest/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_5
    invoke-direct {p0, p2}, Lcom/flybird/FBInput;->setHint(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "maxlength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v3, p0, Lcom/flybird/FBInput;->mNotify:Z

    iget-object v0, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/flybird/FBInput;->mNotify:Z

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v3, p0, Lcom/flybird/FBInput;->isCleanIconShowing:Z

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v0, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto :goto_1

    :cond_b
    move v2, v3

    goto :goto_2

    :cond_c
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iput-object p2, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    const-string/jumbo v0, "checkbox"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    iput-boolean v3, v0, Lcom/flybird/FBDocument;->mHasInput:Z

    iget-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mCheckBox:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    iput-boolean v2, v0, Lcom/flybird/FBDocument;->mHasInput:Z

    iget-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    :cond_e
    const-string/jumbo v0, "money"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/flybird/FBInput;->setSystemSoftInput(Landroid/widget/EditText;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "num"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "number"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/flybird/FBInput$NumberOnlyKeyListener;

    invoke-direct {v1}, Lcom/flybird/FBInput$NumberOnlyKeyListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/flybird/FBInput;->setSystemSoftInput(Landroid/widget/EditText;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v0, "month"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    goto/16 :goto_0

    :cond_13
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "font-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "px"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "placeholder-font-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lcom/flybird/FBInput;->mPlaceHolderSize:Ljava/lang/String;

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flybird/FBInput;->setHint(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "placeholder-color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-static {p2}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-static {p2}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "font-weight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "bold"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "text-align"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "background-image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_a
    iget-object v0, p0, Lcom/flybird/FBInput;->mBgImgs:[Ljava/lang/String;

    if-nez v0, :cond_b

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/flybird/FBInput;->mBgImgs:[Ljava/lang/String;

    :cond_b
    iget-object v0, p0, Lcom/flybird/FBInput;->mBgImgs:[Ljava/lang/String;

    aput-object p2, v0, v1

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "background-image:checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_d
    iget-object v0, p0, Lcom/flybird/FBInput;->mBgImgs:[Ljava/lang/String;

    if-nez v0, :cond_e

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/flybird/FBInput;->mBgImgs:[Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/flybird/FBInput;->mBgImgs:[Ljava/lang/String;

    aput-object p2, v0, v2

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "background-image:disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_10
    iget-object v0, p0, Lcom/flybird/FBInput;->mBgImgs:[Ljava/lang/String;

    if-nez v0, :cond_11

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/flybird/FBInput;->mBgImgs:[Ljava/lang/String;

    :cond_11
    iget-object v0, p0, Lcom/flybird/FBInput;->mBgImgs:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p2, v0, v1

    goto/16 :goto_0

    :cond_12
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateFunc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateFunc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->mType:Ljava/lang/String;

    const-string/jumbo v1, "checkbox"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/flybird/FBInput;->mIsFocus:Z

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/flybird/FBInput;->showKeyboard()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "blur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/FBInput;->mIsFocus:Z

    iget-object v0, p0, Lcom/flybird/FBInput;->mDoc:Lcom/flybird/FBDocument;

    invoke-direct {p0}, Lcom/flybird/FBInput;->getCurrentDecorView()Lcom/flybird/FBInput$DecorViewInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/flybird/FBInput$DecorViewInfo;->decorView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/flybird/FBDocument;->hiddenKeyboardService(Landroid/view/View;Z)Z

    goto :goto_0
.end method
