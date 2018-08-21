.class public Lcom/miui/payment/ui/edit/EditLayoutContainer;
.super Landroid/widget/LinearLayout;
.source "EditLayoutContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EditLayoutContainer"


# instance fields
.field private mAmountView:Lcom/miui/payment/ui/view/AmountView;

.field private mCategoryView:Lcom/miui/payment/ui/view/CategoryView;

.field private mCommentView:Landroid/widget/EditText;

.field private mDateTimePickerDialog:Lcom/miui/payment/ui/view/DateTimePickerDialog;

.field private mEditData:Lcom/miui/payment/ui/edit/EditData;

.field private mEditPresenter:Lcom/miui/payment/ui/edit/EditPresenter;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mIsNewAction:Z

.field private mMethodClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMethodView:Lcom/miui/payment/ui/view/MethodView;

.field private mSaveBtn:Landroid/widget/Button;

.field private mTimeView:Lcom/miui/payment/ui/view/TimeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/payment/ui/edit/EditLayoutContainer$1;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer$1;-><init>(Lcom/miui/payment/ui/edit/EditLayoutContainer;)V

    iput-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mMethodClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/payment/ui/edit/EditLayoutContainer$1;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer$1;-><init>(Lcom/miui/payment/ui/edit/EditLayoutContainer;)V

    iput-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mMethodClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/payment/ui/edit/EditLayoutContainer$1;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer$1;-><init>(Lcom/miui/payment/ui/edit/EditLayoutContainer;)V

    iput-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mMethodClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/payment/ui/edit/EditLayoutContainer;)Lcom/miui/payment/ui/view/MethodView;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mMethodView:Lcom/miui/payment/ui/view/MethodView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/payment/ui/edit/EditLayoutContainer;)Lcom/miui/payment/ui/view/CategoryView;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mCategoryView:Lcom/miui/payment/ui/view/CategoryView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/payment/ui/edit/EditLayoutContainer;)Landroid/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/payment/ui/edit/EditLayoutContainer;)Lcom/miui/payment/ui/view/TimeTextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mTimeView:Lcom/miui/payment/ui/view/TimeTextView;

    return-object v0
.end method

