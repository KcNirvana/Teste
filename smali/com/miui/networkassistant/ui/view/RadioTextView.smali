.class public Lcom/miui/networkassistant/ui/view/RadioTextView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/view/RadioCheckable;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DEFAULT_TEXT_COLOR:I


# instance fields
.field private mChecked:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mOnCheckedChangeListeners:Ljava/util/ArrayList;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPressedTextColor:I

.field private mSummary:Ljava/lang/String;

.field private mSummaryTextColor:I

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mOnCheckedChangeListeners:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setupView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mOnCheckedChangeListeners:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setupView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mOnCheckedChangeListeners:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setupView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mOnCheckedChangeListeners:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setupView()V

    return-void
.end method

.method private setupView()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->inflateView()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->bindView()V

    return-void
.end method


# virtual methods
.method public addOnCheckChangeListener(Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mOnCheckedChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bindView()V
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mSummaryTextColor:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mSummaryTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mSummaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitleTextColor:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitleTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected inflateView()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cf

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitleTextView:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mSummaryTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitleTextColor:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mSummaryTextColor:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mPressedTextColor:I

    invoke-super {p0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mChecked:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeOnCheckChangeListener(Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mOnCheckedChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mChecked:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mChecked:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mOnCheckedChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mOnCheckedChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mOnCheckedChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mChecked:Z

    invoke-interface {v0, p0, v2}, Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;->onCheckedChanged(Landroid/view/View;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mChecked:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setCheckedState()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setNormalState()V

    goto :goto_1
.end method

.method public setCheckedState()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setNormalState()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitleTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mSummaryTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mSummaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mSummary:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/view/RadioTextView;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/RadioTextView;->setChecked(Z)V

    return-void
.end method