.method private changeData()V
    .locals 3

    new-instance v0, Lcom/miui/payment/ui/view/DateTimePickerDialog;

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/payment/ui/edit/EditLayoutContainer$3;

    invoke-direct {v2, p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer$3;-><init>(Lcom/miui/payment/ui/edit/EditLayoutContainer;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/payment/ui/view/DateTimePickerDialog;-><init>(Landroid/content/Context;Lcom/miui/payment/ui/view/DateTimePickerDialog$OnTimeSetListener;)V

    iput-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mDateTimePickerDialog:Lcom/miui/payment/ui/view/DateTimePickerDialog;

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mDateTimePickerDialog:Lcom/miui/payment/ui/view/DateTimePickerDialog;

    invoke-virtual {v0}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->show()V

    return-void
.end method

.method private getCategoryCustomView()Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1b0400d7

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    new-instance v0, Lcom/miui/payment/ui/edit/CategoryAdapter;

    invoke-direct {v0, v1}, Lcom/miui/payment/ui/edit/CategoryAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/miui/payment/ui/edit/EditLayoutContainer$2;

    invoke-direct {v3, p0, v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer$2;-><init>(Lcom/miui/payment/ui/edit/EditLayoutContainer;Lcom/miui/payment/ui/edit/CategoryAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v2
.end method

.method private onCategoryViewClicked()V
    .locals 3

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1b0b00e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->getCategoryCustomView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->showCustomDialog(Landroid/app/FragmentManager;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private onMethodViewClicked()V
    .locals 3

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/payment/utils/MethodHelper;->getAllPresetMethodsDesc(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mMethodClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2}, Lcom/miui/payment/ui/dialog/CategoryEditorDialogFragment;->showSingleChoiceDialog(Landroid/app/FragmentManager;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private onSaveButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditPresenter:Lcom/miui/payment/ui/edit/EditPresenter;

    if-nez v0, :cond_0

    const-string/jumbo v0, "EditLayoutContainer"

    const-string/jumbo v1, "edit presenter is null"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditPresenter:Lcom/miui/payment/ui/edit/EditPresenter;

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->getEditData()Lcom/miui/payment/ui/edit/EditData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/payment/ui/edit/EditPresenter;->saveEditData(Lcom/miui/payment/ui/edit/EditData;)V

    invoke-virtual {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->getEditData()Lcom/miui/payment/ui/edit/EditData;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/payment/utils/StatUtil;->recordSuccessEvent(Lcom/miui/payment/ui/edit/EditData;)V

    goto :goto_0
.end method

.method private onTimeViewClicked()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->changeData()V

    return-void
.end method

.method private setAmount(D)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mAmountView:Lcom/miui/payment/ui/view/AmountView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/ui/view/AmountView;->setAmount(D)V

    return-void
.end method

.method private setCategoryCode(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mCategoryView:Lcom/miui/payment/ui/view/CategoryView;

    invoke-virtual {v0, p1}, Lcom/miui/payment/ui/view/CategoryView;->setCategoryCode(I)V

    return-void
.end method

.method private setComment(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mCommentView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mCommentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mCommentView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private setDefaultMethod()V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mMethodView:Lcom/miui/payment/ui/view/MethodView;

    invoke-virtual {v0}, Lcom/miui/payment/ui/view/MethodView;->setDefaultPaymentMethod()V

    return-void
.end method

.method private setMethod(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mMethodView:Lcom/miui/payment/ui/view/MethodView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/ui/view/MethodView;->setPaymentMethod(ILjava/lang/String;)V

    return-void
.end method

.method private setTime(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setTime(JZ)V

    return-void
.end method

.method private setTime(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mTimeView:Lcom/miui/payment/ui/view/TimeTextView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/payment/ui/view/TimeTextView;->setText(JZ)V

    return-void
.end method

.method private setup(Landroid/app/FragmentManager;Lcom/miui/payment/ui/edit/EditPresenter;Lcom/miui/payment/ui/edit/EditData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mFragmentManager:Landroid/app/FragmentManager;

    iput-object p2, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditPresenter:Lcom/miui/payment/ui/edit/EditPresenter;

    iput-object p3, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    iput-boolean p4, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mIsNewAction:Z

    invoke-direct {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setupViews()V

    return-void
.end method

.method private setupViews()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mAmountView:Lcom/miui/payment/ui/view/AmountView;

    invoke-virtual {v0, v2}, Lcom/miui/payment/ui/view/AmountView;->setEditable(Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mMethodView:Lcom/miui/payment/ui/view/MethodView;

    invoke-virtual {v0, v2}, Lcom/miui/payment/ui/view/MethodView;->setEditable(Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mTimeView:Lcom/miui/payment/ui/view/TimeTextView;

    invoke-virtual {v0, v2}, Lcom/miui/payment/ui/view/TimeTextView;->setEditable(Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mMethodView:Lcom/miui/payment/ui/view/MethodView;

    invoke-virtual {v0, p0}, Lcom/miui/payment/ui/view/MethodView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mTimeView:Lcom/miui/payment/ui/view/TimeTextView;

    invoke-virtual {v0, p0}, Lcom/miui/payment/ui/view/TimeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mCategoryView:Lcom/miui/payment/ui/view/CategoryView;

    invoke-virtual {v0, p0}, Lcom/miui/payment/ui/view/CategoryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/payment/utils/CategoryHelper;->getDefaultCategory()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setCategoryCode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setTime(JZ)V

    invoke-direct {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setDefaultMethod()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    invoke-virtual {v0}, Lcom/miui/payment/ui/edit/EditData;->getAmount()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setAmount(D)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    invoke-virtual {v0}, Lcom/miui/payment/ui/edit/EditData;->getCategoryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setCategoryCode(I)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    invoke-virtual {v0}, Lcom/miui/payment/ui/edit/EditData;->getEditTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setTime(J)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    invoke-virtual {v0}, Lcom/miui/payment/ui/edit/EditData;->getMethodCode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    invoke-virtual {v1}, Lcom/miui/payment/ui/edit/EditData;->getMethodDesc()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setMethod(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    invoke-virtual {v0}, Lcom/miui/payment/ui/edit/EditData;->getComment()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mIsNewAction:Z

    invoke-direct {p0, v0, v1}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setComment(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getEditData()Lcom/miui/payment/ui/edit/EditData;
    .locals 4

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/payment/ui/edit/EditData;

    invoke-direct {v0}, Lcom/miui/payment/ui/edit/EditData;-><init>()V

    iput-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    iget-object v1, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mAmountView:Lcom/miui/payment/ui/view/AmountView;

    invoke-virtual {v1}, Lcom/miui/payment/ui/view/AmountView;->getAmount()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/payment/ui/edit/EditData;->setAmount(D)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    invoke-virtual {v0}, Lcom/miui/payment/ui/edit/EditData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    invoke-static {}, Lcom/miui/payment/utils/NumberFormatUtil;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/payment/ui/edit/EditData;->setCurrencyCode(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    iget-object v1, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mCategoryView:Lcom/miui/payment/ui/view/CategoryView;

    invoke-virtual {v1}, Lcom/miui/payment/ui/view/CategoryView;->getCategoryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/payment/ui/edit/EditData;->setCategoryCode(I)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    iget-object v1, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mMethodView:Lcom/miui/payment/ui/view/MethodView;

    invoke-virtual {v1}, Lcom/miui/payment/ui/view/MethodView;->getMethodCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/payment/ui/edit/EditData;->setMethodCode(I)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    iget-object v1, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mMethodView:Lcom/miui/payment/ui/view/MethodView;

    invoke-virtual {v1}, Lcom/miui/payment/ui/view/MethodView;->getMethodDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/payment/ui/edit/EditData;->setMethodDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    iget-object v1, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mCommentView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/payment/ui/edit/EditData;->setComment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    iget-object v1, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mTimeView:Lcom/miui/payment/ui/view/TimeTextView;

    invoke-virtual {v1}, Lcom/miui/payment/ui/view/TimeTextView;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/payment/ui/edit/EditData;->setEditTime(J)V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mEditData:Lcom/miui/payment/ui/edit/EditData;

    return-object v0
.end method

.method public hideSoftKeyBoard(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mCommentView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mCommentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->onSaveButtonClicked()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->onCategoryViewClicked()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->onMethodViewClicked()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->onTimeViewClicked()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b09030b -> :sswitch_0
        0x1b090314 -> :sswitch_1
        0x1b09031c -> :sswitch_2
        0x1b09033f -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mDateTimePickerDialog:Lcom/miui/payment/ui/view/DateTimePickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mDateTimePickerDialog:Lcom/miui/payment/ui/view/DateTimePickerDialog;

    invoke-virtual {v0}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1b090311

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/ui/view/AmountView;

    iput-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mAmountView:Lcom/miui/payment/ui/view/AmountView;

    const v0, 0x1b090314

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/ui/view/CategoryView;

    iput-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mCategoryView:Lcom/miui/payment/ui/view/CategoryView;

    const v0, 0x1b09033f

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/ui/view/TimeTextView;

    iput-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mTimeView:Lcom/miui/payment/ui/view/TimeTextView;

    const v0, 0x1b09031c

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/ui/view/MethodView;

    iput-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mMethodView:Lcom/miui/payment/ui/view/MethodView;

    const v0, 0x1b09030a

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mCommentView:Landroid/widget/EditText;

    const v0, 0x1b09030b

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer;->mSaveBtn:Landroid/widget/Button;

    return-void
.end method

.method public setupForEditAction(Landroid/app/FragmentManager;Lcom/miui/payment/ui/edit/EditPresenter;Lcom/miui/payment/ui/edit/EditData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setup(Landroid/app/FragmentManager;Lcom/miui/payment/ui/edit/EditPresenter;Lcom/miui/payment/ui/edit/EditData;Z)V

    return-void
.end method

.method public setupForNewAction(Landroid/app/FragmentManager;Lcom/miui/payment/ui/edit/EditPresenter;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->setup(Landroid/app/FragmentManager;Lcom/miui/payment/ui/edit/EditPresenter;Lcom/miui/payment/ui/edit/EditData;Z)V

    return-void
.end method
